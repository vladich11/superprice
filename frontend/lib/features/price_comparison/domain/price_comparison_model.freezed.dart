// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CrossChainComparison {
  int get productBarcode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  bool get currentOnly => throw _privateConstructorUsedError;
  OverallStatistics get overallStatistics => throw _privateConstructorUsedError;
  List<ChainPriceData> get chainComparison =>
      throw _privateConstructorUsedError;

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrossChainComparisonCopyWith<CrossChainComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrossChainComparisonCopyWith<$Res> {
  factory $CrossChainComparisonCopyWith(CrossChainComparison value,
          $Res Function(CrossChainComparison) then) =
      _$CrossChainComparisonCopyWithImpl<$Res, CrossChainComparison>;
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      String? manufacturer,
      bool currentOnly,
      OverallStatistics overallStatistics,
      List<ChainPriceData> chainComparison});

  $OverallStatisticsCopyWith<$Res> get overallStatistics;
}

/// @nodoc
class _$CrossChainComparisonCopyWithImpl<$Res,
        $Val extends CrossChainComparison>
    implements $CrossChainComparisonCopyWith<$Res> {
  _$CrossChainComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productBarcode = null,
    Object? productName = null,
    Object? manufacturer = freezed,
    Object? currentOnly = null,
    Object? overallStatistics = null,
    Object? chainComparison = null,
  }) {
    return _then(_value.copyWith(
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOnly: null == currentOnly
          ? _value.currentOnly
          : currentOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      overallStatistics: null == overallStatistics
          ? _value.overallStatistics
          : overallStatistics // ignore: cast_nullable_to_non_nullable
              as OverallStatistics,
      chainComparison: null == chainComparison
          ? _value.chainComparison
          : chainComparison // ignore: cast_nullable_to_non_nullable
              as List<ChainPriceData>,
    ) as $Val);
  }

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverallStatisticsCopyWith<$Res> get overallStatistics {
    return $OverallStatisticsCopyWith<$Res>(_value.overallStatistics, (value) {
      return _then(_value.copyWith(overallStatistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrossChainComparisonImplCopyWith<$Res>
    implements $CrossChainComparisonCopyWith<$Res> {
  factory _$$CrossChainComparisonImplCopyWith(_$CrossChainComparisonImpl value,
          $Res Function(_$CrossChainComparisonImpl) then) =
      __$$CrossChainComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      String? manufacturer,
      bool currentOnly,
      OverallStatistics overallStatistics,
      List<ChainPriceData> chainComparison});

  @override
  $OverallStatisticsCopyWith<$Res> get overallStatistics;
}

/// @nodoc
class __$$CrossChainComparisonImplCopyWithImpl<$Res>
    extends _$CrossChainComparisonCopyWithImpl<$Res, _$CrossChainComparisonImpl>
    implements _$$CrossChainComparisonImplCopyWith<$Res> {
  __$$CrossChainComparisonImplCopyWithImpl(_$CrossChainComparisonImpl _value,
      $Res Function(_$CrossChainComparisonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productBarcode = null,
    Object? productName = null,
    Object? manufacturer = freezed,
    Object? currentOnly = null,
    Object? overallStatistics = null,
    Object? chainComparison = null,
  }) {
    return _then(_$CrossChainComparisonImpl(
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOnly: null == currentOnly
          ? _value.currentOnly
          : currentOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      overallStatistics: null == overallStatistics
          ? _value.overallStatistics
          : overallStatistics // ignore: cast_nullable_to_non_nullable
              as OverallStatistics,
      chainComparison: null == chainComparison
          ? _value._chainComparison
          : chainComparison // ignore: cast_nullable_to_non_nullable
              as List<ChainPriceData>,
    ));
  }
}

/// @nodoc

class _$CrossChainComparisonImpl implements _CrossChainComparison {
  const _$CrossChainComparisonImpl(
      {required this.productBarcode,
      required this.productName,
      this.manufacturer,
      required this.currentOnly,
      required this.overallStatistics,
      required final List<ChainPriceData> chainComparison})
      : _chainComparison = chainComparison;

  @override
  final int productBarcode;
  @override
  final String productName;
  @override
  final String? manufacturer;
  @override
  final bool currentOnly;
  @override
  final OverallStatistics overallStatistics;
  final List<ChainPriceData> _chainComparison;
  @override
  List<ChainPriceData> get chainComparison {
    if (_chainComparison is EqualUnmodifiableListView) return _chainComparison;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chainComparison);
  }

  @override
  String toString() {
    return 'CrossChainComparison(productBarcode: $productBarcode, productName: $productName, manufacturer: $manufacturer, currentOnly: $currentOnly, overallStatistics: $overallStatistics, chainComparison: $chainComparison)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrossChainComparisonImpl &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.currentOnly, currentOnly) ||
                other.currentOnly == currentOnly) &&
            (identical(other.overallStatistics, overallStatistics) ||
                other.overallStatistics == overallStatistics) &&
            const DeepCollectionEquality()
                .equals(other._chainComparison, _chainComparison));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productBarcode,
      productName,
      manufacturer,
      currentOnly,
      overallStatistics,
      const DeepCollectionEquality().hash(_chainComparison));

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrossChainComparisonImplCopyWith<_$CrossChainComparisonImpl>
      get copyWith =>
          __$$CrossChainComparisonImplCopyWithImpl<_$CrossChainComparisonImpl>(
              this, _$identity);
}

abstract class _CrossChainComparison implements CrossChainComparison {
  const factory _CrossChainComparison(
          {required final int productBarcode,
          required final String productName,
          final String? manufacturer,
          required final bool currentOnly,
          required final OverallStatistics overallStatistics,
          required final List<ChainPriceData> chainComparison}) =
      _$CrossChainComparisonImpl;

  @override
  int get productBarcode;
  @override
  String get productName;
  @override
  String? get manufacturer;
  @override
  bool get currentOnly;
  @override
  OverallStatistics get overallStatistics;
  @override
  List<ChainPriceData> get chainComparison;

  /// Create a copy of CrossChainComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrossChainComparisonImplCopyWith<_$CrossChainComparisonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverallStatistics {
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  double get avgPrice => throw _privateConstructorUsedError;
  double get totalPriceRange => throw _privateConstructorUsedError;
  int get totalStores => throw _privateConstructorUsedError;
  int get totalChains => throw _privateConstructorUsedError;

  /// Create a copy of OverallStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverallStatisticsCopyWith<OverallStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallStatisticsCopyWith<$Res> {
  factory $OverallStatisticsCopyWith(
          OverallStatistics value, $Res Function(OverallStatistics) then) =
      _$OverallStatisticsCopyWithImpl<$Res, OverallStatistics>;
  @useResult
  $Res call(
      {double minPrice,
      double maxPrice,
      double avgPrice,
      double totalPriceRange,
      int totalStores,
      int totalChains});
}

/// @nodoc
class _$OverallStatisticsCopyWithImpl<$Res, $Val extends OverallStatistics>
    implements $OverallStatisticsCopyWith<$Res> {
  _$OverallStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverallStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? avgPrice = null,
    Object? totalPriceRange = null,
    Object? totalStores = null,
    Object? totalChains = null,
  }) {
    return _then(_value.copyWith(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPriceRange: null == totalPriceRange
          ? _value.totalPriceRange
          : totalPriceRange // ignore: cast_nullable_to_non_nullable
              as double,
      totalStores: null == totalStores
          ? _value.totalStores
          : totalStores // ignore: cast_nullable_to_non_nullable
              as int,
      totalChains: null == totalChains
          ? _value.totalChains
          : totalChains // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverallStatisticsImplCopyWith<$Res>
    implements $OverallStatisticsCopyWith<$Res> {
  factory _$$OverallStatisticsImplCopyWith(_$OverallStatisticsImpl value,
          $Res Function(_$OverallStatisticsImpl) then) =
      __$$OverallStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double minPrice,
      double maxPrice,
      double avgPrice,
      double totalPriceRange,
      int totalStores,
      int totalChains});
}

/// @nodoc
class __$$OverallStatisticsImplCopyWithImpl<$Res>
    extends _$OverallStatisticsCopyWithImpl<$Res, _$OverallStatisticsImpl>
    implements _$$OverallStatisticsImplCopyWith<$Res> {
  __$$OverallStatisticsImplCopyWithImpl(_$OverallStatisticsImpl _value,
      $Res Function(_$OverallStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OverallStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? avgPrice = null,
    Object? totalPriceRange = null,
    Object? totalStores = null,
    Object? totalChains = null,
  }) {
    return _then(_$OverallStatisticsImpl(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPriceRange: null == totalPriceRange
          ? _value.totalPriceRange
          : totalPriceRange // ignore: cast_nullable_to_non_nullable
              as double,
      totalStores: null == totalStores
          ? _value.totalStores
          : totalStores // ignore: cast_nullable_to_non_nullable
              as int,
      totalChains: null == totalChains
          ? _value.totalChains
          : totalChains // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OverallStatisticsImpl implements _OverallStatistics {
  const _$OverallStatisticsImpl(
      {required this.minPrice,
      required this.maxPrice,
      required this.avgPrice,
      required this.totalPriceRange,
      required this.totalStores,
      required this.totalChains});

  @override
  final double minPrice;
  @override
  final double maxPrice;
  @override
  final double avgPrice;
  @override
  final double totalPriceRange;
  @override
  final int totalStores;
  @override
  final int totalChains;

  @override
  String toString() {
    return 'OverallStatistics(minPrice: $minPrice, maxPrice: $maxPrice, avgPrice: $avgPrice, totalPriceRange: $totalPriceRange, totalStores: $totalStores, totalChains: $totalChains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallStatisticsImpl &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.avgPrice, avgPrice) ||
                other.avgPrice == avgPrice) &&
            (identical(other.totalPriceRange, totalPriceRange) ||
                other.totalPriceRange == totalPriceRange) &&
            (identical(other.totalStores, totalStores) ||
                other.totalStores == totalStores) &&
            (identical(other.totalChains, totalChains) ||
                other.totalChains == totalChains));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, avgPrice,
      totalPriceRange, totalStores, totalChains);

  /// Create a copy of OverallStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallStatisticsImplCopyWith<_$OverallStatisticsImpl> get copyWith =>
      __$$OverallStatisticsImplCopyWithImpl<_$OverallStatisticsImpl>(
          this, _$identity);
}

abstract class _OverallStatistics implements OverallStatistics {
  const factory _OverallStatistics(
      {required final double minPrice,
      required final double maxPrice,
      required final double avgPrice,
      required final double totalPriceRange,
      required final int totalStores,
      required final int totalChains}) = _$OverallStatisticsImpl;

  @override
  double get minPrice;
  @override
  double get maxPrice;
  @override
  double get avgPrice;
  @override
  double get totalPriceRange;
  @override
  int get totalStores;
  @override
  int get totalChains;

  /// Create a copy of OverallStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverallStatisticsImplCopyWith<_$OverallStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChainPriceData {
  String get chainId => throw _privateConstructorUsedError;
  String get chainName => throw _privateConstructorUsedError;
  String? get chainCode => throw _privateConstructorUsedError;
  int get storeCount => throw _privateConstructorUsedError;
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  double get avgPrice => throw _privateConstructorUsedError;
  double get priceRange => throw _privateConstructorUsedError;

  /// Create a copy of ChainPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainPriceDataCopyWith<ChainPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainPriceDataCopyWith<$Res> {
  factory $ChainPriceDataCopyWith(
          ChainPriceData value, $Res Function(ChainPriceData) then) =
      _$ChainPriceDataCopyWithImpl<$Res, ChainPriceData>;
  @useResult
  $Res call(
      {String chainId,
      String chainName,
      String? chainCode,
      int storeCount,
      double minPrice,
      double maxPrice,
      double avgPrice,
      double priceRange});
}

/// @nodoc
class _$ChainPriceDataCopyWithImpl<$Res, $Val extends ChainPriceData>
    implements $ChainPriceDataCopyWith<$Res> {
  _$ChainPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = null,
    Object? chainName = null,
    Object? chainCode = freezed,
    Object? storeCount = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? avgPrice = null,
    Object? priceRange = null,
  }) {
    return _then(_value.copyWith(
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
      chainName: null == chainName
          ? _value.chainName
          : chainName // ignore: cast_nullable_to_non_nullable
              as String,
      chainCode: freezed == chainCode
          ? _value.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainPriceDataImplCopyWith<$Res>
    implements $ChainPriceDataCopyWith<$Res> {
  factory _$$ChainPriceDataImplCopyWith(_$ChainPriceDataImpl value,
          $Res Function(_$ChainPriceDataImpl) then) =
      __$$ChainPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chainId,
      String chainName,
      String? chainCode,
      int storeCount,
      double minPrice,
      double maxPrice,
      double avgPrice,
      double priceRange});
}

/// @nodoc
class __$$ChainPriceDataImplCopyWithImpl<$Res>
    extends _$ChainPriceDataCopyWithImpl<$Res, _$ChainPriceDataImpl>
    implements _$$ChainPriceDataImplCopyWith<$Res> {
  __$$ChainPriceDataImplCopyWithImpl(
      _$ChainPriceDataImpl _value, $Res Function(_$ChainPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = null,
    Object? chainName = null,
    Object? chainCode = freezed,
    Object? storeCount = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? avgPrice = null,
    Object? priceRange = null,
  }) {
    return _then(_$ChainPriceDataImpl(
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
      chainName: null == chainName
          ? _value.chainName
          : chainName // ignore: cast_nullable_to_non_nullable
              as String,
      chainCode: freezed == chainCode
          ? _value.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as String?,
      storeCount: null == storeCount
          ? _value.storeCount
          : storeCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChainPriceDataImpl implements _ChainPriceData {
  const _$ChainPriceDataImpl(
      {required this.chainId,
      required this.chainName,
      this.chainCode,
      required this.storeCount,
      required this.minPrice,
      required this.maxPrice,
      required this.avgPrice,
      required this.priceRange});

  @override
  final String chainId;
  @override
  final String chainName;
  @override
  final String? chainCode;
  @override
  final int storeCount;
  @override
  final double minPrice;
  @override
  final double maxPrice;
  @override
  final double avgPrice;
  @override
  final double priceRange;

  @override
  String toString() {
    return 'ChainPriceData(chainId: $chainId, chainName: $chainName, chainCode: $chainCode, storeCount: $storeCount, minPrice: $minPrice, maxPrice: $maxPrice, avgPrice: $avgPrice, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainPriceDataImpl &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.chainName, chainName) ||
                other.chainName == chainName) &&
            (identical(other.chainCode, chainCode) ||
                other.chainCode == chainCode) &&
            (identical(other.storeCount, storeCount) ||
                other.storeCount == storeCount) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.avgPrice, avgPrice) ||
                other.avgPrice == avgPrice) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chainId, chainName, chainCode,
      storeCount, minPrice, maxPrice, avgPrice, priceRange);

  /// Create a copy of ChainPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainPriceDataImplCopyWith<_$ChainPriceDataImpl> get copyWith =>
      __$$ChainPriceDataImplCopyWithImpl<_$ChainPriceDataImpl>(
          this, _$identity);
}

abstract class _ChainPriceData implements ChainPriceData {
  const factory _ChainPriceData(
      {required final String chainId,
      required final String chainName,
      final String? chainCode,
      required final int storeCount,
      required final double minPrice,
      required final double maxPrice,
      required final double avgPrice,
      required final double priceRange}) = _$ChainPriceDataImpl;

  @override
  String get chainId;
  @override
  String get chainName;
  @override
  String? get chainCode;
  @override
  int get storeCount;
  @override
  double get minPrice;
  @override
  double get maxPrice;
  @override
  double get avgPrice;
  @override
  double get priceRange;

  /// Create a copy of ChainPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainPriceDataImplCopyWith<_$ChainPriceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
