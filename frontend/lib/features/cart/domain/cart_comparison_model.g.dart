// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_comparison_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChainItemPriceImpl _$$ChainItemPriceImplFromJson(Map<String, dynamic> json) =>
    _$ChainItemPriceImpl(
      barcode: (json['barcode'] as num).toInt(),
      productName: json['productName'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      lineTotal: (json['lineTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChainItemPriceImplToJson(
        _$ChainItemPriceImpl instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'productName': instance.productName,
      'unitPrice': instance.unitPrice,
      'lineTotal': instance.lineTotal,
    };

_$ChainTotalImpl _$$ChainTotalImplFromJson(Map<String, dynamic> json) =>
    _$ChainTotalImpl(
      chainId: json['chainId'] as String,
      chainName: json['chainName'] as String,
      total: (json['total'] as num).toDouble(),
      itemPrices: (json['itemPrices'] as List<dynamic>)
          .map((e) => ChainItemPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      unmatchedBarcodes: (json['unmatchedBarcodes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ChainTotalImplToJson(_$ChainTotalImpl instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'chainName': instance.chainName,
      'total': instance.total,
      'itemPrices': instance.itemPrices,
      'unmatchedBarcodes': instance.unmatchedBarcodes,
    };

_$CartComparisonImpl _$$CartComparisonImplFromJson(Map<String, dynamic> json) =>
    _$CartComparisonImpl(
      chains: (json['chains'] as List<dynamic>)
          .map((e) => ChainTotal.fromJson(e as Map<String, dynamic>))
          .toList(),
      cheapestChainId: json['cheapestChainId'] as String,
      savingsVsCheapest: (json['savingsVsCheapest'] as num).toDouble(),
    );

Map<String, dynamic> _$$CartComparisonImplToJson(
        _$CartComparisonImpl instance) =>
    <String, dynamic>{
      'chains': instance.chains,
      'cheapestChainId': instance.cheapestChainId,
      'savingsVsCheapest': instance.savingsVsCheapest,
    };
