// ignore_for_file: use_key_in_widget_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'pages.dart';

part 'app_router.gr.dart';

@RoutePage(name: 'RootRouter')
class RootRouterPage extends AutoRouter {}

@RoutePage(name: 'LibraryRouter')
class LibraryRouterPage extends AutoRouter {}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: RootRouter.page, children: [
      AutoRoute(path: '', page: BottomTabsNavRoute.page, children: [
        AutoRoute(path: 'library', page: LibraryRouter.page, children: [
          AutoRoute(path: '', page: LibraryTabsRoute.page, children: [
            AutoRoute(path: 'albums', page: LibraryAlbumsRoute.page)
          ]),
          CustomRoute(
            path: 'album',
            page: AlbumRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom,
            durationInMilliseconds: 2000,
            reverseDurationInMilliseconds: 2000,
          ),
        ]),
      ]),
    ]),
  ];
}
