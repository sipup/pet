import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet/features/app/router.dart';
import 'package:pet/features/catalog/data/catalog_repository.dart';
import 'package:pet/features/catalog/domain/catalog_cubit.dart';
import 'package:pet/features/catalog/domain/catalog_state.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatalogCubit(
        const CatalogState(product: [], isLoading: true),
        CatalogRepositoryImpl(),
      ),
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          CatalogRoute(),
          CartRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            NavigationDestination(
              icon: Icon(Icons.manage_search),
              label: 'Каталог',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart),
              label: 'Корзина',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
        ),
      ),
    );
  }
}
