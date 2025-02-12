// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_search_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $repositorySearchRoute,
    ];

RouteBase get $repositorySearchRoute => GoRouteData.$route(
      path: '/',
      factory: $RepositorySearchRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'details/:id',
          factory: $RepositoryDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $RepositorySearchRouteExtension on RepositorySearchRoute {
  static RepositorySearchRoute _fromState(GoRouterState state) =>
      RepositorySearchRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RepositoryDetailsRouteExtension on RepositoryDetailsRoute {
  static RepositoryDetailsRoute _fromState(GoRouterState state) =>
      RepositoryDetailsRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
