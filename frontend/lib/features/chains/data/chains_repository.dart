import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/network/api_client.dart';
import 'package:superprice/core/network/api_endpoints.dart';
import 'package:superprice/features/chains/data/dto/chain_dto.dart';
import 'package:superprice/features/chains/domain/chain_model.dart';

part 'chains_repository.g.dart';

@riverpod
ChainsRepository chainsRepository(Ref ref) {
  return ChainsRepository(ref.watch(apiClientProvider));
}

class ChainsRepository {
  ChainsRepository(this._dio);
  final Dio _dio;

  Future<List<Chain>> getChains() async {
    try {
      final response = await _dio.get(ApiEndpoint.chains.path());
      final dto = GetChainsResponseDto.fromJson(
        response.data as Map<String, dynamic>,
      );
      return dto.chains.map((c) => c.toDomain()).toList();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }

  Future<List<Store>> getStoresByChain(String chainId) async {
    try {
      final response = await _dio.get(
        ApiEndpoint.stores.path(),
        queryParameters: {'chain_id': chainId},
      );
      final dto = GetStoresResponseDto.fromJson(
        response.data as Map<String, dynamic>,
      );
      return dto.stores.map((s) => s.toDomain()).toList();
    } on DioException catch (e) {
      throw mapDioException(e);
    }
  }
}
