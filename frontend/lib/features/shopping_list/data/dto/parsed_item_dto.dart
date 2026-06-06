// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_item_dto.freezed.dart';
part 'parsed_item_dto.g.dart';

@freezed
class ParsedMatchedProductDto with _$ParsedMatchedProductDto {
  const factory ParsedMatchedProductDto({
    required int barcode,
    @JsonKey(name: 'productName') required String productName,
    required String manufacturer,
    required double confidence,
  }) = _ParsedMatchedProductDto;

  factory ParsedMatchedProductDto.fromJson(Map<String, dynamic> json) =>
      _$ParsedMatchedProductDtoFromJson(json);
}

@freezed
class ParsedItemDto with _$ParsedItemDto {
  const factory ParsedItemDto({
    required String rawText,
    required double quantity,
    required String unit,
    required String productSearchQuery,
    @Default(null) ParsedMatchedProductDto? matchedProduct,
  }) = _ParsedItemDto;

  factory ParsedItemDto.fromJson(Map<String, dynamic> json) =>
      _$ParsedItemDtoFromJson(json);
}
