// ignore_for_file: use_key_in_widget_constructors

import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';

import 'pages.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: EmptyRouterPage, children: [
      AutoRoute(path: '', page: BottomTabsNavPage, children: [
        AutoRoute(
            path: 'library',
            name: 'LibraryRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(path: '', page: LibraryTabsPage, children: [
                AutoRoute(path: 'albums', page: LibraryAlbumsPage),
              ]),
              CustomRoute(
                path: 'album',
                page: AlbumPage,
                transitionsBuilder: TransitionsBuilders.slideBottom,
                durationInMilliseconds: 2000,
                reverseDurationInMilliseconds: 2000,
              ),
            ]),
      ]),
    ]),
  ],
)
class AppRouter extends _$AppRouter {}
