import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo/app/di.dart';
import 'package:sofomo/presentation/repository_details/bloc/repository_details_bloc.dart';
import 'package:sofomo/presentation/repository_details/repository_details_screen.dart';

class RepositoryDetailsPage extends StatelessWidget {
  const RepositoryDetailsPage({super.key, required this.repositoryId});

  final int repositoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RepositoryDetailsBloc(
        repositoryId: repositoryId,
        getRepositoryUseCase: getIt.get(),
      )..add(Init()),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: RepositoryDetailsScreen(
            repositoryId: repositoryId,
          ),
        ),
      ),
    );
  }
}
