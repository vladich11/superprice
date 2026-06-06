// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionItemDto _$PromotionItemDtoFromJson(Map<String, dynamic> json) {
  return _PromotionItemDto.fromJson(json);
}

/// @nodoc
mixin _$PromotionItemDto {
  @JsonKey(name: 'item_code')
  String get itemCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_barcode')
  int get productBarcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_type')
  int get rewardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_quantity')
  int get minQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_quantity')
  int get maxQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_rate')
  double get discountRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  double get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_price')
  double get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_description')
  String get itemDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_type')
  int get itemType => throw _privateConstructorUsedError;

  /// Serializes this PromotionItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionItemDtoCopyWith<PromotionItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionItemDtoCopyWith<$Res> {
  factory $PromotionItemDtoCopyWith(
          PromotionItemDto value, $Res Function(PromotionItemDto) then) =
      _$PromotionItemDtoCopyWithImpl<$Res, PromotionItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'product_barcode') int productBarcode,
      @JsonKey(name: 'reward_type') int rewardType,
      @JsonKey(name: 'min_quantity') int minQuantity,
      @JsonKey(name: 'max_quantity') int maxQuantity,
      @JsonKey(name: 'discount_rate') double discountRate,
      @JsonKey(name: 'discounted_price') double discountedPrice,
      @JsonKey(name: 'original_price') double originalPrice,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'item_description') String itemDescription,
      @JsonKey(name: 'item_type') int itemType});
}

/// @nodoc
class _$PromotionItemDtoCopyWithImpl<$Res, $Val extends PromotionItemDto>
    implements $PromotionItemDtoCopyWith<$Res> {
  _$PromotionItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? productBarcode = null,
    Object? rewardType = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? discountRate = null,
    Object? discountedPrice = null,
    Object? originalPrice = null,
    Object? itemName = null,
    Object? itemDescription = null,
    Object? itemType = null,
  }) {
    return _then(_value.copyWith(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int,
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double,
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: null == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionItemDtoImplCopyWith<$Res>
    implements $PromotionItemDtoCopyWith<$Res> {
  factory _$$PromotionItemDtoImplCopyWith(_$PromotionItemDtoImpl value,
          $Res Function(_$PromotionItemDtoImpl) then) =
      __$$PromotionItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'item_code') String itemCode,
      @JsonKey(name: 'product_barcode') int productBarcode,
      @JsonKey(name: 'reward_type') int rewardType,
      @JsonKey(name: 'min_quantity') int minQuantity,
      @JsonKey(name: 'max_quantity') int maxQuantity,
      @JsonKey(name: 'discount_rate') double discountRate,
      @JsonKey(name: 'discounted_price') double discountedPrice,
      @JsonKey(name: 'original_price') double originalPrice,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'item_description') String itemDescription,
      @JsonKey(name: 'item_type') int itemType});
}

/// @nodoc
class __$$PromotionItemDtoImplCopyWithImpl<$Res>
    extends _$PromotionItemDtoCopyWithImpl<$Res, _$PromotionItemDtoImpl>
    implements _$$PromotionItemDtoImplCopyWith<$Res> {
  __$$PromotionItemDtoImplCopyWithImpl(_$PromotionItemDtoImpl _value,
      $Res Function(_$PromotionItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? productBarcode = null,
    Object? rewardType = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? discountRate = null,
    Object? discountedPrice = null,
    Object? originalPrice = null,
    Object? itemName = null,
    Object? itemDescription = null,
    Object? itemType = null,
  }) {
    return _then(_$PromotionItemDtoImpl(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int,
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double,
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: null == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionItemDtoImpl implements _PromotionItemDto {
  const _$PromotionItemDtoImpl(
      {@JsonKey(name: 'item_code') required this.itemCode,
      @JsonKey(name: 'product_barcode') required this.productBarcode,
      @JsonKey(name: 'reward_type') required this.rewardType,
      @JsonKey(name: 'min_quantity') required this.minQuantity,
      @JsonKey(name: 'max_quantity') required this.maxQuantity,
      @JsonKey(name: 'discount_rate') required this.discountRate,
      @JsonKey(name: 'discounted_price') required this.discountedPrice,
      @JsonKey(name: 'original_price') required this.originalPrice,
      @JsonKey(name: 'item_name') required this.itemName,
      @JsonKey(name: 'item_description') required this.itemDescription,
      @JsonKey(name: 'item_type') required this.itemType});

  factory _$PromotionItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionItemDtoImplFromJson(json);

  @override
  @JsonKey(name: 'item_code')
  final String itemCode;
  @override
  @JsonKey(name: 'product_barcode')
  final int productBarcode;
  @override
  @JsonKey(name: 'reward_type')
  final int rewardType;
  @override
  @JsonKey(name: 'min_quantity')
  final int minQuantity;
  @override
  @JsonKey(name: 'max_quantity')
  final int maxQuantity;
  @override
  @JsonKey(name: 'discount_rate')
  final double discountRate;
  @override
  @JsonKey(name: 'discounted_price')
  final double discountedPrice;
  @override
  @JsonKey(name: 'original_price')
  final double originalPrice;
  @override
  @JsonKey(name: 'item_name')
  final String itemName;
  @override
  @JsonKey(name: 'item_description')
  final String itemDescription;
  @override
  @JsonKey(name: 'item_type')
  final int itemType;

  @override
  String toString() {
    return 'PromotionItemDto(itemCode: $itemCode, productBarcode: $productBarcode, rewardType: $rewardType, minQuantity: $minQuantity, maxQuantity: $maxQuantity, discountRate: $discountRate, discountedPrice: $discountedPrice, originalPrice: $originalPrice, itemName: $itemName, itemDescription: $itemDescription, itemType: $itemType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionItemDtoImpl &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.rewardType, rewardType) ||
                other.rewardType == rewardType) &&
            (identical(other.minQuantity, minQuantity) ||
                other.minQuantity == minQuantity) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemDescription, itemDescription) ||
                other.itemDescription == itemDescription) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemCode,
      productBarcode,
      rewardType,
      minQuantity,
      maxQuantity,
      discountRate,
      discountedPrice,
      originalPrice,
      itemName,
      itemDescription,
      itemType);

  /// Create a copy of PromotionItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionItemDtoImplCopyWith<_$PromotionItemDtoImpl> get copyWith =>
      __$$PromotionItemDtoImplCopyWithImpl<_$PromotionItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionItemDtoImplToJson(
      this,
    );
  }
}

abstract class _PromotionItemDto implements PromotionItemDto {
  const factory _PromotionItemDto(
      {@JsonKey(name: 'item_code') required final String itemCode,
      @JsonKey(name: 'product_barcode') required final int productBarcode,
      @JsonKey(name: 'reward_type') required final int rewardType,
      @JsonKey(name: 'min_quantity') required final int minQuantity,
      @JsonKey(name: 'max_quantity') required final int maxQuantity,
      @JsonKey(name: 'discount_rate') required final double discountRate,
      @JsonKey(name: 'discounted_price') required final double discountedPrice,
      @JsonKey(name: 'original_price') required final double originalPrice,
      @JsonKey(name: 'item_name') required final String itemName,
      @JsonKey(name: 'item_description') required final String itemDescription,
      @JsonKey(name: 'item_type')
      required final int itemType}) = _$PromotionItemDtoImpl;

  factory _PromotionItemDto.fromJson(Map<String, dynamic> json) =
      _$PromotionItemDtoImpl.fromJson;

  @override
  @JsonKey(name: 'item_code')
  String get itemCode;
  @override
  @JsonKey(name: 'product_barcode')
  int get productBarcode;
  @override
  @JsonKey(name: 'reward_type')
  int get rewardType;
  @override
  @JsonKey(name: 'min_quantity')
  int get minQuantity;
  @override
  @JsonKey(name: 'max_quantity')
  int get maxQuantity;
  @override
  @JsonKey(name: 'discount_rate')
  double get discountRate;
  @override
  @JsonKey(name: 'discounted_price')
  double get discountedPrice;
  @override
  @JsonKey(name: 'original_price')
  double get originalPrice;
  @override
  @JsonKey(name: 'item_name')
  String get itemName;
  @override
  @JsonKey(name: 'item_description')
  String get itemDescription;
  @override
  @JsonKey(name: 'item_type')
  int get itemType;

  /// Create a copy of PromotionItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionItemDtoImplCopyWith<_$PromotionItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionGroupDto _$PromotionGroupDtoFromJson(Map<String, dynamic> json) {
  return _PromotionGroupDto.fromJson(json);
}

/// @nodoc
mixin _$PromotionGroupDto {
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_name')
  String get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_purchase_amount')
  double get minPurchaseAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  int get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'promotion_items')
  List<PromotionItemDto> get promotionItems =>
      throw _privateConstructorUsedError;

  /// Serializes this PromotionGroupDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionGroupDtoCopyWith<PromotionGroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionGroupDtoCopyWith<$Res> {
  factory $PromotionGroupDtoCopyWith(
          PromotionGroupDto value, $Res Function(PromotionGroupDto) then) =
      _$PromotionGroupDtoCopyWithImpl<$Res, PromotionGroupDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'min_purchase_amount') double minPurchaseAmount,
      @JsonKey(name: 'discount_type') int discountType,
      @JsonKey(name: 'promotion_items') List<PromotionItemDto> promotionItems});
}

/// @nodoc
class _$PromotionGroupDtoCopyWithImpl<$Res, $Val extends PromotionGroupDto>
    implements $PromotionGroupDtoCopyWith<$Res> {
  _$PromotionGroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? groupName = null,
    Object? minPurchaseAmount = null,
    Object? discountType = null,
    Object? promotionItems = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      minPurchaseAmount: null == minPurchaseAmount
          ? _value.minPurchaseAmount
          : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      promotionItems: null == promotionItems
          ? _value.promotionItems
          : promotionItems // ignore: cast_nullable_to_non_nullable
              as List<PromotionItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionGroupDtoImplCopyWith<$Res>
    implements $PromotionGroupDtoCopyWith<$Res> {
  factory _$$PromotionGroupDtoImplCopyWith(_$PromotionGroupDtoImpl value,
          $Res Function(_$PromotionGroupDtoImpl) then) =
      __$$PromotionGroupDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'min_purchase_amount') double minPurchaseAmount,
      @JsonKey(name: 'discount_type') int discountType,
      @JsonKey(name: 'promotion_items') List<PromotionItemDto> promotionItems});
}

/// @nodoc
class __$$PromotionGroupDtoImplCopyWithImpl<$Res>
    extends _$PromotionGroupDtoCopyWithImpl<$Res, _$PromotionGroupDtoImpl>
    implements _$$PromotionGroupDtoImplCopyWith<$Res> {
  __$$PromotionGroupDtoImplCopyWithImpl(_$PromotionGroupDtoImpl _value,
      $Res Function(_$PromotionGroupDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? groupName = null,
    Object? minPurchaseAmount = null,
    Object? discountType = null,
    Object? promotionItems = null,
  }) {
    return _then(_$PromotionGroupDtoImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      minPurchaseAmount: null == minPurchaseAmount
          ? _value.minPurchaseAmount
          : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      promotionItems: null == promotionItems
          ? _value._promotionItems
          : promotionItems // ignore: cast_nullable_to_non_nullable
              as List<PromotionItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionGroupDtoImpl implements _PromotionGroupDto {
  const _$PromotionGroupDtoImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'group_name') required this.groupName,
      @JsonKey(name: 'min_purchase_amount') required this.minPurchaseAmount,
      @JsonKey(name: 'discount_type') required this.discountType,
      @JsonKey(name: 'promotion_items')
      required final List<PromotionItemDto> promotionItems})
      : _promotionItems = promotionItems;

  factory _$PromotionGroupDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionGroupDtoImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'group_name')
  final String groupName;
  @override
  @JsonKey(name: 'min_purchase_amount')
  final double minPurchaseAmount;
  @override
  @JsonKey(name: 'discount_type')
  final int discountType;
  final List<PromotionItemDto> _promotionItems;
  @override
  @JsonKey(name: 'promotion_items')
  List<PromotionItemDto> get promotionItems {
    if (_promotionItems is EqualUnmodifiableListView) return _promotionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotionItems);
  }

  @override
  String toString() {
    return 'PromotionGroupDto(groupId: $groupId, groupName: $groupName, minPurchaseAmount: $minPurchaseAmount, discountType: $discountType, promotionItems: $promotionItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionGroupDtoImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.minPurchaseAmount, minPurchaseAmount) ||
                other.minPurchaseAmount == minPurchaseAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            const DeepCollectionEquality()
                .equals(other._promotionItems, _promotionItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      groupName,
      minPurchaseAmount,
      discountType,
      const DeepCollectionEquality().hash(_promotionItems));

  /// Create a copy of PromotionGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionGroupDtoImplCopyWith<_$PromotionGroupDtoImpl> get copyWith =>
      __$$PromotionGroupDtoImplCopyWithImpl<_$PromotionGroupDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionGroupDtoImplToJson(
      this,
    );
  }
}

abstract class _PromotionGroupDto implements PromotionGroupDto {
  const factory _PromotionGroupDto(
          {@JsonKey(name: 'group_id') required final String groupId,
          @JsonKey(name: 'group_name') required final String groupName,
          @JsonKey(name: 'min_purchase_amount')
          required final double minPurchaseAmount,
          @JsonKey(name: 'discount_type') required final int discountType,
          @JsonKey(name: 'promotion_items')
          required final List<PromotionItemDto> promotionItems}) =
      _$PromotionGroupDtoImpl;

  factory _PromotionGroupDto.fromJson(Map<String, dynamic> json) =
      _$PromotionGroupDtoImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'group_name')
  String get groupName;
  @override
  @JsonKey(name: 'min_purchase_amount')
  double get minPurchaseAmount;
  @override
  @JsonKey(name: 'discount_type')
  int get discountType;
  @override
  @JsonKey(name: 'promotion_items')
  List<PromotionItemDto> get promotionItems;

  /// Create a copy of PromotionGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionGroupDtoImplCopyWith<_$PromotionGroupDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionDto _$PromotionDtoFromJson(Map<String, dynamic> json) {
  return _PromotionDto.fromJson(json);
}

/// @nodoc
mixin _$PromotionDto {
  @JsonKey(name: 'promotion_id')
  int get promotionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'promotion_description')
  String get promotionDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'promotion_start_datetime')
  DateTime get promotionStartDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'promotion_end_datetime')
  DateTime get promotionEndDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_rate')
  double get discountRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_purchase_amount')
  double get minimumPurchaseAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_promo_text')
  String get additionalPromoText => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_type')
  int get rewardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  int get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'promotion_groups')
  List<PromotionGroupDto> get promotionGroups =>
      throw _privateConstructorUsedError;

  /// Serializes this PromotionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionDtoCopyWith<PromotionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDtoCopyWith<$Res> {
  factory $PromotionDtoCopyWith(
          PromotionDto value, $Res Function(PromotionDto) then) =
      _$PromotionDtoCopyWithImpl<$Res, PromotionDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promotion_id') int promotionId,
      @JsonKey(name: 'promotion_description') String promotionDescription,
      @JsonKey(name: 'promotion_start_datetime')
      DateTime promotionStartDatetime,
      @JsonKey(name: 'promotion_end_datetime') DateTime promotionEndDatetime,
      @JsonKey(name: 'discount_rate') double discountRate,
      @JsonKey(name: 'minimum_purchase_amount') double minimumPurchaseAmount,
      @JsonKey(name: 'additional_promo_text') String additionalPromoText,
      @JsonKey(name: 'reward_type') int rewardType,
      @JsonKey(name: 'discount_type') int discountType,
      @JsonKey(name: 'promotion_groups')
      List<PromotionGroupDto> promotionGroups});
}

/// @nodoc
class _$PromotionDtoCopyWithImpl<$Res, $Val extends PromotionDto>
    implements $PromotionDtoCopyWith<$Res> {
  _$PromotionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionId = null,
    Object? promotionDescription = null,
    Object? promotionStartDatetime = null,
    Object? promotionEndDatetime = null,
    Object? discountRate = null,
    Object? minimumPurchaseAmount = null,
    Object? additionalPromoText = null,
    Object? rewardType = null,
    Object? discountType = null,
    Object? promotionGroups = null,
  }) {
    return _then(_value.copyWith(
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionDescription: null == promotionDescription
          ? _value.promotionDescription
          : promotionDescription // ignore: cast_nullable_to_non_nullable
              as String,
      promotionStartDatetime: null == promotionStartDatetime
          ? _value.promotionStartDatetime
          : promotionStartDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotionEndDatetime: null == promotionEndDatetime
          ? _value.promotionEndDatetime
          : promotionEndDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double,
      minimumPurchaseAmount: null == minimumPurchaseAmount
          ? _value.minimumPurchaseAmount
          : minimumPurchaseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      additionalPromoText: null == additionalPromoText
          ? _value.additionalPromoText
          : additionalPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      promotionGroups: null == promotionGroups
          ? _value.promotionGroups
          : promotionGroups // ignore: cast_nullable_to_non_nullable
              as List<PromotionGroupDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionDtoImplCopyWith<$Res>
    implements $PromotionDtoCopyWith<$Res> {
  factory _$$PromotionDtoImplCopyWith(
          _$PromotionDtoImpl value, $Res Function(_$PromotionDtoImpl) then) =
      __$$PromotionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promotion_id') int promotionId,
      @JsonKey(name: 'promotion_description') String promotionDescription,
      @JsonKey(name: 'promotion_start_datetime')
      DateTime promotionStartDatetime,
      @JsonKey(name: 'promotion_end_datetime') DateTime promotionEndDatetime,
      @JsonKey(name: 'discount_rate') double discountRate,
      @JsonKey(name: 'minimum_purchase_amount') double minimumPurchaseAmount,
      @JsonKey(name: 'additional_promo_text') String additionalPromoText,
      @JsonKey(name: 'reward_type') int rewardType,
      @JsonKey(name: 'discount_type') int discountType,
      @JsonKey(name: 'promotion_groups')
      List<PromotionGroupDto> promotionGroups});
}

/// @nodoc
class __$$PromotionDtoImplCopyWithImpl<$Res>
    extends _$PromotionDtoCopyWithImpl<$Res, _$PromotionDtoImpl>
    implements _$$PromotionDtoImplCopyWith<$Res> {
  __$$PromotionDtoImplCopyWithImpl(
      _$PromotionDtoImpl _value, $Res Function(_$PromotionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionId = null,
    Object? promotionDescription = null,
    Object? promotionStartDatetime = null,
    Object? promotionEndDatetime = null,
    Object? discountRate = null,
    Object? minimumPurchaseAmount = null,
    Object? additionalPromoText = null,
    Object? rewardType = null,
    Object? discountType = null,
    Object? promotionGroups = null,
  }) {
    return _then(_$PromotionDtoImpl(
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionDescription: null == promotionDescription
          ? _value.promotionDescription
          : promotionDescription // ignore: cast_nullable_to_non_nullable
              as String,
      promotionStartDatetime: null == promotionStartDatetime
          ? _value.promotionStartDatetime
          : promotionStartDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotionEndDatetime: null == promotionEndDatetime
          ? _value.promotionEndDatetime
          : promotionEndDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double,
      minimumPurchaseAmount: null == minimumPurchaseAmount
          ? _value.minimumPurchaseAmount
          : minimumPurchaseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      additionalPromoText: null == additionalPromoText
          ? _value.additionalPromoText
          : additionalPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      promotionGroups: null == promotionGroups
          ? _value._promotionGroups
          : promotionGroups // ignore: cast_nullable_to_non_nullable
              as List<PromotionGroupDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionDtoImpl implements _PromotionDto {
  const _$PromotionDtoImpl(
      {@JsonKey(name: 'promotion_id') required this.promotionId,
      @JsonKey(name: 'promotion_description')
      required this.promotionDescription,
      @JsonKey(name: 'promotion_start_datetime')
      required this.promotionStartDatetime,
      @JsonKey(name: 'promotion_end_datetime')
      required this.promotionEndDatetime,
      @JsonKey(name: 'discount_rate') required this.discountRate,
      @JsonKey(name: 'minimum_purchase_amount')
      required this.minimumPurchaseAmount,
      @JsonKey(name: 'additional_promo_text') required this.additionalPromoText,
      @JsonKey(name: 'reward_type') required this.rewardType,
      @JsonKey(name: 'discount_type') required this.discountType,
      @JsonKey(name: 'promotion_groups')
      required final List<PromotionGroupDto> promotionGroups})
      : _promotionGroups = promotionGroups;

  factory _$PromotionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionDtoImplFromJson(json);

  @override
  @JsonKey(name: 'promotion_id')
  final int promotionId;
  @override
  @JsonKey(name: 'promotion_description')
  final String promotionDescription;
  @override
  @JsonKey(name: 'promotion_start_datetime')
  final DateTime promotionStartDatetime;
  @override
  @JsonKey(name: 'promotion_end_datetime')
  final DateTime promotionEndDatetime;
  @override
  @JsonKey(name: 'discount_rate')
  final double discountRate;
  @override
  @JsonKey(name: 'minimum_purchase_amount')
  final double minimumPurchaseAmount;
  @override
  @JsonKey(name: 'additional_promo_text')
  final String additionalPromoText;
  @override
  @JsonKey(name: 'reward_type')
  final int rewardType;
  @override
  @JsonKey(name: 'discount_type')
  final int discountType;
  final List<PromotionGroupDto> _promotionGroups;
  @override
  @JsonKey(name: 'promotion_groups')
  List<PromotionGroupDto> get promotionGroups {
    if (_promotionGroups is EqualUnmodifiableListView) return _promotionGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotionGroups);
  }

  @override
  String toString() {
    return 'PromotionDto(promotionId: $promotionId, promotionDescription: $promotionDescription, promotionStartDatetime: $promotionStartDatetime, promotionEndDatetime: $promotionEndDatetime, discountRate: $discountRate, minimumPurchaseAmount: $minimumPurchaseAmount, additionalPromoText: $additionalPromoText, rewardType: $rewardType, discountType: $discountType, promotionGroups: $promotionGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionDtoImpl &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.promotionDescription, promotionDescription) ||
                other.promotionDescription == promotionDescription) &&
            (identical(other.promotionStartDatetime, promotionStartDatetime) ||
                other.promotionStartDatetime == promotionStartDatetime) &&
            (identical(other.promotionEndDatetime, promotionEndDatetime) ||
                other.promotionEndDatetime == promotionEndDatetime) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.minimumPurchaseAmount, minimumPurchaseAmount) ||
                other.minimumPurchaseAmount == minimumPurchaseAmount) &&
            (identical(other.additionalPromoText, additionalPromoText) ||
                other.additionalPromoText == additionalPromoText) &&
            (identical(other.rewardType, rewardType) ||
                other.rewardType == rewardType) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            const DeepCollectionEquality()
                .equals(other._promotionGroups, _promotionGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      promotionId,
      promotionDescription,
      promotionStartDatetime,
      promotionEndDatetime,
      discountRate,
      minimumPurchaseAmount,
      additionalPromoText,
      rewardType,
      discountType,
      const DeepCollectionEquality().hash(_promotionGroups));

  /// Create a copy of PromotionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionDtoImplCopyWith<_$PromotionDtoImpl> get copyWith =>
      __$$PromotionDtoImplCopyWithImpl<_$PromotionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionDtoImplToJson(
      this,
    );
  }
}

abstract class _PromotionDto implements PromotionDto {
  const factory _PromotionDto(
          {@JsonKey(name: 'promotion_id') required final int promotionId,
          @JsonKey(name: 'promotion_description')
          required final String promotionDescription,
          @JsonKey(name: 'promotion_start_datetime')
          required final DateTime promotionStartDatetime,
          @JsonKey(name: 'promotion_end_datetime')
          required final DateTime promotionEndDatetime,
          @JsonKey(name: 'discount_rate') required final double discountRate,
          @JsonKey(name: 'minimum_purchase_amount')
          required final double minimumPurchaseAmount,
          @JsonKey(name: 'additional_promo_text')
          required final String additionalPromoText,
          @JsonKey(name: 'reward_type') required final int rewardType,
          @JsonKey(name: 'discount_type') required final int discountType,
          @JsonKey(name: 'promotion_groups')
          required final List<PromotionGroupDto> promotionGroups}) =
      _$PromotionDtoImpl;

  factory _PromotionDto.fromJson(Map<String, dynamic> json) =
      _$PromotionDtoImpl.fromJson;

  @override
  @JsonKey(name: 'promotion_id')
  int get promotionId;
  @override
  @JsonKey(name: 'promotion_description')
  String get promotionDescription;
  @override
  @JsonKey(name: 'promotion_start_datetime')
  DateTime get promotionStartDatetime;
  @override
  @JsonKey(name: 'promotion_end_datetime')
  DateTime get promotionEndDatetime;
  @override
  @JsonKey(name: 'discount_rate')
  double get discountRate;
  @override
  @JsonKey(name: 'minimum_purchase_amount')
  double get minimumPurchaseAmount;
  @override
  @JsonKey(name: 'additional_promo_text')
  String get additionalPromoText;
  @override
  @JsonKey(name: 'reward_type')
  int get rewardType;
  @override
  @JsonKey(name: 'discount_type')
  int get discountType;
  @override
  @JsonKey(name: 'promotion_groups')
  List<PromotionGroupDto> get promotionGroups;

  /// Create a copy of PromotionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionDtoImplCopyWith<_$PromotionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductPromotionsDto _$ProductPromotionsDtoFromJson(Map<String, dynamic> json) {
  return _ProductPromotionsDto.fromJson(json);
}

/// @nodoc
mixin _$ProductPromotionsDto {
  @JsonKey(name: 'product_barcode')
  int get productBarcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  List<PromotionDto> get promotions => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_promotions')
  int get totalPromotions => throw _privateConstructorUsedError;

  /// Serializes this ProductPromotionsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPromotionsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPromotionsDtoCopyWith<ProductPromotionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPromotionsDtoCopyWith<$Res> {
  factory $ProductPromotionsDtoCopyWith(ProductPromotionsDto value,
          $Res Function(ProductPromotionsDto) then) =
      _$ProductPromotionsDtoCopyWithImpl<$Res, ProductPromotionsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_barcode') int productBarcode,
      @JsonKey(name: 'product_name') String productName,
      List<PromotionDto> promotions,
      @JsonKey(name: 'total_promotions') int totalPromotions});
}

/// @nodoc
class _$ProductPromotionsDtoCopyWithImpl<$Res,
        $Val extends ProductPromotionsDto>
    implements $ProductPromotionsDtoCopyWith<$Res> {
  _$ProductPromotionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPromotionsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productBarcode = null,
    Object? productName = null,
    Object? promotions = null,
    Object? totalPromotions = null,
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
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionDto>,
      totalPromotions: null == totalPromotions
          ? _value.totalPromotions
          : totalPromotions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPromotionsDtoImplCopyWith<$Res>
    implements $ProductPromotionsDtoCopyWith<$Res> {
  factory _$$ProductPromotionsDtoImplCopyWith(_$ProductPromotionsDtoImpl value,
          $Res Function(_$ProductPromotionsDtoImpl) then) =
      __$$ProductPromotionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_barcode') int productBarcode,
      @JsonKey(name: 'product_name') String productName,
      List<PromotionDto> promotions,
      @JsonKey(name: 'total_promotions') int totalPromotions});
}

/// @nodoc
class __$$ProductPromotionsDtoImplCopyWithImpl<$Res>
    extends _$ProductPromotionsDtoCopyWithImpl<$Res, _$ProductPromotionsDtoImpl>
    implements _$$ProductPromotionsDtoImplCopyWith<$Res> {
  __$$ProductPromotionsDtoImplCopyWithImpl(_$ProductPromotionsDtoImpl _value,
      $Res Function(_$ProductPromotionsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPromotionsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productBarcode = null,
    Object? productName = null,
    Object? promotions = null,
    Object? totalPromotions = null,
  }) {
    return _then(_$ProductPromotionsDtoImpl(
      productBarcode: null == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionDto>,
      totalPromotions: null == totalPromotions
          ? _value.totalPromotions
          : totalPromotions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPromotionsDtoImpl implements _ProductPromotionsDto {
  const _$ProductPromotionsDtoImpl(
      {@JsonKey(name: 'product_barcode') required this.productBarcode,
      @JsonKey(name: 'product_name') required this.productName,
      required final List<PromotionDto> promotions,
      @JsonKey(name: 'total_promotions') required this.totalPromotions})
      : _promotions = promotions;

  factory _$ProductPromotionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPromotionsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_barcode')
  final int productBarcode;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  final List<PromotionDto> _promotions;
  @override
  List<PromotionDto> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  @JsonKey(name: 'total_promotions')
  final int totalPromotions;

  @override
  String toString() {
    return 'ProductPromotionsDto(productBarcode: $productBarcode, productName: $productName, promotions: $promotions, totalPromotions: $totalPromotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPromotionsDtoImpl &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions) &&
            (identical(other.totalPromotions, totalPromotions) ||
                other.totalPromotions == totalPromotions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productBarcode, productName,
      const DeepCollectionEquality().hash(_promotions), totalPromotions);

  /// Create a copy of ProductPromotionsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPromotionsDtoImplCopyWith<_$ProductPromotionsDtoImpl>
      get copyWith =>
          __$$ProductPromotionsDtoImplCopyWithImpl<_$ProductPromotionsDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPromotionsDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductPromotionsDto implements ProductPromotionsDto {
  const factory _ProductPromotionsDto(
      {@JsonKey(name: 'product_barcode') required final int productBarcode,
      @JsonKey(name: 'product_name') required final String productName,
      required final List<PromotionDto> promotions,
      @JsonKey(name: 'total_promotions')
      required final int totalPromotions}) = _$ProductPromotionsDtoImpl;

  factory _ProductPromotionsDto.fromJson(Map<String, dynamic> json) =
      _$ProductPromotionsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_barcode')
  int get productBarcode;
  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  List<PromotionDto> get promotions;
  @override
  @JsonKey(name: 'total_promotions')
  int get totalPromotions;

  /// Create a copy of ProductPromotionsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPromotionsDtoImplCopyWith<_$ProductPromotionsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
