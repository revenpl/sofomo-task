import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo/app/di.dart';
import 'package:sofomo/presentation/repository_details/route/repository_details_route.dart';
import 'package:sofomo/presentation/repository_search/bloc/repository_search_bloc.dart';
import 'package:sofomo/presentation/repository_search/repository_search_screen.dart';
import 'package:sofomo/presentation/repository_search/route/repository_search_route.dart';

class RepositorySearchPage extends StatelessWidget {
  const RepositorySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepositorySearchBloc>(
      create: (context) => RepositorySearchBloc(searchRepositoryUseCase: getIt.get()),
      child: Builder(builder: (context) {
        return BlocListener<RepositorySearchBloc, RepositorySearchState>(
          listener: (context, state) {
            final repositoryId = state.repositoryIdToNavigate;
            if (repositoryId != null) {
              RepositoryDetailsRoute(id: repositoryId).go(context);
              context.read<RepositorySearchBloc>().add(const NavigationDone());
            }
          },
          listenWhen: (previous, current) =>
              previous.repositoryIdToNavigate == null && current.repositoryIdToNavigate != null,
          child: Scaffold(
            body: const SafeArea(
              child: RepositorySearchScreen(),
            ),
          ),
        );
      }),
    );
  }
}
