import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sofomo/presentation/pull_requests/pull_requests_page.dart';
import 'package:sofomo/presentation/repository_details/bloc/repository_details_bloc.dart';

class RepositoryDetailsScreen extends StatelessWidget {
  const RepositoryDetailsScreen({super.key, required this.repositoryId});

  static const _padding = const EdgeInsets.all(16.0);
  final int repositoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepositoryDetailsBloc, RepositoryDetailsState>(
      builder: (context, state) {
        return Padding(
          padding: _padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Repository details:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Builder(
                builder: (context) {
                  if (state.isLoading) return const Center(child: CircularProgressIndicator());
                  if (state.error != null) return const Center(child: Text('Error'));

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('id: ${state.repository?.id}'),
                      Text('Name: ${state.repository?.name}'),
                    ],
                  );
                },
              ),
              Gap(24),
              Text(
                'Pull requests:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Expanded(child: PullRequestsPage(repositoryId: repositoryId)),
            ],
          ),
        );
      },
    );
  }
}
