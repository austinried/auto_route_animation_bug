// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    EmptyRouterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    BottomTabsNavRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BottomTabsNavPage(),
      );
    },
    LibraryRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    LibraryTabsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LibraryTabsPage(),
      );
    },
    AlbumRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AlbumPage(),
        transitionsBuilder: TransitionsBuilders.slideBottom,
        durationInMilliseconds: 2000,
        reverseDurationInMilliseconds: 2000,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LibraryAlbumsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LibraryAlbumsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          EmptyRouterRoute.name,
          path: '/',
          children: [
            RouteConfig(
              BottomTabsNavRoute.name,
              path: '',
              parent: EmptyRouterRoute.name,
              children: [
                RouteConfig(
                  LibraryRouter.name,
                  path: 'library',
                  parent: BottomTabsNavRoute.name,
                  children: [
                    RouteConfig(
                      LibraryTabsRoute.name,
                      path: '',
                      parent: LibraryRouter.name,
                      children: [
                        RouteConfig(
                          LibraryAlbumsRoute.name,
                          path: 'albums',
                          parent: LibraryTabsRoute.name,
                        )
                      ],
                    ),
                    RouteConfig(
                      AlbumRoute.name,
                      path: 'album',
                      parent: LibraryRouter.name,
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ];
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouterRoute extends PageRouteInfo<void> {
  const EmptyRouterRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [BottomTabsNavPage]
class BottomTabsNavRoute extends PageRouteInfo<void> {
  const BottomTabsNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomTabsNavRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'BottomTabsNavRoute';
}

/// generated route for
/// [EmptyRouterPage]
class LibraryRouter extends PageRouteInfo<void> {
  const LibraryRouter({List<PageRouteInfo>? children})
      : super(
          LibraryRouter.name,
          path: 'library',
          initialChildren: children,
        );

  static const String name = 'LibraryRouter';
}

/// generated route for
/// [LibraryTabsPage]
class LibraryTabsRoute extends PageRouteInfo<void> {
  const LibraryTabsRoute({List<PageRouteInfo>? children})
      : super(
          LibraryTabsRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'LibraryTabsRoute';
}

/// generated route for
/// [AlbumPage]
class AlbumRoute extends PageRouteInfo<void> {
  const AlbumRoute()
      : super(
          AlbumRoute.name,
          path: 'album',
        );

  static const String name = 'AlbumRoute';
}

/// generated route for
/// [LibraryAlbumsPage]
class LibraryAlbumsRoute extends PageRouteInfo<void> {
  const LibraryAlbumsRoute()
      : super(
          LibraryAlbumsRoute.name,
          path: 'albums',
        );

  static const String name = 'LibraryAlbumsRoute';
}
