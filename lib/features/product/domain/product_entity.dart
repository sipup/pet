class ProductEntity {
  ProductEntity({
    required this.price,
    required this.name,
    required this.imageUrl,
  });

  /// цена указывается в копейках
  final int price;
  final String name;
  final String imageUrl;
}
