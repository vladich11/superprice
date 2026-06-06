import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/network/api_client.dart';
import 'package:superprice/core/network/api_endpoints.dart';
import 'package:superprice/features/cart/data/dto/cart_request_dto.dart';
import 'package:superprice/features/cart/domain/cart_comparison_model.dart';
import 'package:superprice/features/shopping_list/data/dto/parsed_item_dto.dart';

part 'cart_repository.g.dart';

@riverpod
CartRepository cartRepository(Ref ref) {
  return CartRepository(ref.watch(backendClientProvider));
}

class CartRepository {
  CartRepository(this._dio);
  final Dio _dio;

  Future<List<ParsedItemDto>> parseItems(String text) async {
    try {
      final response = await _dio.post(
        ApiEndpoint.parseItems.path(),
        data: {'text': text},
      );
      final list = response.data as List<dynamic>;
      return list
          .map((e) => ParsedItemDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }

  Future<CartComparison> compareCart(List<CartItemRequestDto> items) async {
    try {
      final response = await _dio.post(
        ApiEndpoint.cartComparison.path(),
        data: items.map((i) => i.toJson()).toList(),
      );
      return CartComparison.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }

  Future<Map<String, dynamic>> getReplacements(int barcode) async {
    try {
      final response = await _dio.get(
        ApiEndpoint.replacements.path(barcode.toString()),
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }
}
