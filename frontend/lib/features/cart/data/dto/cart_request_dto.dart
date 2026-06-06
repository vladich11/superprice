// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_request_dto.freezed.dart';
part 'cart_request_dto.g.dart';

@freezed
class CartItemRequestDto with _$CartItemRequestDto {
  const factory CartItemRequestDto({
    required int barcode,
    @JsonKey(name: 'productName') required String productName,
    required double quantity,
    required String unit,
  }) = _CartItemRequestDto;

  factory CartItemRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemRequestDtoFromJson(json);
}
