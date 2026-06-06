// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_comparison_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverallStatisticsDtoImpl _$$OverallStatisticsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OverallStatisticsDtoImpl(
      minPrice: (json['minPrice'] as num).toDouble(),
      maxPrice: (json['maxPrice'] as num).toDouble(),
      avgPrice: (json['avgPrice'] as num).toDouble(),
      totalPriceRange: (json['totalPriceRange'] as num).toDouble(),
      totalStores: (json['totalStores'] as num).toInt(),
      totalChains: (json['totalChains'] as num).toInt(),
    );

Map<String, dynamic> _$$OverallStatisticsDtoImplToJson(
        _$OverallStatisticsDtoImpl instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'avgPrice': instance.avgPrice,
      'totalPriceRange': instance.totalPriceRange,
      'totalStores': instance.totalStores,
      'totalChains': instance.totalChains,
    };

_$ChainPriceDataDtoImpl _$$ChainPriceDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChainPriceDataDtoImpl(
      chainId: json['chainId'] as String,
      chainName: json['chainName'] as String,
      chainCode: json['chainCode'] as String?,
      storeCount: (json['storeCount'] as num).toInt(),
      minPrice: (json['minPrice'] as num).toDouble(),
      maxPrice: (json['maxPrice'] as num).toDouble(),
      avgPrice: (json['avgPrice'] as num).toDouble(),
      priceRange: (json['priceRange'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChainPriceDataDtoImplToJson(
        _$ChainPriceDataDtoImpl instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'chainName': instance.chainName,
      'chainCode': instance.chainCode,
      'storeCount': instance.storeCount,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'avgPrice': instance.avgPrice,
      'priceRange': instance.priceRange,
    };

_$CrossChainComparisonDtoImpl _$$CrossChainComparisonDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CrossChainComparisonDtoImpl(
      productBarcode: (json['productBarcode'] as num).toInt(),
      productName: json['productName'] as String,
      manufacturer: json['manufacturer'] as String?,
      currentOnly: json['currentOnly'] as bool,
      overallStatistics: OverallStatisticsDto.fromJson(
          json['overallStatistics'] as Map<String, dynamic>),
      chainComparison: (json['chainComparison'] as List<dynamic>)
          .map((e) => ChainPriceDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CrossChainComparisonDtoImplToJson(
        _$CrossChainComparisonDtoImpl instance) =>
    <String, dynamic>{
      'productBarcode': instance.productBarcode,
      'productName': instance.productName,
      'manufacturer': instance.manufacturer,
      'currentOnly': instance.currentOnly,
      'overallStatistics': instance.overallStatistics,
      'chainComparison': instance.chainComparison,
    };
