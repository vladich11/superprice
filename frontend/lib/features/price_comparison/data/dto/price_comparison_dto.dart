import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superprice/features/price_comparison/domain/price_comparison_model.dart';

part 'price_comparison_dto.freezed.dart';
part 'price_comparison_dto.g.dart';

@freezed
class OverallStatisticsDto with _$OverallStatisticsDto {
  const factory OverallStatisticsDto({
    required double minPrice,
    required double maxPrice,
    required double avgPrice,
    required double totalPriceRange,
    required int totalStores,
    required int totalChains,
  }) = _OverallStatisticsDto;
  factory OverallStatisticsDto.fromJson(Map<String, dynamic> json) =>
      _$OverallStatisticsDtoFromJson(json);
}

@freezed
class ChainPriceDataDto with _$ChainPriceDataDto {
  const factory ChainPriceDataDto({
    required String chainId,
    required String chainName,
    String? chainCode,
    required int storeCount,
    required double minPrice,
    required double maxPrice,
    required double avgPrice,
    required double priceRange,
  }) = _ChainPriceDataDto;
  factory ChainPriceDataDto.fromJson(Map<String, dynamic> json) =>
      _$ChainPriceDataDtoFromJson(json);
}

@freezed
class CrossChainComparisonDto with _$CrossChainComparisonDto {
  const factory CrossChainComparisonDto({
    required int productBarcode,
    required String productName,
    String? manufacturer,
    required bool currentOnly,
    required OverallStatisticsDto overallStatistics,
    required List<ChainPriceDataDto> chainComparison,
  }) = _CrossChainComparisonDto;
  factory CrossChainComparisonDto.fromJson(Map<String, dynamic> json) =>
      _$CrossChainComparisonDtoFromJson(json);
}

// Mappers
extension OverallStatisticsDtoX on OverallStatisticsDto {
  OverallStatistics toDomain() => OverallStatistics(
        minPrice: minPrice,
        maxPrice: maxPrice,
        avgPrice: avgPrice,
        totalPriceRange: totalPriceRange,
        totalStores: totalStores,
        totalChains: totalChains,
      );
}

extension ChainPriceDataDtoX on ChainPriceDataDto {
  ChainPriceData toDomain() => ChainPriceData(
        chainId: chainId,
        chainName: chainName,
        chainCode: chainCode,
        storeCount: storeCount,
        minPrice: minPrice,
        maxPrice: maxPrice,
        avgPrice: avgPrice,
        priceRange: priceRange,
      );
}

extension CrossChainComparisonDtoX on CrossChainComparisonDto {
  CrossChainComparison toDomain() => CrossChainComparison(
        productBarcode: productBarcode,
        productName: productName,
        manufacturer: manufacturer,
        currentOnly: currentOnly,
        overallStatistics: overallStatistics.toDomain(),
        chainComparison: chainComparison.map((c) => c.toDomain()).toList(),
      );
}
