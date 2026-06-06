// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Chain {
  String get id => throw _privateConstructorUsedError;
  int get chainCode => throw _privateConstructorUsedError;
  String get chainName => throw _privateConstructorUsedError;
  int get subChainCode => throw _privateConstructorUsedError;
  String get subChainName => throw _privateConstructorUsedError;
  DateTime get observedAt => throw _privateConstructorUsedError;
  int get storeCount => throw _privateConstructorUsedError;
  List<Store>? get stores => throw _privateConstructorUsedError;
  ChainStatistics? get statistics => throw _privateConstructorUsedError;

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainCopyWith<Chain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainCopyWith<$Res> {
  factory $ChainCopyWith(Chain value, $Res Function(Chain) then) =
      _$ChainCopyWithImpl<$Res, Chain>;
  @useResult
  $Res call(
      {String id,
      int chainCode,
      String chainName,
      int subChainCode,
      String subChainName,
      DateTime observedAt,
      int storeCount,
      List<Store>? stores,
      ChainStatistics? statistics});

  $ChainStatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ChainCopyWithImpl<$Res, $Val extends Chain>
    implements $ChainCopyWith<$Res> {
  _$ChainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chain
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
    Object? statistics = freezed,
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
              as List<Store>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ChainStatistics?,
    ) as $Val);
  }

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChainStatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $ChainStatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainImplCopyWith<$Res> implements $ChainCopyWith<$Res> {
  factory _$$ChainImplCopyWith(
          _$ChainImpl value, $Res Function(_$ChainImpl) then) =
      __$$ChainImplCopyWithImpl<$Res>;
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
      List<Store>? stores,
      ChainStatistics? statistics});

  @override
  $ChainStatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$ChainImplCopyWithImpl<$Res>
    extends _$ChainCopyWithImpl<$Res, _$ChainImpl>
    implements _$$ChainImplCopyWith<$Res> {
  __$$ChainImplCopyWithImpl(
      _$ChainImpl _value, $Res Function(_$ChainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chain
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
    Object? statistics = freezed,
  }) {
    return _then(_$ChainImpl(
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
              as List<Store>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ChainStatistics?,
    ));
  }
}

/// @nodoc

class _$ChainImpl implements _Chain {
  const _$ChainImpl(
      {required this.id,
      required this.chainCode,
      required this.chainName,
      required this.subChainCode,
      required this.subChainName,
      required this.observedAt,
      required this.storeCount,
      final List<Store>? stores,
      this.statistics})
      : _stores = stores;

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
  final List<Store>? _stores;
  @override
  List<Store>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChainStatistics? statistics;

  @override
  String toString() {
    return 'Chain(id: $id, chainCode: $chainCode, chainName: $chainName, subChainCode: $subChainCode, subChainName: $subChainName, observedAt: $observedAt, storeCount: $storeCount, stores: $stores, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainImpl &&
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
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

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
      const DeepCollectionEquality().hash(_stores),
      statistics);

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainImplCopyWith<_$ChainImpl> get copyWith =>
      __$$ChainImplCopyWithImpl<_$ChainImpl>(this, _$identity);
}

abstract class _Chain implements Chain {
  const factory _Chain(
      {required final String id,
      required final int chainCode,
      required final String chainName,
      required final int subChainCode,
      required final String subChainName,
      required final DateTime observedAt,
      required final int storeCount,
      final List<Store>? stores,
      final ChainStatistics? statistics}) = _$ChainImpl;

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
  List<Store>? get stores;
  @override
  ChainStatistics? get statistics;

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainImplCopyWith<_$ChainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Store {
  String get id => throw _privateConstructorUsedError;
  int get storeNumber => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  DateTime get lastObservedAt => throw _privateConstructorUsedError;
  String get chainId => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String id,
      int storeNumber,
      String storeName,
      Address address,
      DateTime lastObservedAt,
      String chainId});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
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
              as Address,
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

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int storeNumber,
      String storeName,
      Address address,
      DateTime lastObservedAt,
      String chainId});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Store
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
    return _then(_$StoreImpl(
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
              as Address,
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

class _$StoreImpl implements _Store {
  const _$StoreImpl(
      {required this.id,
      required this.storeNumber,
      required this.storeName,
      required this.address,
      required this.lastObservedAt,
      required this.chainId});

  @override
  final String id;
  @override
  final int storeNumber;
  @override
  final String storeName;
  @override
  final Address address;
  @override
  final DateTime lastObservedAt;
  @override
  final String chainId;

  @override
  String toString() {
    return 'Store(id: $id, storeNumber: $storeNumber, storeName: $storeName, address: $address, lastObservedAt: $lastObservedAt, chainId: $chainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, storeNumber, storeName,
      address, lastObservedAt, chainId);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);
}

abstract class _Store implements Store {
  const factory _Store(
      {required final String id,
      required final int storeNumber,
      required final String storeName,
      required final Address address,
      required final DateTime lastObservedAt,
      required final String chainId}) = _$StoreImpl;

  @override
  String get id;
  @override
  int get storeNumber;
  @override
  String get storeName;
  @override
  Address get address;
  @override
  DateTime get lastObservedAt;
  @override
  String get chainId;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Address {
  String get storeAddress => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get postalCode => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String storeAddress, String website, String city, int postalCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
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
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String storeAddress, String website, String city, int postalCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeAddress = null,
    Object? website = null,
    Object? city = null,
    Object? postalCode = null,
  }) {
    return _then(_$AddressImpl(
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

class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.storeAddress,
      required this.website,
      required this.city,
      required this.postalCode});

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
    return 'Address(storeAddress: $storeAddress, website: $website, city: $city, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, storeAddress, website, city, postalCode);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String storeAddress,
      required final String website,
      required final String city,
      required final int postalCode}) = _$AddressImpl;

  @override
  String get storeAddress;
  @override
  String get website;
  @override
  String get city;
  @override
  int get postalCode;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChainStatistics {
  int get storeCount => throw _privateConstructorUsedError;
  int get currentProductListings => throw _privateConstructorUsedError;

  /// Create a copy of ChainStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainStatisticsCopyWith<ChainStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainStatisticsCopyWith<$Res> {
  factory $ChainStatisticsCopyWith(
          ChainStatistics value, $Res Function(ChainStatistics) then) =
      _$ChainStatisticsCopyWithImpl<$Res, ChainStatistics>;
  @useResult
  $Res call({int storeCount, int currentProductListings});
}

/// @nodoc
class _$ChainStatisticsCopyWithImpl<$Res, $Val extends ChainStatistics>
    implements $ChainStatisticsCopyWith<$Res> {
  _$ChainStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainStatistics
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
abstract class _$$ChainStatisticsImplCopyWith<$Res>
    implements $ChainStatisticsCopyWith<$Res> {
  factory _$$ChainStatisticsImplCopyWith(_$ChainStatisticsImpl value,
          $Res Function(_$ChainStatisticsImpl) then) =
      __$$ChainStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int storeCount, int currentProductListings});
}

/// @nodoc
class __$$ChainStatisticsImplCopyWithImpl<$Res>
    extends _$ChainStatisticsCopyWithImpl<$Res, _$ChainStatisticsImpl>
    implements _$$ChainStatisticsImplCopyWith<$Res> {
  __$$ChainStatisticsImplCopyWithImpl(
      _$ChainStatisticsImpl _value, $Res Function(_$ChainStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeCount = null,
    Object? currentProductListings = null,
  }) {
    return _then(_$ChainStatisticsImpl(
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

class _$ChainStatisticsImpl implements _ChainStatistics {
  const _$ChainStatisticsImpl(
      {required this.storeCount, required this.currentProductListings});

  @override
  final int storeCount;
  @override
  final int currentProductListings;

  @override
  String toString() {
    return 'ChainStatistics(storeCount: $storeCount, currentProductListings: $currentProductListings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainStatisticsImpl &&
            (identical(other.storeCount, storeCount) ||
                other.storeCount == storeCount) &&
            (identical(other.currentProductListings, currentProductListings) ||
                other.currentProductListings == currentProductListings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, storeCount, currentProductListings);

  /// Create a copy of ChainStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainStatisticsImplCopyWith<_$ChainStatisticsImpl> get copyWith =>
      __$$ChainStatisticsImplCopyWithImpl<_$ChainStatisticsImpl>(
          this, _$identity);
}

abstract class _ChainStatistics implements ChainStatistics {
  const factory _ChainStatistics(
      {required final int storeCount,
      required final int currentProductListings}) = _$ChainStatisticsImpl;

  @override
  int get storeCount;
  @override
  int get currentProductListings;

  /// Create a copy of ChainStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainStatisticsImplCopyWith<_$ChainStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
