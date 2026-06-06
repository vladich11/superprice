// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  String get id => throw _privateConstructorUsedError;
  int get productBarcode => throw _privateConstructorUsedError;
  int get internalBarcode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get manufacturerOrImporterName => throw _privateConstructorUsedError;
  String get countryOfOrigin => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get productQuantityMeasure => throw _privateConstructorUsedError;
  int get productQuantity => throw _privateConstructorUsedError;
  String get unitOfMeasure => throw _privateConstructorUsedError;
  int get itemsPerPackage => throw _privateConstructorUsedError;
  int get isWeighted => throw _privateConstructorUsedError;
  int get itemType => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {String id,
      int productBarcode,
      int internalBarcode,
      String productName,
      String manufacturerOrImporterName,
      String countryOfOrigin,
      String productDescription,
      String productQuantityMeasure,
      int productQuantity,
      String unitOfMeasure,
      int itemsPerPackage,
      int isWeighted,
      int itemType,
      DateTime? lastUpdated});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productBarcode = null,
    Object? internalBarcode = null,
    Object? productName = null,
    Object? manufacturerOrImporterName = null,
    Object? countryOfOrigin = null,
    Object? productDescription = null,
    Object? productQuantityMeasure = null,
    Object? productQuantity = null,
    Object? unitOfMeasure = null,
    Object? itemsPerPackage = null,
    Object? isWeighted = null,
    Object? itemType = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      internalBarcode: null == internalBarcode
          ? _value.internalBarcode
          : internalBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturerOrImporterName: null == manufacturerOrImporterName
          ? _value.manufacturerOrImporterName
          : manufacturerOrImporterName // ignore: cast_nullable_to_non_nullable
              as String,
      countryOfOrigin: null == countryOfOrigin
          ? _value.countryOfOrigin
          : countryOfOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantityMeasure: null == productQuantityMeasure
          ? _value.productQuantityMeasure
          : productQuantityMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      itemsPerPackage: null == itemsPerPackage
          ? _value.itemsPerPackage
          : itemsPerPackage // ignore: cast_nullable_to_non_nullable
              as int,
      isWeighted: null == isWeighted
          ? _value.isWeighted
          : isWeighted // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int productBarcode,
      int internalBarcode,
      String productName,
      String manufacturerOrImporterName,
      String countryOfOrigin,
      String productDescription,
      String productQuantityMeasure,
      int productQuantity,
      String unitOfMeasure,
      int itemsPerPackage,
      int isWeighted,
      int itemType,
      DateTime? lastUpdated});
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productBarcode = null,
    Object? internalBarcode = null,
    Object? productName = null,
    Object? manufacturerOrImporterName = null,
    Object? countryOfOrigin = null,
    Object? productDescription = null,
    Object? productQuantityMeasure = null,
    Object? productQuantity = null,
    Object? unitOfMeasure = null,
    Object? itemsPerPackage = null,
    Object? isWeighted = null,
    Object? itemType = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$ProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      internalBarcode: null == internalBarcode
          ? _value.internalBarcode
          : internalBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturerOrImporterName: null == manufacturerOrImporterName
          ? _value.manufacturerOrImporterName
          : manufacturerOrImporterName // ignore: cast_nullable_to_non_nullable
              as String,
      countryOfOrigin: null == countryOfOrigin
          ? _value.countryOfOrigin
          : countryOfOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantityMeasure: null == productQuantityMeasure
          ? _value.productQuantityMeasure
          : productQuantityMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      itemsPerPackage: null == itemsPerPackage
          ? _value.itemsPerPackage
          : itemsPerPackage // ignore: cast_nullable_to_non_nullable
              as int,
      isWeighted: null == isWeighted
          ? _value.isWeighted
          : isWeighted // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl implements _ProductDto {
  const _$ProductDtoImpl(
      {required this.id,
      required this.productBarcode,
      required this.internalBarcode,
      required this.productName,
      required this.manufacturerOrImporterName,
      required this.countryOfOrigin,
      required this.productDescription,
      required this.productQuantityMeasure,
      required this.productQuantity,
      required this.unitOfMeasure,
      required this.itemsPerPackage,
      required this.isWeighted,
      required this.itemType,
      this.lastUpdated});

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int productBarcode;
  @override
  final int internalBarcode;
  @override
  final String productName;
  @override
  final String manufacturerOrImporterName;
  @override
  final String countryOfOrigin;
  @override
  final String productDescription;
  @override
  final String productQuantityMeasure;
  @override
  final int productQuantity;
  @override
  final String unitOfMeasure;
  @override
  final int itemsPerPackage;
  @override
  final int isWeighted;
  @override
  final int itemType;
  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'ProductDto(id: $id, productBarcode: $productBarcode, internalBarcode: $internalBarcode, productName: $productName, manufacturerOrImporterName: $manufacturerOrImporterName, countryOfOrigin: $countryOfOrigin, productDescription: $productDescription, productQuantityMeasure: $productQuantityMeasure, productQuantity: $productQuantity, unitOfMeasure: $unitOfMeasure, itemsPerPackage: $itemsPerPackage, isWeighted: $isWeighted, itemType: $itemType, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.internalBarcode, internalBarcode) ||
                other.internalBarcode == internalBarcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.manufacturerOrImporterName,
                    manufacturerOrImporterName) ||
                other.manufacturerOrImporterName ==
                    manufacturerOrImporterName) &&
            (identical(other.countryOfOrigin, countryOfOrigin) ||
                other.countryOfOrigin == countryOfOrigin) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productQuantityMeasure, productQuantityMeasure) ||
                other.productQuantityMeasure == productQuantityMeasure) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure) &&
            (identical(other.itemsPerPackage, itemsPerPackage) ||
                other.itemsPerPackage == itemsPerPackage) &&
            (identical(other.isWeighted, isWeighted) ||
                other.isWeighted == isWeighted) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productBarcode,
      internalBarcode,
      productName,
      manufacturerOrImporterName,
      countryOfOrigin,
      productDescription,
      productQuantityMeasure,
      productQuantity,
      unitOfMeasure,
      itemsPerPackage,
      isWeighted,
      itemType,
      lastUpdated);

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto implements ProductDto {
  const factory _ProductDto(
      {required final String id,
      required final int productBarcode,
      required final int internalBarcode,
      required final String productName,
      required final String manufacturerOrImporterName,
      required final String countryOfOrigin,
      required final String productDescription,
      required final String productQuantityMeasure,
      required final int productQuantity,
      required final String unitOfMeasure,
      required final int itemsPerPackage,
      required final int isWeighted,
      required final int itemType,
      final DateTime? lastUpdated}) = _$ProductDtoImpl;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get productBarcode;
  @override
  int get internalBarcode;
  @override
  String get productName;
  @override
  String get manufacturerOrImporterName;
  @override
  String get countryOfOrigin;
  @override
  String get productDescription;
  @override
  String get productQuantityMeasure;
  @override
  int get productQuantity;
  @override
  String get unitOfMeasure;
  @override
  int get itemsPerPackage;
  @override
  int get isWeighted;
  @override
  int get itemType;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSearchPageDto _$ProductSearchPageDtoFromJson(Map<String, dynamic> json) {
  return _ProductSearchPageDto.fromJson(json);
}

/// @nodoc
mixin _$ProductSearchPageDto {
  List<ProductDto> get items => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more')
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_offset')
  int? get nextOffset => throw _privateConstructorUsedError;

  /// Serializes this ProductSearchPageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSearchPageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSearchPageDtoCopyWith<ProductSearchPageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchPageDtoCopyWith<$Res> {
  factory $ProductSearchPageDtoCopyWith(ProductSearchPageDto value,
          $Res Function(ProductSearchPageDto) then) =
      _$ProductSearchPageDtoCopyWithImpl<$Res, ProductSearchPageDto>;
  @useResult
  $Res call(
      {List<ProductDto> items,
      int limit,
      int offset,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_offset') int? nextOffset});
}

/// @nodoc
class _$ProductSearchPageDtoCopyWithImpl<$Res,
        $Val extends ProductSearchPageDto>
    implements $ProductSearchPageDtoCopyWith<$Res> {
  _$ProductSearchPageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSearchPageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? limit = null,
    Object? offset = null,
    Object? hasMore = null,
    Object? nextOffset = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSearchPageDtoImplCopyWith<$Res>
    implements $ProductSearchPageDtoCopyWith<$Res> {
  factory _$$ProductSearchPageDtoImplCopyWith(_$ProductSearchPageDtoImpl value,
          $Res Function(_$ProductSearchPageDtoImpl) then) =
      __$$ProductSearchPageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductDto> items,
      int limit,
      int offset,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_offset') int? nextOffset});
}

/// @nodoc
class __$$ProductSearchPageDtoImplCopyWithImpl<$Res>
    extends _$ProductSearchPageDtoCopyWithImpl<$Res, _$ProductSearchPageDtoImpl>
    implements _$$ProductSearchPageDtoImplCopyWith<$Res> {
  __$$ProductSearchPageDtoImplCopyWithImpl(_$ProductSearchPageDtoImpl _value,
      $Res Function(_$ProductSearchPageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSearchPageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? limit = null,
    Object? offset = null,
    Object? hasMore = null,
    Object? nextOffset = freezed,
  }) {
    return _then(_$ProductSearchPageDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSearchPageDtoImpl implements _ProductSearchPageDto {
  const _$ProductSearchPageDtoImpl(
      {required final List<ProductDto> items,
      required this.limit,
      required this.offset,
      @JsonKey(name: 'has_more') required this.hasMore,
      @JsonKey(name: 'next_offset') this.nextOffset})
      : _items = items;

  factory _$ProductSearchPageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSearchPageDtoImplFromJson(json);

  final List<ProductDto> _items;
  @override
  List<ProductDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int limit;
  @override
  final int offset;
  @override
  @JsonKey(name: 'has_more')
  final bool hasMore;
  @override
  @JsonKey(name: 'next_offset')
  final int? nextOffset;

  @override
  String toString() {
    return 'ProductSearchPageDto(items: $items, limit: $limit, offset: $offset, hasMore: $hasMore, nextOffset: $nextOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchPageDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      limit,
      offset,
      hasMore,
      nextOffset);

  /// Create a copy of ProductSearchPageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchPageDtoImplCopyWith<_$ProductSearchPageDtoImpl>
      get copyWith =>
          __$$ProductSearchPageDtoImplCopyWithImpl<_$ProductSearchPageDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSearchPageDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductSearchPageDto implements ProductSearchPageDto {
  const factory _ProductSearchPageDto(
          {required final List<ProductDto> items,
          required final int limit,
          required final int offset,
          @JsonKey(name: 'has_more') required final bool hasMore,
          @JsonKey(name: 'next_offset') final int? nextOffset}) =
      _$ProductSearchPageDtoImpl;

  factory _ProductSearchPageDto.fromJson(Map<String, dynamic> json) =
      _$ProductSearchPageDtoImpl.fromJson;

  @override
  List<ProductDto> get items;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(name: 'has_more')
  bool get hasMore;
  @override
  @JsonKey(name: 'next_offset')
  int? get nextOffset;

  /// Create a copy of ProductSearchPageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSearchPageDtoImplCopyWith<_$ProductSearchPageDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductBarcodeResponseDto _$ProductBarcodeResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductBarcodeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductBarcodeResponseDto {
  ProductDto get product => throw _privateConstructorUsedError;

  /// Serializes this ProductBarcodeResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductBarcodeResponseDtoCopyWith<ProductBarcodeResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBarcodeResponseDtoCopyWith<$Res> {
  factory $ProductBarcodeResponseDtoCopyWith(ProductBarcodeResponseDto value,
          $Res Function(ProductBarcodeResponseDto) then) =
      _$ProductBarcodeResponseDtoCopyWithImpl<$Res, ProductBarcodeResponseDto>;
  @useResult
  $Res call({ProductDto product});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductBarcodeResponseDtoCopyWithImpl<$Res,
        $Val extends ProductBarcodeResponseDto>
    implements $ProductBarcodeResponseDtoCopyWith<$Res> {
  _$ProductBarcodeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ) as $Val);
  }

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductBarcodeResponseDtoImplCopyWith<$Res>
    implements $ProductBarcodeResponseDtoCopyWith<$Res> {
  factory _$$ProductBarcodeResponseDtoImplCopyWith(
          _$ProductBarcodeResponseDtoImpl value,
          $Res Function(_$ProductBarcodeResponseDtoImpl) then) =
      __$$ProductBarcodeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDto product});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductBarcodeResponseDtoImplCopyWithImpl<$Res>
    extends _$ProductBarcodeResponseDtoCopyWithImpl<$Res,
        _$ProductBarcodeResponseDtoImpl>
    implements _$$ProductBarcodeResponseDtoImplCopyWith<$Res> {
  __$$ProductBarcodeResponseDtoImplCopyWithImpl(
      _$ProductBarcodeResponseDtoImpl _value,
      $Res Function(_$ProductBarcodeResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductBarcodeResponseDtoImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBarcodeResponseDtoImpl implements _ProductBarcodeResponseDto {
  const _$ProductBarcodeResponseDtoImpl({required this.product});

  factory _$ProductBarcodeResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBarcodeResponseDtoImplFromJson(json);

  @override
  final ProductDto product;

  @override
  String toString() {
    return 'ProductBarcodeResponseDto(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBarcodeResponseDtoImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBarcodeResponseDtoImplCopyWith<_$ProductBarcodeResponseDtoImpl>
      get copyWith => __$$ProductBarcodeResponseDtoImplCopyWithImpl<
          _$ProductBarcodeResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBarcodeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductBarcodeResponseDto implements ProductBarcodeResponseDto {
  const factory _ProductBarcodeResponseDto(
      {required final ProductDto product}) = _$ProductBarcodeResponseDtoImpl;

  factory _ProductBarcodeResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductBarcodeResponseDtoImpl.fromJson;

  @override
  ProductDto get product;

  /// Create a copy of ProductBarcodeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductBarcodeResponseDtoImplCopyWith<_$ProductBarcodeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
