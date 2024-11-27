class ProductListItemViewModel {
  final String imageUrl;
  final String productName;
  final double price;
  final double rating;
  final int reviewCount;

  ProductListItemViewModel({
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.rating,
    required this.reviewCount,
  });
}
