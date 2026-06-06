// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OverallStatisticsDto _$OverallStatisticsDtoFromJson(Map<String, dynamic> json) {
  return _OverallStatisticsDto.fromJson(json);
}

/// @nodoc
mixin _$OverallStatisticsDto {
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  double get avgPrice => throw _privateConstructorUsedError;
  double get totalPriceRange => throw _privateConstructorUsedError;
  int get totalStores => throw _privateConstructorUsedError;
  int get totalChains => throw _privateConstructorUsedError;

  /// Serializes this OverallStatisticsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverallStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverallStatisticsDtoCopyWith<OverallStatisticsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallStatisticsDtoCopyWith<$Res> {
  factory $OverallStatisticsDtoCopyWith(OverallStatisticsDto value,
          $Res Function(OverallStatisticsDto) then) =
      _$OverallStatisticsDtoCopyWithImpl<$Res, OverallStatisticsDto>;
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
class _$OverallStatisticsDtoCopyWithImpl<$Res,
        $Val extends OverallStatisticsDto>
    implements $OverallStatisticsDtoCopyWith<$Res> {
  _$OverallStatisticsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverallStatisticsDto
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
abstract class _$$OverallStatisticsDtoImplCopyWith<$Res>
    implements $OverallStatisticsDtoCopyWith<$Res> {
  factory _$$OverallStatisticsDtoImplCopyWith(_$OverallStatisticsDtoImpl value,
          $Res Function(_$OverallStatisticsDtoImpl) then) =
      __$$OverallStatisticsDtoImplCopyWithImpl<$Res>;
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
class __$$OverallStatisticsDtoImplCopyWithImpl<$Res>
    extends _$OverallStatisticsDtoCopyWithImpl<$Res, _$OverallStatisticsDtoImpl>
    implements _$$OverallStatisticsDtoImplCopyWith<$Res> {
  __$$OverallStatisticsDtoImplCopyWithImpl(_$OverallStatisticsDtoImpl _value,
      $Res Function(_$OverallStatisticsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OverallStatisticsDto
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
    return _then(_$OverallStatisticsDtoImpl(
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
@JsonSerializable()
class _$OverallStatisticsDtoImpl implements _OverallStatisticsDto {
  const _$OverallStatisticsDtoImpl(
      {required this.minPrice,
      required this.maxPrice,
      required this.avgPrice,
      required this.totalPriceRange,
      required this.totalStores,
      required this.totalChains});

  factory _$OverallStatisticsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverallStatisticsDtoImplFromJson(json);

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
    return 'OverallStatisticsDto(minPrice: $minPrice, maxPrice: $maxPrice, avgPrice: $avgPrice, totalPriceRange: $totalPriceRange, totalStores: $totalStores, totalChains: $totalChains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallStatisticsDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, avgPrice,
      totalPriceRange, totalStores, totalChains);

  /// Create a copy of OverallStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallStatisticsDtoImplCopyWith<_$OverallStatisticsDtoImpl>
      get copyWith =>
          __$$OverallStatisticsDtoImplCopyWithImpl<_$OverallStatisticsDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallStatisticsDtoImplToJson(
      this,
    );
  }
}

abstract class _OverallStatisticsDto implements OverallStatisticsDto {
  const factory _OverallStatisticsDto(
      {required final double minPrice,
      required final double maxPrice,
      required final double avgPrice,
      required final double totalPriceRange,
      required final int totalStores,
      required final int totalChains}) = _$OverallStatisticsDtoImpl;

  factory _OverallStatisticsDto.fromJson(Map<String, dynamic> json) =
      _$OverallStatisticsDtoImpl.fromJson;

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

  /// Create a copy of OverallStatisticsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverallStatisticsDtoImplCopyWith<_$OverallStatisticsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChainPriceDataDto _$ChainPriceDataDtoFromJson(Map<String, dynamic> json) {
  return _ChainPriceDataDto.fromJson(json);
}

/// @nodoc
mixin _$ChainPriceDataDto {
  String get chainId => throw _privateConstructorUsedError;
  String get chainName => throw _privateConstructorUsedError;
  String? get chainCode => throw _privateConstructorUsedError;
  int get storeCount => throw _privateConstructorUsedError;
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  double get avgPrice => throw _privateConstructorUsedError;
  double get priceRange => throw _privateConstructorUsedError;

  /// Serializes this ChainPriceDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainPriceDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainPriceDataDtoCopyWith<ChainPriceDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainPriceDataDtoCopyWith<$Res> {
  factory $ChainPriceDataDtoCopyWith(
          ChainPriceDataDto value, $Res Function(ChainPriceDataDto) then) =
      _$ChainPriceDataDtoCopyWithImpl<$Res, ChainPriceDataDto>;
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
class _$ChainPriceDataDtoCopyWithImpl<$Res, $Val extends ChainPriceDataDto>
    implements $ChainPriceDataDtoCopyWith<$Res> {
  _$ChainPriceDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainPriceDataDto
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
abstract class _$$ChainPriceDataDtoImplCopyWith<$Res>
    implements $ChainPriceDataDtoCopyWith<$Res> {
  factory _$$ChainPriceDataDtoImplCopyWith(_$ChainPriceDataDtoImpl value,
          $Res Function(_$ChainPriceDataDtoImpl) then) =
      __$$ChainPriceDataDtoImplCopyWithImpl<$Res>;
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
class __$$ChainPriceDataDtoImplCopyWithImpl<$Res>
    extends _$ChainPriceDataDtoCopyWithImpl<$Res, _$ChainPriceDataDtoImpl>
    implements _$$ChainPriceDataDtoImplCopyWith<$Res> {
  __$$ChainPriceDataDtoImplCopyWithImpl(_$ChainPriceDataDtoImpl _value,
      $Res Function(_$ChainPriceDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainPriceDataDto
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
    return _then(_$ChainPriceDataDtoImpl(
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
@JsonSerializable()
class _$ChainPriceDataDtoImpl implements _ChainPriceDataDto {
  const _$ChainPriceDataDtoImpl(
      {required this.chainId,
      required this.chainName,
      this.chainCode,
      required this.storeCount,
      required this.minPrice,
      required this.maxPrice,
      required this.avgPrice,
      required this.priceRange});

  factory _$ChainPriceDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainPriceDataDtoImplFromJson(json);

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
    return 'ChainPriceDataDto(chainId: $chainId, chainName: $chainName, chainCode: $chainCode, storeCount: $storeCount, minPrice: $minPrice, maxPrice: $maxPrice, avgPrice: $avgPrice, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainPriceDataDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chainId, chainName, chainCode,
      storeCount, minPrice, maxPrice, avgPrice, priceRange);

  /// Create a copy of ChainPriceDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainPriceDataDtoImplCopyWith<_$ChainPriceDataDtoImpl> get copyWith =>
      __$$ChainPriceDataDtoImplCopyWithImpl<_$ChainPriceDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainPriceDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ChainPriceDataDto implements ChainPriceDataDto {
  const factory _ChainPriceDataDto(
      {required final String chainId,
      required final String chainName,
      final String? chainCode,
      required final int storeCount,
      required final double minPrice,
      required final double maxPrice,
      required final double avgPrice,
      required final double priceRange}) = _$ChainPriceDataDtoImpl;

  factory _ChainPriceDataDto.fromJson(Map<String, dynamic> json) =
      _$ChainPriceDataDtoImpl.fromJson;

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

  /// Create a copy of ChainPriceDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainPriceDataDtoImplCopyWith<_$ChainPriceDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CrossChainComparisonDto _$CrossChainComparisonDtoFromJson(
    Map<String, dynamic> json) {
  return _CrossChainComparisonDto.fromJson(json);
}

/// @nodoc
mixin _$CrossChainComparisonDto {
  int get productBarcode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  bool get currentOnly => throw _privateConstructorUsedError;
  OverallStatisticsDto get overallStatistics =>
      throw _privateConstructorUsedError;
  List<ChainPriceDataDto> get chainComparison =>
      throw _privateConstructorUsedError;

  /// Serializes this CrossChainComparisonDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CrossChainComparisonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrossChainComparisonDtoCopyWith<CrossChainComparisonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrossChainComparisonDtoCopyWith<$Res> {
  factory $CrossChainComparisonDtoCopyWith(CrossChainComparisonDto value,
          $Res Function(CrossChainComparisonDto) then) =
      _$CrossChainComparisonDtoCopyWithImpl<$Res, CrossChainComparisonDto>;
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      String? manufacturer,
      bool currentOnly,
      OverallStatisticsDto overallStatistics,
      List<ChainPriceDataDto> chainComparison});

  $OverallStatisticsDtoCopyWith<$Res> get overallStatistics;
}

/// @nodoc
class _$CrossChainComparisonDtoCopyWithImpl<$Res,
        $Val extends CrossChainComparisonDto>
    implements $CrossChainComparisonDtoCopyWith<$Res> {
  _$CrossChainComparisonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrossChainComparisonDto
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
              as OverallStatisticsDto,
      chainComparison: null == chainComparison
          ? _value.chainComparison
          : chainComparison // ignore: cast_nullable_to_non_nullable
              as List<ChainPriceDataDto>,
    ) as $Val);
  }

  /// Create a copy of CrossChainComparisonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverallStatisticsDtoCopyWith<$Res> get overallStatistics {
    return $OverallStatisticsDtoCopyWith<$Res>(_value.overallStatistics,
        (value) {
      return _then(_value.copyWith(overallStatistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrossChainComparisonDtoImplCopyWith<$Res>
    implements $CrossChainComparisonDtoCopyWith<$Res> {
  factory _$$CrossChainComparisonDtoImplCopyWith(
          _$CrossChainComparisonDtoImpl value,
          $Res Function(_$CrossChainComparisonDtoImpl) then) =
      __$$CrossChainComparisonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      String? manufacturer,
      bool currentOnly,
      OverallStatisticsDto overallStatistics,
      List<ChainPriceDataDto> chainComparison});

  @override
  $OverallStatisticsDtoCopyWith<$Res> get overallStatistics;
}

/// @nodoc
class __$$CrossChainComparisonDtoImplCopyWithImpl<$Res>
    extends _$CrossChainComparisonDtoCopyWithImpl<$Res,
        _$CrossChainComparisonDtoImpl>
    implements _$$CrossChainComparisonDtoImplCopyWith<$Res> {
  __$$CrossChainComparisonDtoImplCopyWithImpl(
      _$CrossChainComparisonDtoImpl _value,
      $Res Function(_$CrossChainComparisonDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CrossChainComparisonDto
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
    return _then(_$CrossChainComparisonDtoImpl(
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
              as OverallStatisticsDto,
      chainComparison: null == chainComparison
          ? _value._chainComparison
          : chainComparison // ignore: cast_nullable_to_non_nullable
              as List<ChainPriceDataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrossChainComparisonDtoImpl implements _CrossChainComparisonDto {
  const _$CrossChainComparisonDtoImpl(
      {required this.productBarcode,
      required this.productName,
      this.manufacturer,
      required this.currentOnly,
      required this.overallStatistics,
      required final List<ChainPriceDataDto> chainComparison})
      : _chainComparison = chainComparison;

  factory _$CrossChainComparisonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrossChainComparisonDtoImplFromJson(json);

  @override
  final int productBarcode;
  @override
  final String productName;
  @override
  final String? manufacturer;
  @override
  final bool currentOnly;
  @override
  final OverallStatisticsDto overallStatistics;
  final List<ChainPriceDataDto> _chainComparison;
  @override
  List<ChainPriceDataDto> get chainComparison {
    if (_chainComparison is EqualUnmodifiableListView) return _chainComparison;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chainComparison);
  }

  @override
  String toString() {
    return 'CrossChainComparisonDto(productBarcode: $productBarcode, productName: $productName, manufacturer: $manufacturer, currentOnly: $currentOnly, overallStatistics: $overallStatistics, chainComparison: $chainComparison)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrossChainComparisonDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productBarcode,
      productName,
      manufacturer,
      currentOnly,
      overallStatistics,
      const DeepCollectionEquality().hash(_chainComparison));

  /// Create a copy of CrossChainComparisonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrossChainComparisonDtoImplCopyWith<_$CrossChainComparisonDtoImpl>
      get copyWith => __$$CrossChainComparisonDtoImplCopyWithImpl<
          _$CrossChainComparisonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrossChainComparisonDtoImplToJson(
      this,
    );
  }
}

abstract class _CrossChainComparisonDto implements CrossChainComparisonDto {
  const factory _CrossChainComparisonDto(
          {required final int productBarcode,
          required final String productName,
          final String? manufacturer,
          required final bool currentOnly,
          required final OverallStatisticsDto overallStatistics,
          required final List<ChainPriceDataDto> chainComparison}) =
      _$CrossChainComparisonDtoImpl;

  factory _CrossChainComparisonDto.fromJson(Map<String, dynamic> json) =
      _$CrossChainComparisonDtoImpl.fromJson;

  @override
  int get productBarcode;
  @override
  String get productName;
  @override
  String? get manufacturer;
  @override
  bool get currentOnly;
  @override
  OverallStatisticsDto get overallStatistics;
  @override
  List<ChainPriceDataDto> get chainComparison;

  /// Create a copy of CrossChainComparisonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrossChainComparisonDtoImplCopyWith<_$CrossChainComparisonDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
