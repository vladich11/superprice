import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/network/api_client.dart';
import 'package:superprice/core/network/api_endpoints.dart';
import 'package:superprice/features/price_comparison/data/dto/price_comparison_dto.dart';
import 'package:superprice/features/price_comparison/domain/price_comparison_model.dart';

part 'price_comparison_repository.g.dart';

@riverpod
PriceComparisonRepository priceComparisonRepository(Ref ref) {
  return PriceComparisonRepository(ref.watch(apiClientProvider));
}

class PriceComparisonRepository {
  PriceComparisonRepository(this._dio);
  final Dio _dio;

  Future<CrossChainComparison> getCrossChainComparison(int barcode) async {
    try {
      final response = await _dio.get(
        ApiEndpoint.crossChainComparison.path(barcode.toString()),
      );
      return CrossChainComparisonDto.fromJson(
        response.data as Map<String, dynamic>,
      ).toDomain();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }
}
