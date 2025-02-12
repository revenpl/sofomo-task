import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo/app/di.dart';
import 'package:sofomo/presentation/pull_requests/bloc/pull_requests_bloc.dart';
import 'package:sofomo/presentation/pull_requests/pull_requests_screen.dart';

class PullRequestsPage extends StatelessWidget {
  const PullRequestsPage({super.key, required this.repositoryId});

  final int repositoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PullRequestsBloc(
        repositoryId: repositoryId,
        getPullRequestsForRepositoryUseCase: getIt.get(),
      )..add(Init()),
      child: PullRequestsScreen(),
    );
  }
}
