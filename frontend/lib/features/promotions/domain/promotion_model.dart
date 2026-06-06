import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_model.freezed.dart';

@freezed
class ProductPromotions with _$ProductPromotions {
  const factory ProductPromotions({
    required int productBarcode,
    required String productName,
    required List<Promotion> promotions,
    required int totalPromotions,
  }) = _ProductPromotions;
}

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required int promotionId,
    required String promotionDescription,
    required DateTime promotionStartDatetime,
    required DateTime promotionEndDatetime,
    required double discountRate,
    required double minimumPurchaseAmount,
    required String additionalPromoText,
    required int rewardType,
    required int discountType,
    required List<PromotionGroup> promotionGroups,
  }) = _Promotion;
}

@freezed
class PromotionGroup with _$PromotionGroup {
  const factory PromotionGroup({
    required String groupId,
    required String groupName,
    required double minPurchaseAmount,
    required int discountType,
    required List<PromotionItem> promotionItems,
  }) = _PromotionGroup;
}

@freezed
class PromotionItem with _$PromotionItem {
  const factory PromotionItem({
    required String itemCode,
    required int productBarcode,
    required int rewardType,
    required int minQuantity,
    required int maxQuantity,
    required double discountRate,
    required double discountedPrice,
    required double originalPrice,
    required String itemName,
    required String itemDescription,
    required int itemType,
  }) = _PromotionItem;
}
