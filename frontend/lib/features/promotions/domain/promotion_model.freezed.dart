// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductPromotions {
  int get productBarcode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  List<Promotion> get promotions => throw _privateConstructorUsedError;
  int get totalPromotions => throw _privateConstructorUsedError;

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPromotionsCopyWith<ProductPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPromotionsCopyWith<$Res> {
  factory $ProductPromotionsCopyWith(
          ProductPromotions value, $Res Function(ProductPromotions) then) =
      _$ProductPromotionsCopyWithImpl<$Res, ProductPromotions>;
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      List<Promotion> promotions,
      int totalPromotions});
}

/// @nodoc
class _$ProductPromotionsCopyWithImpl<$Res, $Val extends ProductPromotions>
    implements $ProductPromotionsCopyWith<$Res> {
  _$ProductPromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPromotions
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
              as List<Promotion>,
      totalPromotions: null == totalPromotions
          ? _value.totalPromotions
          : totalPromotions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPromotionsImplCopyWith<$Res>
    implements $ProductPromotionsCopyWith<$Res> {
  factory _$$ProductPromotionsImplCopyWith(_$ProductPromotionsImpl value,
          $Res Function(_$ProductPromotionsImpl) then) =
      __$$ProductPromotionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productBarcode,
      String productName,
      List<Promotion> promotions,
      int totalPromotions});
}

/// @nodoc
class __$$ProductPromotionsImplCopyWithImpl<$Res>
    extends _$ProductPromotionsCopyWithImpl<$Res, _$ProductPromotionsImpl>
    implements _$$ProductPromotionsImplCopyWith<$Res> {
  __$$ProductPromotionsImplCopyWithImpl(_$ProductPromotionsImpl _value,
      $Res Function(_$ProductPromotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productBarcode = null,
    Object? productName = null,
    Object? promotions = null,
    Object? totalPromotions = null,
  }) {
    return _then(_$ProductPromotionsImpl(
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
              as List<Promotion>,
      totalPromotions: null == totalPromotions
          ? _value.totalPromotions
          : totalPromotions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductPromotionsImpl implements _ProductPromotions {
  const _$ProductPromotionsImpl(
      {required this.productBarcode,
      required this.productName,
      required final List<Promotion> promotions,
      required this.totalPromotions})
      : _promotions = promotions;

  @override
  final int productBarcode;
  @override
  final String productName;
  final List<Promotion> _promotions;
  @override
  List<Promotion> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  final int totalPromotions;

  @override
  String toString() {
    return 'ProductPromotions(productBarcode: $productBarcode, productName: $productName, promotions: $promotions, totalPromotions: $totalPromotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPromotionsImpl &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions) &&
            (identical(other.totalPromotions, totalPromotions) ||
                other.totalPromotions == totalPromotions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productBarcode, productName,
      const DeepCollectionEquality().hash(_promotions), totalPromotions);

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPromotionsImplCopyWith<_$ProductPromotionsImpl> get copyWith =>
      __$$ProductPromotionsImplCopyWithImpl<_$ProductPromotionsImpl>(
          this, _$identity);
}

abstract class _ProductPromotions implements ProductPromotions {
  const factory _ProductPromotions(
      {required final int productBarcode,
      required final String productName,
      required final List<Promotion> promotions,
      required final int totalPromotions}) = _$ProductPromotionsImpl;

  @override
  int get productBarcode;
  @override
  String get productName;
  @override
  List<Promotion> get promotions;
  @override
  int get totalPromotions;

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPromotionsImplCopyWith<_$ProductPromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Promotion {
  int get promotionId => throw _privateConstructorUsedError;
  String get promotionDescription => throw _privateConstructorUsedError;
  DateTime get promotionStartDatetime => throw _privateConstructorUsedError;
  DateTime get promotionEndDatetime => throw _privateConstructorUsedError;
  double get discountRate => throw _privateConstructorUsedError;
  double get minimumPurchaseAmount => throw _privateConstructorUsedError;
  String get additionalPromoText => throw _privateConstructorUsedError;
  int get rewardType => throw _privateConstructorUsedError;
  int get discountType => throw _privateConstructorUsedError;
  List<PromotionGroup> get promotionGroups =>
      throw _privateConstructorUsedError;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res, Promotion>;
  @useResult
  $Res call(
      {int promotionId,
      String promotionDescription,
      DateTime promotionStartDatetime,
      DateTime promotionEndDatetime,
      double discountRate,
      double minimumPurchaseAmount,
      String additionalPromoText,
      int rewardType,
      int discountType,
      List<PromotionGroup> promotionGroups});
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res, $Val extends Promotion>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Promotion
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
              as List<PromotionGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionImplCopyWith<$Res>
    implements $PromotionCopyWith<$Res> {
  factory _$$PromotionImplCopyWith(
          _$PromotionImpl value, $Res Function(_$PromotionImpl) then) =
      __$$PromotionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int promotionId,
      String promotionDescription,
      DateTime promotionStartDatetime,
      DateTime promotionEndDatetime,
      double discountRate,
      double minimumPurchaseAmount,
      String additionalPromoText,
      int rewardType,
      int discountType,
      List<PromotionGroup> promotionGroups});
}

/// @nodoc
class __$$PromotionImplCopyWithImpl<$Res>
    extends _$PromotionCopyWithImpl<$Res, _$PromotionImpl>
    implements _$$PromotionImplCopyWith<$Res> {
  __$$PromotionImplCopyWithImpl(
      _$PromotionImpl _value, $Res Function(_$PromotionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Promotion
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
    return _then(_$PromotionImpl(
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
              as List<PromotionGroup>,
    ));
  }
}

/// @nodoc

class _$PromotionImpl implements _Promotion {
  const _$PromotionImpl(
      {required this.promotionId,
      required this.promotionDescription,
      required this.promotionStartDatetime,
      required this.promotionEndDatetime,
      required this.discountRate,
      required this.minimumPurchaseAmount,
      required this.additionalPromoText,
      required this.rewardType,
      required this.discountType,
      required final List<PromotionGroup> promotionGroups})
      : _promotionGroups = promotionGroups;

  @override
  final int promotionId;
  @override
  final String promotionDescription;
  @override
  final DateTime promotionStartDatetime;
  @override
  final DateTime promotionEndDatetime;
  @override
  final double discountRate;
  @override
  final double minimumPurchaseAmount;
  @override
  final String additionalPromoText;
  @override
  final int rewardType;
  @override
  final int discountType;
  final List<PromotionGroup> _promotionGroups;
  @override
  List<PromotionGroup> get promotionGroups {
    if (_promotionGroups is EqualUnmodifiableListView) return _promotionGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotionGroups);
  }

  @override
  String toString() {
    return 'Promotion(promotionId: $promotionId, promotionDescription: $promotionDescription, promotionStartDatetime: $promotionStartDatetime, promotionEndDatetime: $promotionEndDatetime, discountRate: $discountRate, minimumPurchaseAmount: $minimumPurchaseAmount, additionalPromoText: $additionalPromoText, rewardType: $rewardType, discountType: $discountType, promotionGroups: $promotionGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionImpl &&
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

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      __$$PromotionImplCopyWithImpl<_$PromotionImpl>(this, _$identity);
}

abstract class _Promotion implements Promotion {
  const factory _Promotion(
      {required final int promotionId,
      required final String promotionDescription,
      required final DateTime promotionStartDatetime,
      required final DateTime promotionEndDatetime,
      required final double discountRate,
      required final double minimumPurchaseAmount,
      required final String additionalPromoText,
      required final int rewardType,
      required final int discountType,
      required final List<PromotionGroup> promotionGroups}) = _$PromotionImpl;

  @override
  int get promotionId;
  @override
  String get promotionDescription;
  @override
  DateTime get promotionStartDatetime;
  @override
  DateTime get promotionEndDatetime;
  @override
  double get discountRate;
  @override
  double get minimumPurchaseAmount;
  @override
  String get additionalPromoText;
  @override
  int get rewardType;
  @override
  int get discountType;
  @override
  List<PromotionGroup> get promotionGroups;

  /// Create a copy of Promotion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionImplCopyWith<_$PromotionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotionGroup {
  String get groupId => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  double get minPurchaseAmount => throw _privateConstructorUsedError;
  int get discountType => throw _privateConstructorUsedError;
  List<PromotionItem> get promotionItems => throw _privateConstructorUsedError;

  /// Create a copy of PromotionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionGroupCopyWith<PromotionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionGroupCopyWith<$Res> {
  factory $PromotionGroupCopyWith(
          PromotionGroup value, $Res Function(PromotionGroup) then) =
      _$PromotionGroupCopyWithImpl<$Res, PromotionGroup>;
  @useResult
  $Res call(
      {String groupId,
      String groupName,
      double minPurchaseAmount,
      int discountType,
      List<PromotionItem> promotionItems});
}

/// @nodoc
class _$PromotionGroupCopyWithImpl<$Res, $Val extends PromotionGroup>
    implements $PromotionGroupCopyWith<$Res> {
  _$PromotionGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionGroup
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
              as List<PromotionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionGroupImplCopyWith<$Res>
    implements $PromotionGroupCopyWith<$Res> {
  factory _$$PromotionGroupImplCopyWith(_$PromotionGroupImpl value,
          $Res Function(_$PromotionGroupImpl) then) =
      __$$PromotionGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groupId,
      String groupName,
      double minPurchaseAmount,
      int discountType,
      List<PromotionItem> promotionItems});
}

/// @nodoc
class __$$PromotionGroupImplCopyWithImpl<$Res>
    extends _$PromotionGroupCopyWithImpl<$Res, _$PromotionGroupImpl>
    implements _$$PromotionGroupImplCopyWith<$Res> {
  __$$PromotionGroupImplCopyWithImpl(
      _$PromotionGroupImpl _value, $Res Function(_$PromotionGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionGroup
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
    return _then(_$PromotionGroupImpl(
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
              as List<PromotionItem>,
    ));
  }
}

/// @nodoc

class _$PromotionGroupImpl implements _PromotionGroup {
  const _$PromotionGroupImpl(
      {required this.groupId,
      required this.groupName,
      required this.minPurchaseAmount,
      required this.discountType,
      required final List<PromotionItem> promotionItems})
      : _promotionItems = promotionItems;

  @override
  final String groupId;
  @override
  final String groupName;
  @override
  final double minPurchaseAmount;
  @override
  final int discountType;
  final List<PromotionItem> _promotionItems;
  @override
  List<PromotionItem> get promotionItems {
    if (_promotionItems is EqualUnmodifiableListView) return _promotionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotionItems);
  }

  @override
  String toString() {
    return 'PromotionGroup(groupId: $groupId, groupName: $groupName, minPurchaseAmount: $minPurchaseAmount, discountType: $discountType, promotionItems: $promotionItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionGroupImpl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      groupName,
      minPurchaseAmount,
      discountType,
      const DeepCollectionEquality().hash(_promotionItems));

  /// Create a copy of PromotionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionGroupImplCopyWith<_$PromotionGroupImpl> get copyWith =>
      __$$PromotionGroupImplCopyWithImpl<_$PromotionGroupImpl>(
          this, _$identity);
}

abstract class _PromotionGroup implements PromotionGroup {
  const factory _PromotionGroup(
          {required final String groupId,
          required final String groupName,
          required final double minPurchaseAmount,
          required final int discountType,
          required final List<PromotionItem> promotionItems}) =
      _$PromotionGroupImpl;

  @override
  String get groupId;
  @override
  String get groupName;
  @override
  double get minPurchaseAmount;
  @override
  int get discountType;
  @override
  List<PromotionItem> get promotionItems;

  /// Create a copy of PromotionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionGroupImplCopyWith<_$PromotionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotionItem {
  String get itemCode => throw _privateConstructorUsedError;
  int get productBarcode => throw _privateConstructorUsedError;
  int get rewardType => throw _privateConstructorUsedError;
  int get minQuantity => throw _privateConstructorUsedError;
  int get maxQuantity => throw _privateConstructorUsedError;
  double get discountRate => throw _privateConstructorUsedError;
  double get discountedPrice => throw _privateConstructorUsedError;
  double get originalPrice => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get itemDescription => throw _privateConstructorUsedError;
  int get itemType => throw _privateConstructorUsedError;

  /// Create a copy of PromotionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionItemCopyWith<PromotionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionItemCopyWith<$Res> {
  factory $PromotionItemCopyWith(
          PromotionItem value, $Res Function(PromotionItem) then) =
      _$PromotionItemCopyWithImpl<$Res, PromotionItem>;
  @useResult
  $Res call(
      {String itemCode,
      int productBarcode,
      int rewardType,
      int minQuantity,
      int maxQuantity,
      double discountRate,
      double discountedPrice,
      double originalPrice,
      String itemName,
      String itemDescription,
      int itemType});
}

/// @nodoc
class _$PromotionItemCopyWithImpl<$Res, $Val extends PromotionItem>
    implements $PromotionItemCopyWith<$Res> {
  _$PromotionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionItem
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
abstract class _$$PromotionItemImplCopyWith<$Res>
    implements $PromotionItemCopyWith<$Res> {
  factory _$$PromotionItemImplCopyWith(
          _$PromotionItemImpl value, $Res Function(_$PromotionItemImpl) then) =
      __$$PromotionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemCode,
      int productBarcode,
      int rewardType,
      int minQuantity,
      int maxQuantity,
      double discountRate,
      double discountedPrice,
      double originalPrice,
      String itemName,
      String itemDescription,
      int itemType});
}

/// @nodoc
class __$$PromotionItemImplCopyWithImpl<$Res>
    extends _$PromotionItemCopyWithImpl<$Res, _$PromotionItemImpl>
    implements _$$PromotionItemImplCopyWith<$Res> {
  __$$PromotionItemImplCopyWithImpl(
      _$PromotionItemImpl _value, $Res Function(_$PromotionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionItem
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
    return _then(_$PromotionItemImpl(
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

class _$PromotionItemImpl implements _PromotionItem {
  const _$PromotionItemImpl(
      {required this.itemCode,
      required this.productBarcode,
      required this.rewardType,
      required this.minQuantity,
      required this.maxQuantity,
      required this.discountRate,
      required this.discountedPrice,
      required this.originalPrice,
      required this.itemName,
      required this.itemDescription,
      required this.itemType});

  @override
  final String itemCode;
  @override
  final int productBarcode;
  @override
  final int rewardType;
  @override
  final int minQuantity;
  @override
  final int maxQuantity;
  @override
  final double discountRate;
  @override
  final double discountedPrice;
  @override
  final double originalPrice;
  @override
  final String itemName;
  @override
  final String itemDescription;
  @override
  final int itemType;

  @override
  String toString() {
    return 'PromotionItem(itemCode: $itemCode, productBarcode: $productBarcode, rewardType: $rewardType, minQuantity: $minQuantity, maxQuantity: $maxQuantity, discountRate: $discountRate, discountedPrice: $discountedPrice, originalPrice: $originalPrice, itemName: $itemName, itemDescription: $itemDescription, itemType: $itemType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionItemImpl &&
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

  /// Create a copy of PromotionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionItemImplCopyWith<_$PromotionItemImpl> get copyWith =>
      __$$PromotionItemImplCopyWithImpl<_$PromotionItemImpl>(this, _$identity);
}

abstract class _PromotionItem implements PromotionItem {
  const factory _PromotionItem(
      {required final String itemCode,
      required final int productBarcode,
      required final int rewardType,
      required final int minQuantity,
      required final int maxQuantity,
      required final double discountRate,
      required final double discountedPrice,
      required final double originalPrice,
      required final String itemName,
      required final String itemDescription,
      required final int itemType}) = _$PromotionItemImpl;

  @override
  String get itemCode;
  @override
  int get productBarcode;
  @override
  int get rewardType;
  @override
  int get minQuantity;
  @override
  int get maxQuantity;
  @override
  double get discountRate;
  @override
  double get discountedPrice;
  @override
  double get originalPrice;
  @override
  String get itemName;
  @override
  String get itemDescription;
  @override
  int get itemType;

  /// Create a copy of PromotionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionItemImplCopyWith<_$PromotionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
