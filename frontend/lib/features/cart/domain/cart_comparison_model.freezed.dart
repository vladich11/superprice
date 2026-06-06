// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_comparison_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChainItemPrice _$ChainItemPriceFromJson(Map<String, dynamic> json) {
  return _ChainItemPrice.fromJson(json);
}

/// @nodoc
mixin _$ChainItemPrice {
  int get barcode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get lineTotal => throw _privateConstructorUsedError;

  /// Serializes this ChainItemPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainItemPriceCopyWith<ChainItemPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainItemPriceCopyWith<$Res> {
  factory $ChainItemPriceCopyWith(
          ChainItemPrice value, $Res Function(ChainItemPrice) then) =
      _$ChainItemPriceCopyWithImpl<$Res, ChainItemPrice>;
  @useResult
  $Res call(
      {int barcode, String productName, double unitPrice, double lineTotal});
}

/// @nodoc
class _$ChainItemPriceCopyWithImpl<$Res, $Val extends ChainItemPrice>
    implements $ChainItemPriceCopyWith<$Res> {
  _$ChainItemPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? unitPrice = null,
    Object? lineTotal = null,
  }) {
    return _then(_value.copyWith(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lineTotal: null == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainItemPriceImplCopyWith<$Res>
    implements $ChainItemPriceCopyWith<$Res> {
  factory _$$ChainItemPriceImplCopyWith(_$ChainItemPriceImpl value,
          $Res Function(_$ChainItemPriceImpl) then) =
      __$$ChainItemPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int barcode, String productName, double unitPrice, double lineTotal});
}

/// @nodoc
class __$$ChainItemPriceImplCopyWithImpl<$Res>
    extends _$ChainItemPriceCopyWithImpl<$Res, _$ChainItemPriceImpl>
    implements _$$ChainItemPriceImplCopyWith<$Res> {
  __$$ChainItemPriceImplCopyWithImpl(
      _$ChainItemPriceImpl _value, $Res Function(_$ChainItemPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? unitPrice = null,
    Object? lineTotal = null,
  }) {
    return _then(_$ChainItemPriceImpl(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lineTotal: null == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainItemPriceImpl implements _ChainItemPrice {
  const _$ChainItemPriceImpl(
      {required this.barcode,
      required this.productName,
      required this.unitPrice,
      required this.lineTotal});

  factory _$ChainItemPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainItemPriceImplFromJson(json);

  @override
  final int barcode;
  @override
  final String productName;
  @override
  final double unitPrice;
  @override
  final double lineTotal;

  @override
  String toString() {
    return 'ChainItemPrice(barcode: $barcode, productName: $productName, unitPrice: $unitPrice, lineTotal: $lineTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainItemPriceImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.lineTotal, lineTotal) ||
                other.lineTotal == lineTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, barcode, productName, unitPrice, lineTotal);

  /// Create a copy of ChainItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainItemPriceImplCopyWith<_$ChainItemPriceImpl> get copyWith =>
      __$$ChainItemPriceImplCopyWithImpl<_$ChainItemPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainItemPriceImplToJson(
      this,
    );
  }
}

abstract class _ChainItemPrice implements ChainItemPrice {
  const factory _ChainItemPrice(
      {required final int barcode,
      required final String productName,
      required final double unitPrice,
      required final double lineTotal}) = _$ChainItemPriceImpl;

  factory _ChainItemPrice.fromJson(Map<String, dynamic> json) =
      _$ChainItemPriceImpl.fromJson;

  @override
  int get barcode;
  @override
  String get productName;
  @override
  double get unitPrice;
  @override
  double get lineTotal;

  /// Create a copy of ChainItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainItemPriceImplCopyWith<_$ChainItemPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainTotal _$ChainTotalFromJson(Map<String, dynamic> json) {
  return _ChainTotal.fromJson(json);
}

/// @nodoc
mixin _$ChainTotal {
  String get chainId => throw _privateConstructorUsedError;
  String get chainName => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  List<ChainItemPrice> get itemPrices => throw _privateConstructorUsedError;
  List<int> get unmatchedBarcodes => throw _privateConstructorUsedError;

  /// Serializes this ChainTotal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainTotalCopyWith<ChainTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainTotalCopyWith<$Res> {
  factory $ChainTotalCopyWith(
          ChainTotal value, $Res Function(ChainTotal) then) =
      _$ChainTotalCopyWithImpl<$Res, ChainTotal>;
  @useResult
  $Res call(
      {String chainId,
      String chainName,
      double total,
      List<ChainItemPrice> itemPrices,
      List<int> unmatchedBarcodes});
}

/// @nodoc
class _$ChainTotalCopyWithImpl<$Res, $Val extends ChainTotal>
    implements $ChainTotalCopyWith<$Res> {
  _$ChainTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = null,
    Object? chainName = null,
    Object? total = null,
    Object? itemPrices = null,
    Object? unmatchedBarcodes = null,
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
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemPrices: null == itemPrices
          ? _value.itemPrices
          : itemPrices // ignore: cast_nullable_to_non_nullable
              as List<ChainItemPrice>,
      unmatchedBarcodes: null == unmatchedBarcodes
          ? _value.unmatchedBarcodes
          : unmatchedBarcodes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainTotalImplCopyWith<$Res>
    implements $ChainTotalCopyWith<$Res> {
  factory _$$ChainTotalImplCopyWith(
          _$ChainTotalImpl value, $Res Function(_$ChainTotalImpl) then) =
      __$$ChainTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chainId,
      String chainName,
      double total,
      List<ChainItemPrice> itemPrices,
      List<int> unmatchedBarcodes});
}

/// @nodoc
class __$$ChainTotalImplCopyWithImpl<$Res>
    extends _$ChainTotalCopyWithImpl<$Res, _$ChainTotalImpl>
    implements _$$ChainTotalImplCopyWith<$Res> {
  __$$ChainTotalImplCopyWithImpl(
      _$ChainTotalImpl _value, $Res Function(_$ChainTotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChainTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = null,
    Object? chainName = null,
    Object? total = null,
    Object? itemPrices = null,
    Object? unmatchedBarcodes = null,
  }) {
    return _then(_$ChainTotalImpl(
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
      chainName: null == chainName
          ? _value.chainName
          : chainName // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemPrices: null == itemPrices
          ? _value._itemPrices
          : itemPrices // ignore: cast_nullable_to_non_nullable
              as List<ChainItemPrice>,
      unmatchedBarcodes: null == unmatchedBarcodes
          ? _value._unmatchedBarcodes
          : unmatchedBarcodes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainTotalImpl implements _ChainTotal {
  const _$ChainTotalImpl(
      {required this.chainId,
      required this.chainName,
      required this.total,
      required final List<ChainItemPrice> itemPrices,
      required final List<int> unmatchedBarcodes})
      : _itemPrices = itemPrices,
        _unmatchedBarcodes = unmatchedBarcodes;

  factory _$ChainTotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainTotalImplFromJson(json);

  @override
  final String chainId;
  @override
  final String chainName;
  @override
  final double total;
  final List<ChainItemPrice> _itemPrices;
  @override
  List<ChainItemPrice> get itemPrices {
    if (_itemPrices is EqualUnmodifiableListView) return _itemPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemPrices);
  }

  final List<int> _unmatchedBarcodes;
  @override
  List<int> get unmatchedBarcodes {
    if (_unmatchedBarcodes is EqualUnmodifiableListView)
      return _unmatchedBarcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unmatchedBarcodes);
  }

  @override
  String toString() {
    return 'ChainTotal(chainId: $chainId, chainName: $chainName, total: $total, itemPrices: $itemPrices, unmatchedBarcodes: $unmatchedBarcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainTotalImpl &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.chainName, chainName) ||
                other.chainName == chainName) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._itemPrices, _itemPrices) &&
            const DeepCollectionEquality()
                .equals(other._unmatchedBarcodes, _unmatchedBarcodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chainId,
      chainName,
      total,
      const DeepCollectionEquality().hash(_itemPrices),
      const DeepCollectionEquality().hash(_unmatchedBarcodes));

  /// Create a copy of ChainTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainTotalImplCopyWith<_$ChainTotalImpl> get copyWith =>
      __$$ChainTotalImplCopyWithImpl<_$ChainTotalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainTotalImplToJson(
      this,
    );
  }
}

abstract class _ChainTotal implements ChainTotal {
  const factory _ChainTotal(
      {required final String chainId,
      required final String chainName,
      required final double total,
      required final List<ChainItemPrice> itemPrices,
      required final List<int> unmatchedBarcodes}) = _$ChainTotalImpl;

  factory _ChainTotal.fromJson(Map<String, dynamic> json) =
      _$ChainTotalImpl.fromJson;

  @override
  String get chainId;
  @override
  String get chainName;
  @override
  double get total;
  @override
  List<ChainItemPrice> get itemPrices;
  @override
  List<int> get unmatchedBarcodes;

  /// Create a copy of ChainTotal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainTotalImplCopyWith<_$ChainTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartComparison _$CartComparisonFromJson(Map<String, dynamic> json) {
  return _CartComparison.fromJson(json);
}

/// @nodoc
mixin _$CartComparison {
  List<ChainTotal> get chains => throw _privateConstructorUsedError;
  String get cheapestChainId => throw _privateConstructorUsedError;
  double get savingsVsCheapest => throw _privateConstructorUsedError;

  /// Serializes this CartComparison to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartComparisonCopyWith<CartComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartComparisonCopyWith<$Res> {
  factory $CartComparisonCopyWith(
          CartComparison value, $Res Function(CartComparison) then) =
      _$CartComparisonCopyWithImpl<$Res, CartComparison>;
  @useResult
  $Res call(
      {List<ChainTotal> chains,
      String cheapestChainId,
      double savingsVsCheapest});
}

/// @nodoc
class _$CartComparisonCopyWithImpl<$Res, $Val extends CartComparison>
    implements $CartComparisonCopyWith<$Res> {
  _$CartComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
    Object? cheapestChainId = null,
    Object? savingsVsCheapest = null,
  }) {
    return _then(_value.copyWith(
      chains: null == chains
          ? _value.chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<ChainTotal>,
      cheapestChainId: null == cheapestChainId
          ? _value.cheapestChainId
          : cheapestChainId // ignore: cast_nullable_to_non_nullable
              as String,
      savingsVsCheapest: null == savingsVsCheapest
          ? _value.savingsVsCheapest
          : savingsVsCheapest // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartComparisonImplCopyWith<$Res>
    implements $CartComparisonCopyWith<$Res> {
  factory _$$CartComparisonImplCopyWith(_$CartComparisonImpl value,
          $Res Function(_$CartComparisonImpl) then) =
      __$$CartComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChainTotal> chains,
      String cheapestChainId,
      double savingsVsCheapest});
}

/// @nodoc
class __$$CartComparisonImplCopyWithImpl<$Res>
    extends _$CartComparisonCopyWithImpl<$Res, _$CartComparisonImpl>
    implements _$$CartComparisonImplCopyWith<$Res> {
  __$$CartComparisonImplCopyWithImpl(
      _$CartComparisonImpl _value, $Res Function(_$CartComparisonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
    Object? cheapestChainId = null,
    Object? savingsVsCheapest = null,
  }) {
    return _then(_$CartComparisonImpl(
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<ChainTotal>,
      cheapestChainId: null == cheapestChainId
          ? _value.cheapestChainId
          : cheapestChainId // ignore: cast_nullable_to_non_nullable
              as String,
      savingsVsCheapest: null == savingsVsCheapest
          ? _value.savingsVsCheapest
          : savingsVsCheapest // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartComparisonImpl implements _CartComparison {
  const _$CartComparisonImpl(
      {required final List<ChainTotal> chains,
      required this.cheapestChainId,
      required this.savingsVsCheapest})
      : _chains = chains;

  factory _$CartComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartComparisonImplFromJson(json);

  final List<ChainTotal> _chains;
  @override
  List<ChainTotal> get chains {
    if (_chains is EqualUnmodifiableListView) return _chains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  @override
  final String cheapestChainId;
  @override
  final double savingsVsCheapest;

  @override
  String toString() {
    return 'CartComparison(chains: $chains, cheapestChainId: $cheapestChainId, savingsVsCheapest: $savingsVsCheapest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartComparisonImpl &&
            const DeepCollectionEquality().equals(other._chains, _chains) &&
            (identical(other.cheapestChainId, cheapestChainId) ||
                other.cheapestChainId == cheapestChainId) &&
            (identical(other.savingsVsCheapest, savingsVsCheapest) ||
                other.savingsVsCheapest == savingsVsCheapest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chains),
      cheapestChainId,
      savingsVsCheapest);

  /// Create a copy of CartComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartComparisonImplCopyWith<_$CartComparisonImpl> get copyWith =>
      __$$CartComparisonImplCopyWithImpl<_$CartComparisonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartComparisonImplToJson(
      this,
    );
  }
}

abstract class _CartComparison implements CartComparison {
  const factory _CartComparison(
      {required final List<ChainTotal> chains,
      required final String cheapestChainId,
      required final double savingsVsCheapest}) = _$CartComparisonImpl;

  factory _CartComparison.fromJson(Map<String, dynamic> json) =
      _$CartComparisonImpl.fromJson;

  @override
  List<ChainTotal> get chains;
  @override
  String get cheapestChainId;
  @override
  double get savingsVsCheapest;

  /// Create a copy of CartComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartComparisonImplCopyWith<_$CartComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
