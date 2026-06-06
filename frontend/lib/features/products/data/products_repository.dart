import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/network/api_client.dart';
import 'package:superprice/core/network/api_endpoints.dart';
import 'package:superprice/features/products/data/dto/product_dto.dart';
import 'package:superprice/features/products/domain/product_model.dart';

part 'products_repository.g.dart';

@riverpod
ProductsRepository productsRepository(Ref ref) {
  return ProductsRepository(
    ref.watch(apiClientProvider),
    ref.watch(backendClientProvider),
  );
}

class ProductsRepository {
  ProductsRepository(this._dio, this._backend);
  final Dio _dio;
  final Dio _backend;

  Future<ProductSearchPage> searchProducts(
    String query, {
    int limit = 20,
    int offset = 0,
    String? chainId,
    String? storeId,
  }) async {
    try {
      final response = await _backend.get(
        ApiEndpoint.backendProductSearch.path(),
        queryParameters: {
          'query': query,
          'limit': limit,
          'offset': offset,
        },
      );
      return ProductSearchPageDto.fromJson(
        response.data as Map<String, dynamic>,
      ).toDomain();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }

  Future<Product> getProductByBarcode(int barcode) async {
    try {
      final response = await _dio.get(
        ApiEndpoint.productByBarcode.path(barcode.toString()),
      );
      return ProductBarcodeResponseDto.fromJson(
        response.data as Map<String, dynamic>,
      ).product.toDomain();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }
}
