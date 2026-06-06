import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superprice/features/chains/domain/chain_model.dart';

part 'chain_dto.freezed.dart';
part 'chain_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    required String storeAddress,
    required String website,
    required String city,
    required int postalCode,
  }) = _AddressDto;
  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
class StoreDto with _$StoreDto {
  const factory StoreDto({
    required String id,
    required int storeNumber,
    required String storeName,
    required AddressDto address,
    required DateTime lastObservedAt,
    required String chainId,
  }) = _StoreDto;
  factory StoreDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDtoFromJson(json);
}

@freezed
class ChainStatisticsDto with _$ChainStatisticsDto {
  const factory ChainStatisticsDto({
    required int storeCount,
    required int currentProductListings,
  }) = _ChainStatisticsDto;
  factory ChainStatisticsDto.fromJson(Map<String, dynamic> json) =>
      _$ChainStatisticsDtoFromJson(json);
}

@freezed
class ChainDto with _$ChainDto {
  const factory ChainDto({
    required String id,
    required int chainCode,
    required String chainName,
    required int subChainCode,
    required String subChainName,
    required DateTime observedAt,
    required int storeCount,
    List<StoreDto>? stores,
  }) = _ChainDto;
  factory ChainDto.fromJson(Map<String, dynamic> json) =>
      _$ChainDtoFromJson(json);
}

@freezed
class ChainResponseDto with _$ChainResponseDto {
  const factory ChainResponseDto({
    required ChainDto chain,
    List<StoreDto>? stores,
    ChainStatisticsDto? statistics,
  }) = _ChainResponseDto;
  factory ChainResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ChainResponseDtoFromJson(json);
}

@freezed
class GetChainsResponseDto with _$GetChainsResponseDto {
  const factory GetChainsResponseDto({
    required List<ChainResponseDto> chains,
  }) = _GetChainsResponseDto;
  factory GetChainsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetChainsResponseDtoFromJson(json);
}

@freezed
class GetStoresResponseDto with _$GetStoresResponseDto {
  const factory GetStoresResponseDto({
    required List<StoreDto> stores,
  }) = _GetStoresResponseDto;
  factory GetStoresResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetStoresResponseDtoFromJson(json);
}

// Mappers
extension AddressDtoX on AddressDto {
  Address toDomain() => Address(
        storeAddress: storeAddress,
        website: website,
        city: city,
        postalCode: postalCode,
      );
}

extension StoreDtoX on StoreDto {
  Store toDomain() => Store(
        id: id,
        storeNumber: storeNumber,
        storeName: storeName,
        address: address.toDomain(),
        lastObservedAt: lastObservedAt,
        chainId: chainId,
      );
}

extension ChainStatisticsDtoX on ChainStatisticsDto {
  ChainStatistics toDomain() => ChainStatistics(
        storeCount: storeCount,
        currentProductListings: currentProductListings,
      );
}

extension ChainResponseDtoX on ChainResponseDto {
  Chain toDomain() => Chain(
        id: chain.id,
        chainCode: chain.chainCode,
        chainName: chain.chainName,
        subChainCode: chain.subChainCode,
        subChainName: chain.subChainName,
        observedAt: chain.observedAt,
        storeCount: chain.storeCount,
        stores: stores?.map((s) => s.toDomain()).toList(),
        statistics: statistics?.toDomain(),
      );
}
