import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
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
  }) = _Product;
}

@freezed
class ProductSearchPage with _$ProductSearchPage {
  const factory ProductSearchPage({
    required List<Product> items,
    required int limit,
    required int offset,
    required bool hasMore,
    int? nextOffset,
  }) = _ProductSearchPage;
}
