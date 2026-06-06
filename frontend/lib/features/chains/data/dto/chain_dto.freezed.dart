// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String get storeAddress => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get postalCode => throw _privateConstructorUsedError;

  /// Serializes this AddressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call({String storeAddress, String website, String city, int postalCode});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeAddress = null,
    Object? website = null,
    Object? city = null,
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      storeAddress: null == storeAddress
          ? _value.storeAddress
          : storeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String storeAddress, String website, String city, int postalCode});
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeAddress = null,
    Object? website = null,
    Object? city = null,
    Object? postalCode = null,
  }) {
    return _then(_$AddressDtoImpl(
      storeAddress: null == storeAddress
          ? _value.storeAddress
          : storeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl implements _AddressDto {
  const _$AddressDtoImpl(
      {required this.storeAddress,
      required this.website,
      required this.city,
      required this.postalCode});

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final String storeAddress;
  @override
  final String website;
  @override
  final String city;
  @override
  final int postalCode;

  @override
  String toString() {
    return 'AddressDto(storeAddress: $storeAddress, website: $website, city: $city, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, storeAddress, website, city, postalCode);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  const factory _AddressDto(
      {required final String storeAddress,
      required final String website,
      required final String city,
      required final int postalCode}) = _$AddressDtoImpl;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  String get storeAddress;
  @override
  String get website;
  @override
  String get city;
  @override
  int get postalCode;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDto _$StoreDtoFromJson(Map<String, dynamic> json) {
  return _StoreDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDto {
  String get id => throw _privateConstructorUsedError;
  int get storeNumber => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  DateTime get lastObservedAt => throw _privateConstructorUsedError;
  String get chainId => throw _privateConstructorUsedError;

  /// Serializes this StoreDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDtoCopyWith<StoreDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDtoCopyWith<$Res> {
  factory $StoreDtoCopyWith(StoreDto value, $Res Function(StoreDto) then) =
      _$StoreDtoCopyWithImpl<$Res, StoreDto>;
  @useResult
  $Res call(
      {String id,
      int storeNumber,
      String storeName,
      AddressDto address,
      DateTime lastObservedAt,
      String chainId});

  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$StoreDtoCopyWithImpl<$Res, $Val extends StoreDto>
    implements $StoreDtoCopyWith<$Res> {
  _$StoreDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNumber = null,
    Object? storeName = null,
    Object? address = null,
    Object? lastObservedAt = null,
    Object? chainId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeNumber: null == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      lastObservedAt: null == lastObservedAt
          ? _value.lastObservedAt
          : lastObservedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreDtoImplCopyWith<$Res>
    implements $StoreDtoCopyWith<$Res> {
  factory _$$StoreDtoImplCopyWith(
          _$StoreDtoImpl value, $Res Function(_$StoreDtoImpl) then) =
      __$$StoreDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int storeNumber,
      String storeName,
      AddressDto address,
      DateTime lastObservedAt,
      String chainId});

  @override
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$StoreDtoImplCopyWithImpl<$Res>
    extends _$StoreDtoCopyWithImpl<$Res, _$StoreDtoImpl>
    implements _$$StoreDtoImplCopyWith<$Res> {
  __$$StoreDtoImplCopyWithImpl(
      _$StoreDtoImpl _value, $Res Function(_$StoreDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNumber = null,
    Object? storeName = null,
    Object? address = null,
    Object? lastObservedAt = null,
    Object? chainId = null,
  }) {
    return _then(_$StoreDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeNumber: null == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      lastObservedAt: null == lastObservedAt
          ? _value.lastObservedAt
          : lastObservedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDtoImpl implements _StoreDto {
  const _$StoreDtoImpl(
      {required this.id,
      required this.storeNumber,
      required this.storeName,
      required this.address,
      required this.lastObservedAt,
      required this.chainId});

  factory _$StoreDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int storeNumber;
  @override
  final String storeName;
  @override
  final AddressDto address;
  @override
  final DateTime lastObservedAt;
  @override
  final String chainId;

  @override
  String toString() {
    return 'StoreDto(id: $id, storeNumber: $storeNumber, storeName: $storeName, address: $address, lastObservedAt: $lastObservedAt, chainId: $chainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeNumber, storeNumber) ||
                other.storeNumber == storeNumber) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lastObservedAt, lastObservedAt) ||
                other.lastObservedAt == lastObservedAt) &&
            (identical(other.chainId, chainId) || other.chainId == chainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeNumber, storeName,
      address, lastObservedAt, chainId);

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDtoImplCopyWith<_$StoreDtoImpl> get copyWith =>
      __$$StoreDtoImplCopyWithImpl<_$StoreDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDto implements StoreDto {
  const factory _StoreDto(
      {required final String id,
      required final int storeNumber,
      required final String storeName,
      required final AddressDto address,
      required final DateTime lastObservedAt,
      required final String chainId}) = _$StoreDtoImpl;

  factory _StoreDto.fromJson(Map<String, dynamic> json) =
      _$StoreDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get storeNumber;
  @override
  String get storeName;
  @override
  AddressDto get address;
  @override
  DateTime get lastObservedAt;
  @override
  String get chainId;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDtoImplCopyWith<_$StoreDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainStatisticsDto _$ChainStatisticsDtoFromJson(Map<String, dynamic> json) {
  return _ChainStatisticsDto.fromJson(json);
}

/// @nodoc
mixin _$ChainStatisticsDto {
  int get storeCount => throw _privateConstructorUsedError;
  int get currentProductListings => throw _privateConstructorUsedError;

  /// Serializes this ChainStatisticsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainStatisticsDtoCopyWith<ChainStatisticsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainStatisticsDtoCopyWith<$Res> {
  factory $ChainStatisticsDtoCopyWith(
          ChainStatisticsDto value, $Res Function(ChainStatisticsDto) then) =
      _$ChainStatisticsDtoCopyWithImpl<$Res, ChainStatisticsDto>;
  @useResult
  $Res call({int storeCount, int currentProductListings});
}

/// @nodoc
class _$ChainStatisticsDtoCopyWithImpl<$Res, $Val extends ChainStatisticsDto>
    implements $ChainStatisticsDtoCopyWith<$Res> {
  _$ChainStatisticsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeCount = null,
    Object? currentProductListings = null,
  }) {
    return _then(_value.copyWith(
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentProductListings: null == currentProductListings
          ? _value.currentProductListings
          : currentProductListings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainStatisticsDtoImplCopyWith<$Res>
    implements $ChainStatisticsDtoCopyWith<$Res> {
  factory _$$ChainStatisticsDtoImplCopyWith(_$ChainStatisticsDtoImpl value,
          $Res Function(_$ChainStatisticsDtoImpl) then) =
      __$$ChainStatisticsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int storeCount, int currentProductListings});
}

/// @nodoc
class __$$ChainStatisticsDtoImplCopyWithImpl<$Res>
    extends _$ChainStatisticsDtoCopyWithImpl<$Res, _$ChainStatisticsDtoImpl>
    implements _$$ChainStatisticsDtoImplCopyWith<$Res> {
  __$$ChainStatisticsDtoImplCopyWithImpl(_$ChainStatisticsDtoImpl _value,
      $Res Function(_$ChainStatisticsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeCount = null,
    Object? currentProductListings = null,
  }) {
    return _then(_$ChainStatisticsDtoImpl(
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentProductListings: null == currentProductListings
          ? _value.currentProductListings
          : currentProductListings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainStatisticsDtoImpl implements _ChainStatisticsDto {
  const _$ChainStatisticsDtoImpl(
      {required this.storeCount, required this.currentProductListings});

  factory _$ChainStatisticsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainStatisticsDtoImplFromJson(json);

  @override
  final int storeCount;
  @override
  final int currentProductListings;

  @override
  String toString() {
    return 'ChainStatisticsDto(storeCount: $storeCount, currentProductListings: $currentProductListings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainStatisticsDtoImpl &&
            (identical(other.storeCount, storeCount) ||
                other.storeCount == storeCount) &&
            (identical(other.currentProductListings, currentProductListings) ||
                other.currentProductListings == currentProductListings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, storeCount, currentProductListings);

  /// Create a copy of ChainStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainStatisticsDtoImplCopyWith<_$ChainStatisticsDtoImpl> get copyWith =>
      __$$ChainStatisticsDtoImplCopyWithImpl<_$ChainStatisticsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainStatisticsDtoImplToJson(
      this,
    );
  }
}

abstract class _ChainStatisticsDto implements ChainStatisticsDto {
  const factory _ChainStatisticsDto(
      {required final int storeCount,
      required final int currentProductListings}) = _$ChainStatisticsDtoImpl;

  factory _ChainStatisticsDto.fromJson(Map<String, dynamic> json) =
      _$ChainStatisticsDtoImpl.fromJson;

  @override
  int get storeCount;
  @override
  int get currentProductListings;

  /// Create a copy of ChainStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainStatisticsDtoImplCopyWith<_$ChainStatisticsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainDto _$ChainDtoFromJson(Map<String, dynamic> json) {
  return _ChainDto.fromJson(json);
}

/// @nodoc
mixin _$ChainDto {
  String get id => throw _privateConstructorUsedError;
  int get chainCode => throw _privateConstructorUsedError;
  String get chainName => throw _privateConstructorUsedError;
  int get subChainCode => throw _privateConstructorUsedError;
  String get subChainName => throw _privateConstructorUsedError;
  DateTime get observedAt => throw _privateConstructorUsedError;
  int get storeCount => throw _privateConstructorUsedError;
  List<StoreDto>? get stores => throw _privateConstructorUsedError;

  /// Serializes this ChainDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainDtoCopyWith<ChainDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainDtoCopyWith<$Res> {
  factory $ChainDtoCopyWith(ChainDto value, $Res Function(ChainDto) then) =
      _$ChainDtoCopyWithImpl<$Res, ChainDto>;
  @useResult
  $Res call(
      {String id,
      int chainCode,
      String chainName,
      int subChainCode,
      String subChainName,
      DateTime observedAt,
      int storeCount,
      List<StoreDto>? stores});
}

/// @nodoc
class _$ChainDtoCopyWithImpl<$Res, $Val extends ChainDto>
    implements $ChainDtoCopyWith<$Res> {
  _$ChainDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chainCode = null,
    Object? chainName = null,
    Object? subChainCode = null,
    Object? subChainName = null,
    Object? observedAt = null,
    Object? storeCount = null,
    Object? stores = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chainCode: null == chainCode
          ? _value.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as int,
      chainName: null == chainName
          ? _value.chainName
          : chainName // ignore: cast_nullable_to_non_nullable
              as String,
      subChainCode: null == subChainCode
          ? _value.subChainCode
          : subChainCode // ignore: cast_nullable_to_non_nullable
              as int,
      subChainName: null == subChainName
          ? _value.subChainName
          : subChainName // ignore: cast_nullable_to_non_nullable
              as String,
      observedAt: null == observedAt
          ? _value.observedAt
          : observedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainDtoImplCopyWith<$Res>
    implements $ChainDtoCopyWith<$Res> {
  factory _$$ChainDtoImplCopyWith(
          _$ChainDtoImpl value, $Res Function(_$ChainDtoImpl) then) =
      __$$ChainDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int chainCode,
      String chainName,
      int subChainCode,
      String subChainName,
      DateTime observedAt,
      int storeCount,
      List<StoreDto>? stores});
}

/// @nodoc
class __$$ChainDtoImplCopyWithImpl<$Res>
    extends _$ChainDtoCopyWithImpl<$Res, _$ChainDtoImpl>
    implements _$$ChainDtoImplCopyWith<$Res> {
  __$$ChainDtoImplCopyWithImpl(
      _$ChainDtoImpl _value, $Res Function(_$ChainDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chainCode = null,
    Object? chainName = null,
    Object? subChainCode = null,
    Object? subChainName = null,
    Object? observedAt = null,
    Object? storeCount = null,
    Object? stores = freezed,
  }) {
    return _then(_$ChainDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chainCode: null == chainCode
          ? _value.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as int,
      chainName: null == chainName
          ? _value.chainName
          : chainName // ignore: cast_nullable_to_non_nullable
              as String,
      subChainCode: null == subChainCode
          ? _value.subChainCode
          : subChainCode // ignore: cast_nullable_to_non_nullable
              as int,
      subChainName: null == subChainName
          ? _value.subChainName
          : subChainName // ignore: cast_nullable_to_non_nullable
              as String,
      observedAt: null == observedAt
          ? _value.observedAt
          : observedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      stores: freezed == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainDtoImpl implements _ChainDto {
  const _$ChainDtoImpl(
      {required this.id,
      required this.chainCode,
      required this.chainName,
      required this.subChainCode,
      required this.subChainName,
      required this.observedAt,
      required this.storeCount,
      final List<StoreDto>? stores})
      : _stores = stores;

  factory _$ChainDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int chainCode;
  @override
  final String chainName;
  @override
  final int subChainCode;
  @override
  final String subChainName;
  @override
  final DateTime observedAt;
  @override
  final int storeCount;
  final List<StoreDto>? _stores;
  @override
  List<StoreDto>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChainDto(id: $id, chainCode: $chainCode, chainName: $chainName, subChainCode: $subChainCode, subChainName: $subChainName, observedAt: $observedAt, storeCount: $storeCount, stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chainCode, chainCode) ||
                other.chainCode == chainCode) &&
            (identical(other.chainName, chainName) ||
                other.chainName == chainName) &&
            (identical(other.subChainCode, subChainCode) ||
                other.subChainCode == subChainCode) &&
            (identical(other.subChainName, subChainName) ||
                other.subChainName == subChainName) &&
            (identical(other.observedAt, observedAt) ||
                other.observedAt == observedAt) &&
            (identical(other.storeCount, storeCount) ||
                other.storeCount == storeCount) &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chainCode,
      chainName,
      subChainCode,
      subChainName,
      observedAt,
      storeCount,
      const DeepCollectionEquality().hash(_stores));

  /// Create a copy of ChainDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainDtoImplCopyWith<_$ChainDtoImpl> get copyWith =>
      __$$ChainDtoImplCopyWithImpl<_$ChainDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainDtoImplToJson(
      this,
    );
  }
}

abstract class _ChainDto implements ChainDto {
  const factory _ChainDto(
      {required final String id,
      required final int chainCode,
      required final String chainName,
      required final int subChainCode,
      required final String subChainName,
      required final DateTime observedAt,
      required final int storeCount,
      final List<StoreDto>? stores}) = _$ChainDtoImpl;

  factory _ChainDto.fromJson(Map<String, dynamic> json) =
      _$ChainDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get chainCode;
  @override
  String get chainName;
  @override
  int get subChainCode;
  @override
  String get subChainName;
  @override
  DateTime get observedAt;
  @override
  int get storeCount;
  @override
  List<StoreDto>? get stores;

  /// Create a copy of ChainDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainDtoImplCopyWith<_$ChainDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainResponseDto _$ChainResponseDtoFromJson(Map<String, dynamic> json) {
  return _ChainResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ChainResponseDto {
  ChainDto get chain => throw _privateConstructorUsedError;
  List<StoreDto>? get stores => throw _privateConstructorUsedError;
  ChainStatisticsDto? get statistics => throw _privateConstructorUsedError;

  /// Serializes this ChainResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainResponseDtoCopyWith<ChainResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainResponseDtoCopyWith<$Res> {
  factory $ChainResponseDtoCopyWith(
          ChainResponseDto value, $Res Function(ChainResponseDto) then) =
      _$ChainResponseDtoCopyWithImpl<$Res, ChainResponseDto>;
  @useResult
  $Res call(
      {ChainDto chain, List<StoreDto>? stores, ChainStatisticsDto? statistics});

  $ChainDtoCopyWith<$Res> get chain;
  $ChainStatisticsDtoCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ChainResponseDtoCopyWithImpl<$Res, $Val extends ChainResponseDto>
    implements $ChainResponseDtoCopyWith<$Res> {
  _$ChainResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
    Object? stores = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainDto,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ChainStatisticsDto?,
    ) as $Val);
  }

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChainDtoCopyWith<$Res> get chain {
    return $ChainDtoCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChainStatisticsDtoCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $ChainStatisticsDtoCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainResponseDtoImplCopyWith<$Res>
    implements $ChainResponseDtoCopyWith<$Res> {
  factory _$$ChainResponseDtoImplCopyWith(_$ChainResponseDtoImpl value,
          $Res Function(_$ChainResponseDtoImpl) then) =
      __$$ChainResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChainDto chain, List<StoreDto>? stores, ChainStatisticsDto? statistics});

  @override
  $ChainDtoCopyWith<$Res> get chain;
  @override
  $ChainStatisticsDtoCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$ChainResponseDtoImplCopyWithImpl<$Res>
    extends _$ChainResponseDtoCopyWithImpl<$Res, _$ChainResponseDtoImpl>
    implements _$$ChainResponseDtoImplCopyWith<$Res> {
  __$$ChainResponseDtoImplCopyWithImpl(_$ChainResponseDtoImpl _value,
      $Res Function(_$ChainResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
    Object? stores = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$ChainResponseDtoImpl(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainDto,
      stores: freezed == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ChainStatisticsDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainResponseDtoImpl implements _ChainResponseDto {
  const _$ChainResponseDtoImpl(
      {required this.chain, final List<StoreDto>? stores, this.statistics})
      : _stores = stores;

  factory _$ChainResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainResponseDtoImplFromJson(json);

  @override
  final ChainDto chain;
  final List<StoreDto>? _stores;
  @override
  List<StoreDto>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChainStatisticsDto? statistics;

  @override
  String toString() {
    return 'ChainResponseDto(chain: $chain, stores: $stores, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainResponseDtoImpl &&
            (identical(other.chain, chain) || other.chain == chain) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chain,
      const DeepCollectionEquality().hash(_stores), statistics);

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainResponseDtoImplCopyWith<_$ChainResponseDtoImpl> get copyWith =>
      __$$ChainResponseDtoImplCopyWithImpl<_$ChainResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ChainResponseDto implements ChainResponseDto {
  const factory _ChainResponseDto(
      {required final ChainDto chain,
      final List<StoreDto>? stores,
      final ChainStatisticsDto? statistics}) = _$ChainResponseDtoImpl;

  factory _ChainResponseDto.fromJson(Map<String, dynamic> json) =
      _$ChainResponseDtoImpl.fromJson;

  @override
  ChainDto get chain;
  @override
  List<StoreDto>? get stores;
  @override
  ChainStatisticsDto? get statistics;

  /// Create a copy of ChainResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainResponseDtoImplCopyWith<_$ChainResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetChainsResponseDto _$GetChainsResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetChainsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetChainsResponseDto {
  List<ChainResponseDto> get chains => throw _privateConstructorUsedError;

  /// Serializes this GetChainsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetChainsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetChainsResponseDtoCopyWith<GetChainsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChainsResponseDtoCopyWith<$Res> {
  factory $GetChainsResponseDtoCopyWith(GetChainsResponseDto value,
          $Res Function(GetChainsResponseDto) then) =
      _$GetChainsResponseDtoCopyWithImpl<$Res, GetChainsResponseDto>;
  @useResult
  $Res call({List<ChainResponseDto> chains});
}

/// @nodoc
class _$GetChainsResponseDtoCopyWithImpl<$Res,
        $Val extends GetChainsResponseDto>
    implements $GetChainsResponseDtoCopyWith<$Res> {
  _$GetChainsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetChainsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
  }) {
    return _then(_value.copyWith(
      chains: null == chains
          ? _value.chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<ChainResponseDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChainsResponseDtoImplCopyWith<$Res>
    implements $GetChainsResponseDtoCopyWith<$Res> {
  factory _$$GetChainsResponseDtoImplCopyWith(_$GetChainsResponseDtoImpl value,
          $Res Function(_$GetChainsResponseDtoImpl) then) =
      __$$GetChainsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChainResponseDto> chains});
}

/// @nodoc
class __$$GetChainsResponseDtoImplCopyWithImpl<$Res>
    extends _$GetChainsResponseDtoCopyWithImpl<$Res, _$GetChainsResponseDtoImpl>
    implements _$$GetChainsResponseDtoImplCopyWith<$Res> {
  __$$GetChainsResponseDtoImplCopyWithImpl(_$GetChainsResponseDtoImpl _value,
      $Res Function(_$GetChainsResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetChainsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
  }) {
    return _then(_$GetChainsResponseDtoImpl(
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<ChainResponseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetChainsResponseDtoImpl implements _GetChainsResponseDto {
  const _$GetChainsResponseDtoImpl(
      {required final List<ChainResponseDto> chains})
      : _chains = chains;

  factory _$GetChainsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetChainsResponseDtoImplFromJson(json);

  final List<ChainResponseDto> _chains;
  @override
  List<ChainResponseDto> get chains {
    if (_chains is EqualUnmodifiableListView) return _chains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  @override
  String toString() {
    return 'GetChainsResponseDto(chains: $chains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChainsResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._chains, _chains));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chains));

  /// Create a copy of GetChainsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChainsResponseDtoImplCopyWith<_$GetChainsResponseDtoImpl>
      get copyWith =>
          __$$GetChainsResponseDtoImplCopyWithImpl<_$GetChainsResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetChainsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetChainsResponseDto implements GetChainsResponseDto {
  const factory _GetChainsResponseDto(
          {required final List<ChainResponseDto> chains}) =
      _$GetChainsResponseDtoImpl;

  factory _GetChainsResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetChainsResponseDtoImpl.fromJson;

  @override
  List<ChainResponseDto> get chains;

  /// Create a copy of GetChainsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChainsResponseDtoImplCopyWith<_$GetChainsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetStoresResponseDto _$GetStoresResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetStoresResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetStoresResponseDto {
  List<StoreDto> get stores => throw _privateConstructorUsedError;

  /// Serializes this GetStoresResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStoresResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStoresResponseDtoCopyWith<GetStoresResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoresResponseDtoCopyWith<$Res> {
  factory $GetStoresResponseDtoCopyWith(GetStoresResponseDto value,
          $Res Function(GetStoresResponseDto) then) =
      _$GetStoresResponseDtoCopyWithImpl<$Res, GetStoresResponseDto>;
  @useResult
  $Res call({List<StoreDto> stores});
}

/// @nodoc
class _$GetStoresResponseDtoCopyWithImpl<$Res,
        $Val extends GetStoresResponseDto>
    implements $GetStoresResponseDtoCopyWith<$Res> {
  _$GetStoresResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStoresResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_value.copyWith(
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStoresResponseDtoImplCopyWith<$Res>
    implements $GetStoresResponseDtoCopyWith<$Res> {
  factory _$$GetStoresResponseDtoImplCopyWith(_$GetStoresResponseDtoImpl value,
          $Res Function(_$GetStoresResponseDtoImpl) then) =
      __$$GetStoresResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreDto> stores});
}

/// @nodoc
class __$$GetStoresResponseDtoImplCopyWithImpl<$Res>
    extends _$GetStoresResponseDtoCopyWithImpl<$Res, _$GetStoresResponseDtoImpl>
    implements _$$GetStoresResponseDtoImplCopyWith<$Res> {
  __$$GetStoresResponseDtoImplCopyWithImpl(_$GetStoresResponseDtoImpl _value,
      $Res Function(_$GetStoresResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStoresResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_$GetStoresResponseDtoImpl(
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoresResponseDtoImpl implements _GetStoresResponseDto {
  const _$GetStoresResponseDtoImpl({required final List<StoreDto> stores})
      : _stores = stores;

  factory _$GetStoresResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoresResponseDtoImplFromJson(json);

  final List<StoreDto> _stores;
  @override
  List<StoreDto> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'GetStoresResponseDto(stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoresResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  /// Create a copy of GetStoresResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoresResponseDtoImplCopyWith<_$GetStoresResponseDtoImpl>
      get copyWith =>
          __$$GetStoresResponseDtoImplCopyWithImpl<_$GetStoresResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoresResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetStoresResponseDto implements GetStoresResponseDto {
  const factory _GetStoresResponseDto({required final List<StoreDto> stores}) =
      _$GetStoresResponseDtoImpl;

  factory _GetStoresResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetStoresResponseDtoImpl.fromJson;

  @override
  List<StoreDto> get stores;

  /// Create a copy of GetStoresResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStoresResponseDtoImplCopyWith<_$GetStoresResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
