import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/network/api_client.dart';
import 'package:superprice/core/network/api_endpoints.dart';
import 'package:superprice/features/promotions/data/dto/promotion_dto.dart';
import 'package:superprice/features/promotions/domain/promotion_model.dart';

part 'promotions_repository.g.dart';

@riverpod
PromotionsRepository promotionsRepository(Ref ref) {
  return PromotionsRepository(ref.watch(apiClientProvider));
}

class PromotionsRepository {
  PromotionsRepository(this._dio);
  final Dio _dio;

  Future<ProductPromotions> getProductPromotions(
    int barcode, {
    String? chainId,
    String? storeId,
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoint.productPromotions.path(barcode.toString()),
        queryParameters: {
          'current_only': true,
          if (chainId != null) 'chain_id': chainId,
          if (storeId != null) 'store_id': storeId,
        },
      );
      return ProductPromotionsDto.fromJson(
        response.data as Map<String, dynamic>,
      ).toDomain();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }
}
