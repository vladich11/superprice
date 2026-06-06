// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParsedMatchedProductDtoImpl _$$ParsedMatchedProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ParsedMatchedProductDtoImpl(
      barcode: (json['barcode'] as num).toInt(),
      productName: json['productName'] as String,
      manufacturer: json['manufacturer'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$ParsedMatchedProductDtoImplToJson(
        _$ParsedMatchedProductDtoImpl instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'productName': instance.productName,
      'manufacturer': instance.manufacturer,
      'confidence': instance.confidence,
    };

_$ParsedItemDtoImpl _$$ParsedItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$ParsedItemDtoImpl(
      rawText: json['rawText'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
      productSearchQuery: json['productSearchQuery'] as String,
      matchedProduct: json['matchedProduct'] == null
          ? null
          : ParsedMatchedProductDto.fromJson(
              json['matchedProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ParsedItemDtoImplToJson(_$ParsedItemDtoImpl instance) =>
    <String, dynamic>{
      'rawText': instance.rawText,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'productSearchQuery': instance.productSearchQuery,
      'matchedProduct': instance.matchedProduct,
    };
