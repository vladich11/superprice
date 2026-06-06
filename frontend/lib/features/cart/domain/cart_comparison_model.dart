import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_comparison_model.freezed.dart';
part 'cart_comparison_model.g.dart';

@freezed
class ChainItemPrice with _$ChainItemPrice {
  const factory ChainItemPrice({
    required int barcode,
    required String productName,
    required double unitPrice,
    required double lineTotal,
  }) = _ChainItemPrice;

  factory ChainItemPrice.fromJson(Map<String, dynamic> json) =>
      _$ChainItemPriceFromJson(json);
}

@freezed
class ChainTotal with _$ChainTotal {
  const factory ChainTotal({
    required String chainId,
    required String chainName,
    required double total,
    required List<ChainItemPrice> itemPrices,
    required List<int> unmatchedBarcodes,
  }) = _ChainTotal;

  factory ChainTotal.fromJson(Map<String, dynamic> json) =>
      _$ChainTotalFromJson(json);
}

@freezed
class CartComparison with _$CartComparison {
  const factory CartComparison({
    required List<ChainTotal> chains,
    required String cheapestChainId,
    required double savingsVsCheapest,
  }) = _CartComparison;

  factory CartComparison.fromJson(Map<String, dynamic> json) =>
      _$CartComparisonFromJson(json);
}
