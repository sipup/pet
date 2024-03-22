import 'package:pet/features/product/domain/product_entity.dart';

abstract class CatalogRepository {
  Future<List<ProductEntity>> getProducts();
}

class CatalogRepositoryImpl implements CatalogRepository {
  @override
  Future<List<ProductEntity>> getProducts() async {
    await Future.delayed(const Duration(seconds: 3));
    return [
      ProductEntity(
          price: 1999,
          name: 'Мюсли',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4955516/img_id5535180542733920070.jpeg/300x400'),
      ProductEntity(
          price: 1555,
          name: 'Сгущенка',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4055688/img_id1705711063236199458.jpeg/300x400'),
      ProductEntity(
          price: 1999,
          name: 'Мюсли',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4955516/img_id5535180542733920070.jpeg/300x400'),
      ProductEntity(
          price: 1555,
          name: 'Сгущенка',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4055688/img_id1705711063236199458.jpeg/300x400'),
      ProductEntity(
          price: 1999,
          name: 'Мюсли',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4955516/img_id5535180542733920070.jpeg/300x400'),
      ProductEntity(
          price: 1555,
          name: 'Сгущенка',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4055688/img_id1705711063236199458.jpeg/300x400'),
      ProductEntity(
          price: 1999,
          name: 'Мюсли',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4955516/img_id5535180542733920070.jpeg/300x400'),
      ProductEntity(
          price: 1555,
          name: 'Сгущенка',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4055688/img_id1705711063236199458.jpeg/300x400'),
    ];
  }
}
