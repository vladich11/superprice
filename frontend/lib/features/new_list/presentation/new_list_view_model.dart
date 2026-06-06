import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/features/products/data/products_repository.dart';

part 'new_list_view_model.g.dart';

class SelectedProduct {
  const SelectedProduct({required this.barcode, required this.name});
  final int barcode;
  final String name;
}

@riverpod
class ActiveCart extends _$ActiveCart {
  @override
  List<SelectedProduct> build() => [];

  void toggle(SelectedProduct p) {
    if (state.any((i) => i.barcode == p.barcode)) {
      state = state.where((i) => i.barcode != p.barcode).toList();
    } else {
      state = [...state, p];
    }
  }

  bool contains(int barcode) => state.any((i) => i.barcode == barcode);
  void clear() => state = [];
}

@riverpod
Future<List<SelectedProduct>> productSearch(Ref ref, String query) async {
  if (query.trim().length < 2) return [];
  final page = await ref.read(productsRepositoryProvider).searchProducts(query);
  final seen = <int>{};
  return page.items
      .where((p) => p.productBarcode != 0 && seen.add(p.productBarcode))
      .map((p) => SelectedProduct(barcode: p.productBarcode, name: p.productName))
      .toList();
}
