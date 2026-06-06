import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_model.freezed.dart';

@freezed
class CrossChainComparison with _$CrossChainComparison {
  const factory CrossChainComparison({
    required int productBarcode,
    required String productName,
    String? manufacturer,
    required bool currentOnly,
    required OverallStatistics overallStatistics,
    required List<ChainPriceData> chainComparison,
  }) = _CrossChainComparison;
}

@freezed
class OverallStatistics with _$OverallStatistics {
  const factory OverallStatistics({
    required double minPrice,
    required double maxPrice,
    required double avgPrice,
    required double totalPriceRange,
    required int totalStores,
    required int totalChains,
  }) = _OverallStatistics;
}

@freezed
class ChainPriceData with _$ChainPriceData {
  const factory ChainPriceData({
    required String chainId,
    required String chainName,
    String? chainCode,
    required int storeCount,
    required double minPrice,
    required double maxPrice,
    required double avgPrice,
    required double priceRange,
  }) = _ChainPriceData;
}
