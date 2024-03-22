class CategoryEntity {
  CategoryEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  /// Идентификатор
  final int id;

  /// Название категории
  final String name;

  /// Ссылка на изображение
  final String imageUrl;
}
