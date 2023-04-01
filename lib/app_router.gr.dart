// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomTabsNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomTabsNavPage(),
      );
    },
    LibraryTabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LibraryTabsPage(),
      );
    },
    LibraryAlbumsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LibraryAlbumsPage(),
      );
    },
    AlbumRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AlbumPage(),
      );
    },
    RootRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RootRouterPage(),
      );
    },
    LibraryRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LibraryRouterPage(),
      );
    },
  };
}

/// generated route for
/// [BottomTabsNavPage]
class BottomTabsNavRoute extends PageRouteInfo<void> {
  const BottomTabsNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomTabsNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabsNavRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LibraryTabsPage]
class LibraryTabsRoute extends PageRouteInfo<void> {
  const LibraryTabsRoute({List<PageRouteInfo>? children})
      : super(
          LibraryTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryTabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LibraryAlbumsPage]
class LibraryAlbumsRoute extends PageRouteInfo<void> {
  const LibraryAlbumsRoute({List<PageRouteInfo>? children})
      : super(
          LibraryAlbumsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryAlbumsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AlbumPage]
class AlbumRoute extends PageRouteInfo<void> {
  const AlbumRoute({List<PageRouteInfo>? children})
      : super(
          AlbumRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlbumRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RootRouterPage]
class RootRouter extends PageRouteInfo<void> {
  const RootRouter({List<PageRouteInfo>? children})
      : super(
          RootRouter.name,
          initialChildren: children,
        );

  static const String name = 'RootRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LibraryRouterPage]
class LibraryRouter extends PageRouteInfo<void> {
  const LibraryRouter({List<PageRouteInfo>? children})
      : super(
          LibraryRouter.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}
