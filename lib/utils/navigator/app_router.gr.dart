// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CardTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardTabPage(),
      );
    },
    CatalogProductCardRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogProductCardRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogProductCardScreen(
          preview: args.preview,
          id: args.id,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CardTabPage]
class CardTab extends PageRouteInfo<void> {
  const CardTab({List<PageRouteInfo>? children})
      : super(
          CardTab.name,
          initialChildren: children,
        );

  static const String name = 'CardTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogProductCardScreen]
class CatalogProductCardRoute
    extends PageRouteInfo<CatalogProductCardRouteArgs> {
  CatalogProductCardRoute({
    Product? preview,
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogProductCardRoute.name,
          args: CatalogProductCardRouteArgs(
            preview: preview,
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogProductCardRoute';

  static const PageInfo<CatalogProductCardRouteArgs> page =
      PageInfo<CatalogProductCardRouteArgs>(name);
}

class CatalogProductCardRouteArgs {
  const CatalogProductCardRouteArgs({
    this.preview,
    required this.id,
    this.key,
  });

  final Product? preview;

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'CatalogProductCardRouteArgs{preview: $preview, id: $id, key: $key}';
  }
}
