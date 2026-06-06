// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParsedMatchedProductDto _$ParsedMatchedProductDtoFromJson(
    Map<String, dynamic> json) {
  return _ParsedMatchedProductDto.fromJson(json);
}

/// @nodoc
mixin _$ParsedMatchedProductDto {
  int get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName')
  String get productName => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this ParsedMatchedProductDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParsedMatchedProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedMatchedProductDtoCopyWith<ParsedMatchedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedMatchedProductDtoCopyWith<$Res> {
  factory $ParsedMatchedProductDtoCopyWith(ParsedMatchedProductDto value,
          $Res Function(ParsedMatchedProductDto) then) =
      _$ParsedMatchedProductDtoCopyWithImpl<$Res, ParsedMatchedProductDto>;
  @useResult
  $Res call(
      {int barcode,
      @JsonKey(name: 'productName') String productName,
      String manufacturer,
      double confidence});
}

/// @nodoc
class _$ParsedMatchedProductDtoCopyWithImpl<$Res,
        $Val extends ParsedMatchedProductDto>
    implements $ParsedMatchedProductDtoCopyWith<$Res> {
  _$ParsedMatchedProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedMatchedProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? manufacturer = null,
    Object? confidence = null,
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
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedMatchedProductDtoImplCopyWith<$Res>
    implements $ParsedMatchedProductDtoCopyWith<$Res> {
  factory _$$ParsedMatchedProductDtoImplCopyWith(
          _$ParsedMatchedProductDtoImpl value,
          $Res Function(_$ParsedMatchedProductDtoImpl) then) =
      __$$ParsedMatchedProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int barcode,
      @JsonKey(name: 'productName') String productName,
      String manufacturer,
      double confidence});
}

/// @nodoc
class __$$ParsedMatchedProductDtoImplCopyWithImpl<$Res>
    extends _$ParsedMatchedProductDtoCopyWithImpl<$Res,
        _$ParsedMatchedProductDtoImpl>
    implements _$$ParsedMatchedProductDtoImplCopyWith<$Res> {
  __$$ParsedMatchedProductDtoImplCopyWithImpl(
      _$ParsedMatchedProductDtoImpl _value,
      $Res Function(_$ParsedMatchedProductDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedMatchedProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? manufacturer = null,
    Object? confidence = null,
  }) {
    return _then(_$ParsedMatchedProductDtoImpl(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedMatchedProductDtoImpl implements _ParsedMatchedProductDto {
  const _$ParsedMatchedProductDtoImpl(
      {required this.barcode,
      @JsonKey(name: 'productName') required this.productName,
      required this.manufacturer,
      required this.confidence});

  factory _$ParsedMatchedProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParsedMatchedProductDtoImplFromJson(json);

  @override
  final int barcode;
  @override
  @JsonKey(name: 'productName')
  final String productName;
  @override
  final String manufacturer;
  @override
  final double confidence;

  @override
  String toString() {
    return 'ParsedMatchedProductDto(barcode: $barcode, productName: $productName, manufacturer: $manufacturer, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedMatchedProductDtoImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, barcode, productName, manufacturer, confidence);

  /// Create a copy of ParsedMatchedProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedMatchedProductDtoImplCopyWith<_$ParsedMatchedProductDtoImpl>
      get copyWith => __$$ParsedMatchedProductDtoImplCopyWithImpl<
          _$ParsedMatchedProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedMatchedProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ParsedMatchedProductDto implements ParsedMatchedProductDto {
  const factory _ParsedMatchedProductDto(
      {required final int barcode,
      @JsonKey(name: 'productName') required final String productName,
      required final String manufacturer,
      required final double confidence}) = _$ParsedMatchedProductDtoImpl;

  factory _ParsedMatchedProductDto.fromJson(Map<String, dynamic> json) =
      _$ParsedMatchedProductDtoImpl.fromJson;

  @override
  int get barcode;
  @override
  @JsonKey(name: 'productName')
  String get productName;
  @override
  String get manufacturer;
  @override
  double get confidence;

  /// Create a copy of ParsedMatchedProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedMatchedProductDtoImplCopyWith<_$ParsedMatchedProductDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParsedItemDto _$ParsedItemDtoFromJson(Map<String, dynamic> json) {
  return _ParsedItemDto.fromJson(json);
}

/// @nodoc
mixin _$ParsedItemDto {
  String get rawText => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get productSearchQuery => throw _privateConstructorUsedError;
  ParsedMatchedProductDto? get matchedProduct =>
      throw _privateConstructorUsedError;

  /// Serializes this ParsedItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedItemDtoCopyWith<ParsedItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedItemDtoCopyWith<$Res> {
  factory $ParsedItemDtoCopyWith(
          ParsedItemDto value, $Res Function(ParsedItemDto) then) =
      _$ParsedItemDtoCopyWithImpl<$Res, ParsedItemDto>;
  @useResult
  $Res call(
      {String rawText,
      double quantity,
      String unit,
      String productSearchQuery,
      ParsedMatchedProductDto? matchedProduct});

  $ParsedMatchedProductDtoCopyWith<$Res>? get matchedProduct;
}

/// @nodoc
class _$ParsedItemDtoCopyWithImpl<$Res, $Val extends ParsedItemDto>
    implements $ParsedItemDtoCopyWith<$Res> {
  _$ParsedItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = null,
    Object? quantity = null,
    Object? unit = null,
    Object? productSearchQuery = null,
    Object? matchedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      rawText: null == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      productSearchQuery: null == productSearchQuery
          ? _value.productSearchQuery
          : productSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      matchedProduct: freezed == matchedProduct
          ? _value.matchedProduct
          : matchedProduct // ignore: cast_nullable_to_non_nullable
              as ParsedMatchedProductDto?,
    ) as $Val);
  }

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedMatchedProductDtoCopyWith<$Res>? get matchedProduct {
    if (_value.matchedProduct == null) {
      return null;
    }

    return $ParsedMatchedProductDtoCopyWith<$Res>(_value.matchedProduct!,
        (value) {
      return _then(_value.copyWith(matchedProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedItemDtoImplCopyWith<$Res>
    implements $ParsedItemDtoCopyWith<$Res> {
  factory _$$ParsedItemDtoImplCopyWith(
          _$ParsedItemDtoImpl value, $Res Function(_$ParsedItemDtoImpl) then) =
      __$$ParsedItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rawText,
      double quantity,
      String unit,
      String productSearchQuery,
      ParsedMatchedProductDto? matchedProduct});

  @override
  $ParsedMatchedProductDtoCopyWith<$Res>? get matchedProduct;
}

/// @nodoc
class __$$ParsedItemDtoImplCopyWithImpl<$Res>
    extends _$ParsedItemDtoCopyWithImpl<$Res, _$ParsedItemDtoImpl>
    implements _$$ParsedItemDtoImplCopyWith<$Res> {
  __$$ParsedItemDtoImplCopyWithImpl(
      _$ParsedItemDtoImpl _value, $Res Function(_$ParsedItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = null,
    Object? quantity = null,
    Object? unit = null,
    Object? productSearchQuery = null,
    Object? matchedProduct = freezed,
  }) {
    return _then(_$ParsedItemDtoImpl(
      rawText: null == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      productSearchQuery: null == productSearchQuery
          ? _value.productSearchQuery
          : productSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      matchedProduct: freezed == matchedProduct
          ? _value.matchedProduct
          : matchedProduct // ignore: cast_nullable_to_non_nullable
              as ParsedMatchedProductDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedItemDtoImpl implements _ParsedItemDto {
  const _$ParsedItemDtoImpl(
      {required this.rawText,
      required this.quantity,
      required this.unit,
      required this.productSearchQuery,
      this.matchedProduct = null});

  factory _$ParsedItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParsedItemDtoImplFromJson(json);

  @override
  final String rawText;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final String productSearchQuery;
  @override
  @JsonKey()
  final ParsedMatchedProductDto? matchedProduct;

  @override
  String toString() {
    return 'ParsedItemDto(rawText: $rawText, quantity: $quantity, unit: $unit, productSearchQuery: $productSearchQuery, matchedProduct: $matchedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedItemDtoImpl &&
            (identical(other.rawText, rawText) || other.rawText == rawText) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.productSearchQuery, productSearchQuery) ||
                other.productSearchQuery == productSearchQuery) &&
            (identical(other.matchedProduct, matchedProduct) ||
                other.matchedProduct == matchedProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, rawText, quantity, unit, productSearchQuery, matchedProduct);

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedItemDtoImplCopyWith<_$ParsedItemDtoImpl> get copyWith =>
      __$$ParsedItemDtoImplCopyWithImpl<_$ParsedItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ParsedItemDto implements ParsedItemDto {
  const factory _ParsedItemDto(
      {required final String rawText,
      required final double quantity,
      required final String unit,
      required final String productSearchQuery,
      final ParsedMatchedProductDto? matchedProduct}) = _$ParsedItemDtoImpl;

  factory _ParsedItemDto.fromJson(Map<String, dynamic> json) =
      _$ParsedItemDtoImpl.fromJson;

  @override
  String get rawText;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  String get productSearchQuery;
  @override
  ParsedMatchedProductDto? get matchedProduct;

  /// Create a copy of ParsedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedItemDtoImplCopyWith<_$ParsedItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
