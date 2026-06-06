// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      storeAddress: json['storeAddress'] as String,
      website: json['website'] as String,
      city: json['city'] as String,
      postalCode: (json['postalCode'] as num).toInt(),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'storeAddress': instance.storeAddress,
      'website': instance.website,
      'city': instance.city,
      'postalCode': instance.postalCode,
    };

_$StoreDtoImpl _$$StoreDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreDtoImpl(
      id: json['id'] as String,
      storeNumber: (json['storeNumber'] as num).toInt(),
      storeName: json['storeName'] as String,
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      lastObservedAt: DateTime.parse(json['lastObservedAt'] as String),
      chainId: json['chainId'] as String,
    );

Map<String, dynamic> _$$StoreDtoImplToJson(_$StoreDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeNumber': instance.storeNumber,
      'storeName': instance.storeName,
      'address': instance.address,
      'lastObservedAt': instance.lastObservedAt.toIso8601String(),
      'chainId': instance.chainId,
    };

_$ChainStatisticsDtoImpl _$$ChainStatisticsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChainStatisticsDtoImpl(
      storeCount: (json['storeCount'] as num).toInt(),
      currentProductListings: (json['currentProductListings'] as num).toInt(),
    );

Map<String, dynamic> _$$ChainStatisticsDtoImplToJson(
        _$ChainStatisticsDtoImpl instance) =>
    <String, dynamic>{
      'storeCount': instance.storeCount,
      'currentProductListings': instance.currentProductListings,
    };

_$ChainDtoImpl _$$ChainDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChainDtoImpl(
      id: json['id'] as String,
      chainCode: (json['chainCode'] as num).toInt(),
      chainName: json['chainName'] as String,
      subChainCode: (json['subChainCode'] as num).toInt(),
      subChainName: json['subChainName'] as String,
      observedAt: DateTime.parse(json['observedAt'] as String),
      storeCount: (json['storeCount'] as num).toInt(),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChainDtoImplToJson(_$ChainDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chainCode': instance.chainCode,
      'chainName': instance.chainName,
      'subChainCode': instance.subChainCode,
      'subChainName': instance.subChainName,
      'observedAt': instance.observedAt.toIso8601String(),
      'storeCount': instance.storeCount,
      'stores': instance.stores,
    };

_$ChainResponseDtoImpl _$$ChainResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChainResponseDtoImpl(
      chain: ChainDto.fromJson(json['chain'] as Map<String, dynamic>),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : ChainStatisticsDto.fromJson(
              json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChainResponseDtoImplToJson(
        _$ChainResponseDtoImpl instance) =>
    <String, dynamic>{
      'chain': instance.chain,
      'stores': instance.stores,
      'statistics': instance.statistics,
    };

_$GetChainsResponseDtoImpl _$$GetChainsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetChainsResponseDtoImpl(
      chains: (json['chains'] as List<dynamic>)
          .map((e) => ChainResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetChainsResponseDtoImplToJson(
        _$GetChainsResponseDtoImpl instance) =>
    <String, dynamic>{
      'chains': instance.chains,
    };

_$GetStoresResponseDtoImpl _$$GetStoresResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStoresResponseDtoImpl(
      stores: (json['stores'] as List<dynamic>)
          .map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetStoresResponseDtoImplToJson(
        _$GetStoresResponseDtoImpl instance) =>
    <String, dynamic>{
      'stores': instance.stores,
    };
