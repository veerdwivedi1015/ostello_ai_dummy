// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:dummy_ostello/model/amenities.dart' as _i5;
import 'package:dummy_ostello/screens/amenities_screen/amenities_screen.dart'
    as _i1;
import 'package:dummy_ostello/screens/home_screen/home_screen.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AmenitiesRoute.name: (routeData) {
      final args = routeData.argsAs<AmenitiesRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmenitiesScreen(
          key: args.key,
          listOfAmenities: args.listOfAmenities,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AmenitiesScreen]
class AmenitiesRoute extends _i3.PageRouteInfo<AmenitiesRouteArgs> {
  AmenitiesRoute({
    _i4.Key? key,
    required List<_i5.Amenities> listOfAmenities,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          AmenitiesRoute.name,
          args: AmenitiesRouteArgs(
            key: key,
            listOfAmenities: listOfAmenities,
          ),
          initialChildren: children,
        );

  static const String name = 'AmenitiesRoute';

  static const _i3.PageInfo<AmenitiesRouteArgs> page =
      _i3.PageInfo<AmenitiesRouteArgs>(name);
}

class AmenitiesRouteArgs {
  const AmenitiesRouteArgs({
    this.key,
    required this.listOfAmenities,
  });

  final _i4.Key? key;

  final List<_i5.Amenities> listOfAmenities;

  @override
  String toString() {
    return 'AmenitiesRouteArgs{key: $key, listOfAmenities: $listOfAmenities}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
