import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pet/features/catalog/presentation/compomemts/catalog_product_card.dart';
import 'package:pet/features/product/domain/product_entity.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог'),
      ),
      body: GridView.builder(
        itemCount: products.length,
        padding: EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 164 / 292,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return CatalogProductCard(product: products[index]);
        },
      ),
    );
  }
}

final products = [
  ProductEntity(
      price: 1999,
      name: 'Мюсли',
      imageUrl:
          'https://avatars.mds.yandex.net/get-mpic/4955516/img_id5535180542733920070.jpeg/300x400'),
  ProductEntity(
      price: 1555,
      name: 'Сгущенка',
      imageUrl:
          'https://avatars.mds.yandex.net/get-mpic/4055688/img_id1705711063236199458.jpeg/300x400')
];
