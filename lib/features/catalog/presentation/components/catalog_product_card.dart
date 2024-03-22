import 'package:flutter/material.dart';
import 'package:pet/features/product/domain/product_entity.dart';

class CatalogProductCard extends StatelessWidget {
  const CatalogProductCard({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(product.imageUrl),
            )),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Text(
            product.name,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 52,
            width: double.infinity,
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFCEE4F),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text(
                            //   '299 ₽',
                            //   style: TextStyle(
                            //       color: Colors.red,
                            //       decoration: TextDecoration.lineThrough,
                            //       decorationColor: Colors.red),
                            // ),
                            Text(
                              '${product.price / 100} ₽',
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.red,
                      )
                    ],
                  ),
                )))
      ],
    );
  }
}
