import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofomo/presentation/repository_details/route/repository_details_route.dart';
import 'package:sofomo/presentation/repository_search/repository_search_page.dart';

part 'repository_search_route.g.dart';

@TypedGoRoute<RepositorySearchRoute>(path: '/', routes: [
  TypedGoRoute<RepositoryDetailsRoute>(
    path: 'details/:id',
  )
])
class RepositorySearchRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => RepositorySearchPage();
}
