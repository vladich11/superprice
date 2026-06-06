// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartItemRequestDto _$CartItemRequestDtoFromJson(Map<String, dynamic> json) {
  return _CartItemRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CartItemRequestDto {
  int get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName')
  String get productName => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this CartItemRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemRequestDtoCopyWith<CartItemRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemRequestDtoCopyWith<$Res> {
  factory $CartItemRequestDtoCopyWith(
          CartItemRequestDto value, $Res Function(CartItemRequestDto) then) =
      _$CartItemRequestDtoCopyWithImpl<$Res, CartItemRequestDto>;
  @useResult
  $Res call(
      {int barcode,
      @JsonKey(name: 'productName') String productName,
      double quantity,
      String unit});
}

/// @nodoc
class _$CartItemRequestDtoCopyWithImpl<$Res, $Val extends CartItemRequestDto>
    implements $CartItemRequestDtoCopyWith<$Res> {
  _$CartItemRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unit = null,
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemRequestDtoImplCopyWith<$Res>
    implements $CartItemRequestDtoCopyWith<$Res> {
  factory _$$CartItemRequestDtoImplCopyWith(_$CartItemRequestDtoImpl value,
          $Res Function(_$CartItemRequestDtoImpl) then) =
      __$$CartItemRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int barcode,
      @JsonKey(name: 'productName') String productName,
      double quantity,
      String unit});
}

/// @nodoc
class __$$CartItemRequestDtoImplCopyWithImpl<$Res>
    extends _$CartItemRequestDtoCopyWithImpl<$Res, _$CartItemRequestDtoImpl>
    implements _$$CartItemRequestDtoImplCopyWith<$Res> {
  __$$CartItemRequestDtoImplCopyWithImpl(_$CartItemRequestDtoImpl _value,
      $Res Function(_$CartItemRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unit = null,
  }) {
    return _then(_$CartItemRequestDtoImpl(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemRequestDtoImpl implements _CartItemRequestDto {
  const _$CartItemRequestDtoImpl(
      {required this.barcode,
      @JsonKey(name: 'productName') required this.productName,
      required this.quantity,
      required this.unit});

  factory _$CartItemRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemRequestDtoImplFromJson(json);

  @override
  final int barcode;
  @override
  @JsonKey(name: 'productName')
  final String productName;
  @override
  final double quantity;
  @override
  final String unit;

  @override
  String toString() {
    return 'CartItemRequestDto(barcode: $barcode, productName: $productName, quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemRequestDtoImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, barcode, productName, quantity, unit);

  /// Create a copy of CartItemRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemRequestDtoImplCopyWith<_$CartItemRequestDtoImpl> get copyWith =>
      __$$CartItemRequestDtoImplCopyWithImpl<_$CartItemRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _CartItemRequestDto implements CartItemRequestDto {
  const factory _CartItemRequestDto(
      {required final int barcode,
      @JsonKey(name: 'productName') required final String productName,
      required final double quantity,
      required final String unit}) = _$CartItemRequestDtoImpl;

  factory _CartItemRequestDto.fromJson(Map<String, dynamic> json) =
      _$CartItemRequestDtoImpl.fromJson;

  @override
  int get barcode;
  @override
  @JsonKey(name: 'productName')
  String get productName;
  @override
  double get quantity;
  @override
  String get unit;

  /// Create a copy of CartItemRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemRequestDtoImplCopyWith<_$CartItemRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
