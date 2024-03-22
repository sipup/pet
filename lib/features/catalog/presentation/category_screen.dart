import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pet/features/catalog/domain/category_entity.dart';
import 'package:pet/features/catalog/presentation/components/category_card.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Категории'),
      ),
      body: GridView.builder(
        itemCount: categories.length,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}

final List<CategoryEntity> categories = [
  CategoryEntity(
      id: 216476,
      name: 'Вино импорт',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/qugHxMIY7vKM6oriGhU3GCY__Ru09khSAICed57C7CY/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbDZmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9cc936dabbcfc28beeabbc46cfe615422eba4c9c/734ce8e8-cedf-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 234546,
      name: 'Вино Россия',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/ORjPilrz2EHW2cPBts_SZDK_v0NXwv6FeuKty01Kz0k/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbCtmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3d94c6858c2e3532bf7dc9a0d3455959abb7202c/ae4fa3bb-cedf-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 211787,
      name: 'Виски, Бурбон',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/3xEo-eJGrZ0ShjXUN8WpCZIR4p3ZQovnWvZilkqMylQ/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbUtmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5bd9c4fa92c8aacecd5ff457120407ab22487955/fdc73511-cedf-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 214567,
      name: 'Водка, Настойки',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/CLYCURr1Cw6IvqJU_T-VGW7wP8xE7gcLybMKxgDmhTI/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbUdmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bebd7e7cb70a5931b53d9c52961424db009a60dd/ce2ae7d5-cedf-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 216655,
      name: 'Вино игристое, Вермут',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/4JoKHuhDhjzbE-RMzDclONrqPRFZA3wmSVG4EGrIxM0/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbUNmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--7fb32e8682e87a25b23bea0311cfbf80cd8e9bda/1ba7cd16-cee0-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 218756,
      name: 'Коньяк, Арманьяк',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/Lln1exY-0a2UT5rYEzJndrzYRHgri4IX0tUG0-QWdok/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbU9mIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a5ba2e5f4451c9d7df3a65367af54757c96051ea/9af9f69a-cee0-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 215467,
      name: 'Ром, Джин, Текила',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/1f3V4TnlHu5dlsNTGBNLJ-zTCyZZuRWlP_Z64V0ytG8/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbVNmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--876b52c98a82262b3440d414a8e9b3818d509977/cbd3215b-cee0-11ed-9a2b-005056011b5d.webp?format=webp'),
  CategoryEntity(
      id: 215342,
      name: 'Аперетивы, Бальзамы, Ликеры',
      imageUrl:
          'https://images-ext-1.discordapp.net/external/epke_1raZJTnZqdWQQAht0dkdVFMJ32lMDQAD6tXQlU/https/api.mobile.bristol.ru/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbVdmIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--1eb2940661ad7071426a3586c6b9b3f27293319f/e7026d65-cee0-11ed-9a2b-005056011b5d.webp?format=webp'),
];
