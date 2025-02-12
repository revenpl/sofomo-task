import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofomo/presentation/repository_search/route/repository_search_route.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: $appRoutes,
);