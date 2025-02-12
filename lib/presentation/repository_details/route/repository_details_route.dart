import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofomo/presentation/repository_details/repository_details_page.dart';

class RepositoryDetailsRoute extends GoRouteData {
  RepositoryDetailsRoute({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) => RepositoryDetailsPage(repositoryId: id);
}
