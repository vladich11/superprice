import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/features/shopping_list/domain/shopping_list_model.dart';

part 'shopping_list_repository.g.dart';

@riverpod
ShoppingListRepository shoppingListRepository(Ref ref) {
  final uid = FirebaseAuth.instance.currentUser?.uid ?? 'anonymous';
  return ShoppingListRepository(FirebaseFirestore.instance, uid);
}

class ShoppingListRepository {
  ShoppingListRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String _uid;

  CollectionReference<Map<String, dynamic>> get _col =>
      _db.collection('users').doc(_uid).collection('lists');

  // ─── Read ─────────────────────────────────────────────────────────────────

  Future<List<ShoppingList>> getLists({required ListStatus status}) async {
    final snap = await _col
        .where('status', isEqualTo: status.name)
        .orderBy('updatedAt', descending: true)
        .get();
    return snap.docs.map((d) => _fromDoc(d)).toList();
  }

  Future<ShoppingList> getList(String listId) async {
    final doc = await _col.doc(listId).get();
    if (!doc.exists) throw Exception('List $listId not found');
    return _fromDoc(doc);
  }

  // ─── Write ────────────────────────────────────────────────────────────────

  Future<String> createList(String name, {ListStatus status = ListStatus.active}) async {
    final now = DateTime.now().toIso8601String();
    final ref = await _col.add({
      'name': name,
      'status': status.name,
      'items': <Map<String, dynamic>>[],
      'selectedChainId': null,
      'selectedChainName': null,
      'createdAt': now,
      'updatedAt': now,
    });
    return ref.id;
  }

  Future<void> updateList(ShoppingList list) async {
    await _col.doc(list.id).update({
      'name': list.name,
      'status': list.status.name,
      'items': list.items.map(_itemToMap).toList(),
      'selectedChainId': list.selectedChainId,
      'selectedChainName': list.selectedChainName,
      'updatedAt': DateTime.now().toIso8601String(),
    });
  }

  Future<void> deleteList(String listId) async {
    await _col.doc(listId).delete();
  }

  Future<void> addItems(String listId, List<ShoppingItem> newItems) async {
    final list = await getList(listId);
    final updated = list.copyWith(items: [...list.items, ...newItems]);
    await updateList(updated);
  }

  Future<void> toggleItem(String listId, String itemId) async {
    final list = await getList(listId);
    final updated = list.copyWith(
      items: list.items
          .map((i) => i.id == itemId ? i.copyWith(isChecked: !i.isChecked) : i)
          .toList(),
    );
    await updateList(updated);
  }

  Future<void> removeItem(String listId, String itemId) async {
    final list = await getList(listId);
    final updated = list.copyWith(
      items: list.items.where((i) => i.id != itemId).toList(),
    );
    await updateList(updated);
  }

  Future<void> updateItemQuantity(String listId, String itemId, double qty) async {
    final list = await getList(listId);
    final updated = list.copyWith(
      items: list.items
          .map((i) => i.id == itemId ? i.copyWith(quantity: qty) : i)
          .toList(),
    );
    await updateList(updated);
  }

  Future<void> swapItem(String listId, String itemId, ShoppingItem replacement) async {
    final list = await getList(listId);
    final updated = list.copyWith(
      items: list.items.map((i) => i.id == itemId ? replacement : i).toList(),
    );
    await updateList(updated);
  }

  Future<void> setSelectedChain(String listId, String chainId, String chainName) async {
    await _col.doc(listId).update({
      'selectedChainId': chainId,
      'selectedChainName': chainName,
      'updatedAt': DateTime.now().toIso8601String(),
    });
  }

  Future<void> completeList(String listId) async {
    await _col.doc(listId).update({
      'status': ListStatus.completed.name,
      'updatedAt': DateTime.now().toIso8601String(),
    });
  }

  Future<String> duplicateAsActive(String sourceId, String newName) async {
    final source = await getList(sourceId);
    final items = source.items
        .map((i) => i.copyWith(id: _newId(), isChecked: false))
        .toList();
    final now = DateTime.now().toIso8601String();
    final ref = await _col.add({
      'name': newName,
      'status': ListStatus.active.name,
      'items': items.map(_itemToMap).toList(),
      'selectedChainId': null,
      'selectedChainName': null,
      'createdAt': now,
      'updatedAt': now,
    });
    return ref.id;
  }

  // ─── Helpers ──────────────────────────────────────────────────────────────

  ShoppingList _fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data()!;
    final rawItems = (d['items'] as List<dynamic>? ?? []);
    return ShoppingList(
      id: doc.id,
      name: d['name'] as String? ?? '',
      status: ListStatus.values.firstWhere(
        (s) => s.name == d['status'],
        orElse: () => ListStatus.active,
      ),
      items: rawItems.map((e) => _itemFromMap(e as Map<String, dynamic>)).toList(),
      selectedChainId: d['selectedChainId'] as String?,
      selectedChainName: d['selectedChainName'] as String?,
      createdAt: DateTime.parse(d['createdAt'] as String),
      updatedAt: DateTime.parse(d['updatedAt'] as String),
    );
  }

  ShoppingItem _itemFromMap(Map<String, dynamic> m) {
    return ShoppingItem(
      id: m['id'] as String? ?? _newId(),
      rawText: m['rawText'] as String? ?? '',
      barcode: m['barcode'] as int?,
      productName: m['productName'] as String?,
      quantity: (m['quantity'] as num?)?.toDouble() ?? 1.0,
      unit: ItemUnit.values.firstWhere(
        (u) => u.name == m['unit'],
        orElse: () => ItemUnit.units,
      ),
      isChecked: m['isChecked'] as bool? ?? false,
      note: m['note'] as String?,
    );
  }

  Map<String, dynamic> _itemToMap(ShoppingItem i) => {
        'id': i.id,
        'rawText': i.rawText,
        'barcode': i.barcode,
        'productName': i.productName,
        'quantity': i.quantity,
        'unit': i.unit.name,
        'isChecked': i.isChecked,
        'note': i.note,
      };

  String _newId() =>
      '${DateTime.now().millisecondsSinceEpoch}${Random().nextInt(9999).toString().padLeft(4, '0')}';
}
