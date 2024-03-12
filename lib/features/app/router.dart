import 'package:auto_route/auto_route.dart';
import 'package:pet/features/app/root_screen.dart';
import 'package:pet/features/catalog/presentation/catalog_screen.dart';
import 'package:pet/features/home/presentation/home_screen.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: CatalogRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
