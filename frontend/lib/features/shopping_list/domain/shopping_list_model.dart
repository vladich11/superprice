import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_list_model.freezed.dart';
part 'shopping_list_model.g.dart';

enum ListStatus { active, completed, template }

enum ItemUnit { units, kg, g, l, ml }

@freezed
class ShoppingItem with _$ShoppingItem {
  const factory ShoppingItem({
    required String id,
    required String rawText,
    @Default(null) int? barcode,
    @Default(null) String? productName,
    @Default(1.0) double quantity,
    @Default(ItemUnit.units) ItemUnit unit,
    @Default(false) bool isChecked,
    @Default(null) String? note,
  }) = _ShoppingItem;

  factory ShoppingItem.fromJson(Map<String, dynamic> json) =>
      _$ShoppingItemFromJson(json);
}

@freezed
class ShoppingList with _$ShoppingList {
  const factory ShoppingList({
    required String id,
    required String name,
    @Default(ListStatus.active) ListStatus status,
    @Default([]) List<ShoppingItem> items,
    @Default(null) String? selectedChainId,
    @Default(null) String? selectedChainName,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ShoppingList;

  factory ShoppingList.fromJson(Map<String, dynamic> json) =>
      _$ShoppingListFromJson(json);
}
