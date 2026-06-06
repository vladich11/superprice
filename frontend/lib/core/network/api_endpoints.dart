enum ApiEndpoint {
  // Open Israeli Supermarkets API
  chains,
  stores,
  productSearch,
  productByBarcode,
  comparePrices,
  crossChainComparison,
  productPromotions,
  // FastAPI backend
  parseItems,
  cartComparison,
  replacements,
  backendProductSearch,
  backendHealthChecks;

  String path([String? param]) => switch (this) {
        ApiEndpoint.chains => '/chains/',
        ApiEndpoint.stores => '/stores/',
        ApiEndpoint.productSearch => '/products/search',
        ApiEndpoint.productByBarcode => '/products/barcode/$param',
        ApiEndpoint.comparePrices => '/products/compare-prices',
        ApiEndpoint.crossChainComparison =>
          '/analytics/price-comparison/cross-chain/$param',
        ApiEndpoint.productPromotions =>
          '/analytics/promotions/product/$param',
        ApiEndpoint.parseItems => '/api/parse-items',
        ApiEndpoint.cartComparison => '/api/cart-comparison',
        ApiEndpoint.replacements => '/api/replacements/$param',
        ApiEndpoint.backendProductSearch => '/api/products/search',
        ApiEndpoint.backendHealthChecks => '/api/health-checks',
      };
}
