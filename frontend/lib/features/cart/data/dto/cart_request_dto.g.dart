// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemRequestDtoImpl _$$CartItemRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemRequestDtoImpl(
      barcode: (json['barcode'] as num).toInt(),
      productName: json['productName'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$CartItemRequestDtoImplToJson(
        _$CartItemRequestDtoImpl instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };
