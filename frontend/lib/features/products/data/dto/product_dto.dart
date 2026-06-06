// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superprice/features/products/domain/product_model.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const factory ProductDto({
    required String id,
    required int productBarcode,
    required int internalBarcode,
    required String productName,
    required String manufacturerOrImporterName,
    required String countryOfOrigin,
    required String productDescription,
    required String productQuantityMeasure,
    required int productQuantity,
    required String unitOfMeasure,
    required int itemsPerPackage,
    required int isWeighted,
    required int itemType,
    DateTime? lastUpdated,
  }) = _ProductDto;
  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
class ProductSearchPageDto with _$ProductSearchPageDto {
  const factory ProductSearchPageDto({
    required List<ProductDto> items,
    required int limit,
    required int offset,
    @JsonKey(name: 'has_more') required bool hasMore,
    @JsonKey(name: 'next_offset') int? nextOffset,
  }) = _ProductSearchPageDto;
  factory ProductSearchPageDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchPageDtoFromJson(json);
}

@freezed
class ProductBarcodeResponseDto with _$ProductBarcodeResponseDto {
  const factory ProductBarcodeResponseDto({
    required ProductDto product,
  }) = _ProductBarcodeResponseDto;
  factory ProductBarcodeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductBarcodeResponseDtoFromJson(json);
}

// Mappers
extension ProductDtoX on ProductDto {
  Product toDomain() => Product(
        id: id,
        productBarcode: productBarcode,
        internalBarcode: internalBarcode,
        productName: productName,
        manufacturerOrImporterName: manufacturerOrImporterName,
        countryOfOrigin: countryOfOrigin,
        productDescription: productDescription,
        productQuantityMeasure: productQuantityMeasure,
        productQuantity: productQuantity,
        unitOfMeasure: unitOfMeasure,
        itemsPerPackage: itemsPerPackage,
        isWeighted: isWeighted,
        itemType: itemType,
        lastUpdated: lastUpdated,
      );
}

extension ProductSearchPageDtoX on ProductSearchPageDto {
  ProductSearchPage toDomain() => ProductSearchPage(
        items: items.map((p) => p.toDomain()).toList(),
        limit: limit,
        offset: offset,
        hasMore: hasMore,
        nextOffset: nextOffset,
      );
}
