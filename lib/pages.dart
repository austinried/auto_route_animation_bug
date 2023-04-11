import 'package:auto_route/auto_route.dart';
import 'package:auto_route_animation_bug/app_router.dart';
import 'package:flutter/material.dart';

class BottomTabsNavPage extends StatelessWidget {
  const BottomTabsNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        LibraryRouter(),
        LibraryRouter(),
        LibraryRouter(),
      ],
      builder: (context, child, animation) {
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.abc), label: 'Library'),
              NavigationDestination(icon: Icon(Icons.abc), label: 'Test2'),
              NavigationDestination(icon: Icon(Icons.abc), label: 'Test3'),
            ],
            selectedIndex: 0,
            onDestinationSelected: (index) {},
          ),
        );
      },
    );
  }
}

class LibraryTabsPage extends StatelessWidget {
  const LibraryTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        LibraryAlbumsRoute(),
        LibraryAlbumsRoute(),
        LibraryAlbumsRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
        );
      },
    );
  }
}

class LibraryAlbumsPage extends StatelessWidget {
  const LibraryAlbumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.orange)),
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {
            context.navigateTo(const AlbumRoute());
          },
          style: const ButtonStyle(
            surfaceTintColor: MaterialStatePropertyAll(Colors.red),
            overlayColor: MaterialStatePropertyAll(Colors.red),
          ),
          child: const Text('Go'),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.orange)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.orange)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.orange)),
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.orange)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.orange)),
            ],
          ),
        ),
      ],
    );
  }
}

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
