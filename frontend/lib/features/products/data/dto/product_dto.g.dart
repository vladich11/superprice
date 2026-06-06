// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: json['id'] as String,
      productBarcode: (json['productBarcode'] as num).toInt(),
      internalBarcode: (json['internalBarcode'] as num).toInt(),
      productName: json['productName'] as String,
      manufacturerOrImporterName: json['manufacturerOrImporterName'] as String,
      countryOfOrigin: json['countryOfOrigin'] as String,
      productDescription: json['productDescription'] as String,
      productQuantityMeasure: json['productQuantityMeasure'] as String,
      productQuantity: (json['productQuantity'] as num).toInt(),
      unitOfMeasure: json['unitOfMeasure'] as String,
      itemsPerPackage: (json['itemsPerPackage'] as num).toInt(),
      isWeighted: (json['isWeighted'] as num).toInt(),
      itemType: (json['itemType'] as num).toInt(),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productBarcode': instance.productBarcode,
      'internalBarcode': instance.internalBarcode,
      'productName': instance.productName,
      'manufacturerOrImporterName': instance.manufacturerOrImporterName,
      'countryOfOrigin': instance.countryOfOrigin,
      'productDescription': instance.productDescription,
      'productQuantityMeasure': instance.productQuantityMeasure,
      'productQuantity': instance.productQuantity,
      'unitOfMeasure': instance.unitOfMeasure,
      'itemsPerPackage': instance.itemsPerPackage,
      'isWeighted': instance.isWeighted,
      'itemType': instance.itemType,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_$ProductSearchPageDtoImpl _$$ProductSearchPageDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSearchPageDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      hasMore: json['has_more'] as bool,
      nextOffset: (json['next_offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductSearchPageDtoImplToJson(
        _$ProductSearchPageDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'limit': instance.limit,
      'offset': instance.offset,
      'has_more': instance.hasMore,
      'next_offset': instance.nextOffset,
    };

_$ProductBarcodeResponseDtoImpl _$$ProductBarcodeResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductBarcodeResponseDtoImpl(
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductBarcodeResponseDtoImplToJson(
        _$ProductBarcodeResponseDtoImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
    };
