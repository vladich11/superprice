// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superprice/features/promotions/domain/promotion_model.dart';

part 'promotion_dto.freezed.dart';
part 'promotion_dto.g.dart';

@freezed
class PromotionItemDto with _$PromotionItemDto {
  const factory PromotionItemDto({
    @JsonKey(name: 'item_code') required String itemCode,
    @JsonKey(name: 'product_barcode') required int productBarcode,
    @JsonKey(name: 'reward_type') required int rewardType,
    @JsonKey(name: 'min_quantity') required int minQuantity,
    @JsonKey(name: 'max_quantity') required int maxQuantity,
    @JsonKey(name: 'discount_rate') required double discountRate,
    @JsonKey(name: 'discounted_price') required double discountedPrice,
    @JsonKey(name: 'original_price') required double originalPrice,
    @JsonKey(name: 'item_name') required String itemName,
    @JsonKey(name: 'item_description') required String itemDescription,
    @JsonKey(name: 'item_type') required int itemType,
  }) = _PromotionItemDto;
  factory PromotionItemDto.fromJson(Map<String, dynamic> json) =>
      _$PromotionItemDtoFromJson(json);
}

@freezed
class PromotionGroupDto with _$PromotionGroupDto {
  const factory PromotionGroupDto({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'group_name') required String groupName,
    @JsonKey(name: 'min_purchase_amount') required double minPurchaseAmount,
    @JsonKey(name: 'discount_type') required int discountType,
    @JsonKey(name: 'promotion_items')
    required List<PromotionItemDto> promotionItems,
  }) = _PromotionGroupDto;
  factory PromotionGroupDto.fromJson(Map<String, dynamic> json) =>
      _$PromotionGroupDtoFromJson(json);
}

@freezed
class PromotionDto with _$PromotionDto {
  const factory PromotionDto({
    @JsonKey(name: 'promotion_id') required int promotionId,
    @JsonKey(name: 'promotion_description') required String promotionDescription,
    @JsonKey(name: 'promotion_start_datetime')
    required DateTime promotionStartDatetime,
    @JsonKey(name: 'promotion_end_datetime')
    required DateTime promotionEndDatetime,
    @JsonKey(name: 'discount_rate') required double discountRate,
    @JsonKey(name: 'minimum_purchase_amount') required double minimumPurchaseAmount,
    @JsonKey(name: 'additional_promo_text') required String additionalPromoText,
    @JsonKey(name: 'reward_type') required int rewardType,
    @JsonKey(name: 'discount_type') required int discountType,
    @JsonKey(name: 'promotion_groups')
    required List<PromotionGroupDto> promotionGroups,
  }) = _PromotionDto;
  factory PromotionDto.fromJson(Map<String, dynamic> json) =>
      _$PromotionDtoFromJson(json);
}

@freezed
class ProductPromotionsDto with _$ProductPromotionsDto {
  const factory ProductPromotionsDto({
    @JsonKey(name: 'product_barcode') required int productBarcode,
    @JsonKey(name: 'product_name') required String productName,
    required List<PromotionDto> promotions,
    @JsonKey(name: 'total_promotions') required int totalPromotions,
  }) = _ProductPromotionsDto;
  factory ProductPromotionsDto.fromJson(Map<String, dynamic> json) =>
      _$ProductPromotionsDtoFromJson(json);
}

// Mappers
extension PromotionItemDtoX on PromotionItemDto {
  PromotionItem toDomain() => PromotionItem(
        itemCode: itemCode,
        productBarcode: productBarcode,
        rewardType: rewardType,
        minQuantity: minQuantity,
        maxQuantity: maxQuantity,
        discountRate: discountRate,
        discountedPrice: discountedPrice,
        originalPrice: originalPrice,
        itemName: itemName,
        itemDescription: itemDescription,
        itemType: itemType,
      );
}

extension PromotionGroupDtoX on PromotionGroupDto {
  PromotionGroup toDomain() => PromotionGroup(
        groupId: groupId,
        groupName: groupName,
        minPurchaseAmount: minPurchaseAmount,
        discountType: discountType,
        promotionItems: promotionItems.map((i) => i.toDomain()).toList(),
      );
}

extension PromotionDtoX on PromotionDto {
  Promotion toDomain() => Promotion(
        promotionId: promotionId,
        promotionDescription: promotionDescription,
        promotionStartDatetime: promotionStartDatetime,
        promotionEndDatetime: promotionEndDatetime,
        discountRate: discountRate,
        minimumPurchaseAmount: minimumPurchaseAmount,
        additionalPromoText: additionalPromoText,
        rewardType: rewardType,
        discountType: discountType,
        promotionGroups: promotionGroups.map((g) => g.toDomain()).toList(),
      );
}

extension ProductPromotionsDtoX on ProductPromotionsDto {
  ProductPromotions toDomain() => ProductPromotions(
        productBarcode: productBarcode,
        productName: productName,
        promotions: promotions.map((p) => p.toDomain()).toList(),
        totalPromotions: totalPromotions,
      );
}
