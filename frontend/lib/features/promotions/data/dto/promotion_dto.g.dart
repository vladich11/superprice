// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionItemDtoImpl _$$PromotionItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionItemDtoImpl(
      itemCode: json['item_code'] as String,
      productBarcode: (json['product_barcode'] as num).toInt(),
      rewardType: (json['reward_type'] as num).toInt(),
      minQuantity: (json['min_quantity'] as num).toInt(),
      maxQuantity: (json['max_quantity'] as num).toInt(),
      discountRate: (json['discount_rate'] as num).toDouble(),
      discountedPrice: (json['discounted_price'] as num).toDouble(),
      originalPrice: (json['original_price'] as num).toDouble(),
      itemName: json['item_name'] as String,
      itemDescription: json['item_description'] as String,
      itemType: (json['item_type'] as num).toInt(),
    );

Map<String, dynamic> _$$PromotionItemDtoImplToJson(
        _$PromotionItemDtoImpl instance) =>
    <String, dynamic>{
      'item_code': instance.itemCode,
      'product_barcode': instance.productBarcode,
      'reward_type': instance.rewardType,
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'discount_rate': instance.discountRate,
      'discounted_price': instance.discountedPrice,
      'original_price': instance.originalPrice,
      'item_name': instance.itemName,
      'item_description': instance.itemDescription,
      'item_type': instance.itemType,
    };

_$PromotionGroupDtoImpl _$$PromotionGroupDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionGroupDtoImpl(
      groupId: json['group_id'] as String,
      groupName: json['group_name'] as String,
      minPurchaseAmount: (json['min_purchase_amount'] as num).toDouble(),
      discountType: (json['discount_type'] as num).toInt(),
      promotionItems: (json['promotion_items'] as List<dynamic>)
          .map((e) => PromotionItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromotionGroupDtoImplToJson(
        _$PromotionGroupDtoImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'group_name': instance.groupName,
      'min_purchase_amount': instance.minPurchaseAmount,
      'discount_type': instance.discountType,
      'promotion_items': instance.promotionItems,
    };

_$PromotionDtoImpl _$$PromotionDtoImplFromJson(Map<String, dynamic> json) =>
    _$PromotionDtoImpl(
      promotionId: (json['promotion_id'] as num).toInt(),
      promotionDescription: json['promotion_description'] as String,
      promotionStartDatetime:
          DateTime.parse(json['promotion_start_datetime'] as String),
      promotionEndDatetime:
          DateTime.parse(json['promotion_end_datetime'] as String),
      discountRate: (json['discount_rate'] as num).toDouble(),
      minimumPurchaseAmount:
          (json['minimum_purchase_amount'] as num).toDouble(),
      additionalPromoText: json['additional_promo_text'] as String,
      rewardType: (json['reward_type'] as num).toInt(),
      discountType: (json['discount_type'] as num).toInt(),
      promotionGroups: (json['promotion_groups'] as List<dynamic>)
          .map((e) => PromotionGroupDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromotionDtoImplToJson(_$PromotionDtoImpl instance) =>
    <String, dynamic>{
      'promotion_id': instance.promotionId,
      'promotion_description': instance.promotionDescription,
      'promotion_start_datetime':
          instance.promotionStartDatetime.toIso8601String(),
      'promotion_end_datetime': instance.promotionEndDatetime.toIso8601String(),
      'discount_rate': instance.discountRate,
      'minimum_purchase_amount': instance.minimumPurchaseAmount,
      'additional_promo_text': instance.additionalPromoText,
      'reward_type': instance.rewardType,
      'discount_type': instance.discountType,
      'promotion_groups': instance.promotionGroups,
    };

_$ProductPromotionsDtoImpl _$$ProductPromotionsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPromotionsDtoImpl(
      productBarcode: (json['product_barcode'] as num).toInt(),
      productName: json['product_name'] as String,
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => PromotionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPromotions: (json['total_promotions'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductPromotionsDtoImplToJson(
        _$ProductPromotionsDtoImpl instance) =>
    <String, dynamic>{
      'product_barcode': instance.productBarcode,
      'product_name': instance.productName,
      'promotions': instance.promotions,
      'total_promotions': instance.totalPromotions,
    };
