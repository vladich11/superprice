// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingItemImpl _$$ShoppingItemImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingItemImpl(
      id: json['id'] as String,
      rawText: json['rawText'] as String,
      barcode: (json['barcode'] as num?)?.toInt() ?? null,
      productName: json['productName'] as String? ?? null,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 1.0,
      unit: $enumDecodeNullable(_$ItemUnitEnumMap, json['unit']) ??
          ItemUnit.units,
      isChecked: json['isChecked'] as bool? ?? false,
      note: json['note'] as String? ?? null,
    );

Map<String, dynamic> _$$ShoppingItemImplToJson(_$ShoppingItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rawText': instance.rawText,
      'barcode': instance.barcode,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'unit': _$ItemUnitEnumMap[instance.unit]!,
      'isChecked': instance.isChecked,
      'note': instance.note,
    };

const _$ItemUnitEnumMap = {
  ItemUnit.units: 'units',
  ItemUnit.kg: 'kg',
  ItemUnit.g: 'g',
  ItemUnit.l: 'l',
  ItemUnit.ml: 'ml',
};

_$ShoppingListImpl _$$ShoppingListImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingListImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecodeNullable(_$ListStatusEnumMap, json['status']) ??
          ListStatus.active,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ShoppingItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedChainId: json['selectedChainId'] as String? ?? null,
      selectedChainName: json['selectedChainName'] as String? ?? null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ShoppingListImplToJson(_$ShoppingListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$ListStatusEnumMap[instance.status]!,
      'items': instance.items,
      'selectedChainId': instance.selectedChainId,
      'selectedChainName': instance.selectedChainName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ListStatusEnumMap = {
  ListStatus.active: 'active',
  ListStatus.completed: 'completed',
  ListStatus.template: 'template',
};
