import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_model.freezed.dart';

@freezed
class Chain with _$Chain {
  const factory Chain({
    required String id,
    required int chainCode,
    required String chainName,
    required int subChainCode,
    required String subChainName,
    required DateTime observedAt,
    required int storeCount,
    List<Store>? stores,
    ChainStatistics? statistics,
  }) = _Chain;
}

@freezed
class Store with _$Store {
  const factory Store({
    required String id,
    required int storeNumber,
    required String storeName,
    required Address address,
    required DateTime lastObservedAt,
    required String chainId,
  }) = _Store;
}

@freezed
class Address with _$Address {
  const factory Address({
    required String storeAddress,
    required String website,
    required String city,
    required int postalCode,
  }) = _Address;
}

@freezed
class ChainStatistics with _$ChainStatistics {
  const factory ChainStatistics({
    required int storeCount,
    required int currentProductListings,
  }) = _ChainStatistics;
}
