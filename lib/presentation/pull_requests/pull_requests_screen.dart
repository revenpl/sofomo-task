import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sofomo/presentation/pull_requests/bloc/pull_requests_bloc.dart';
import 'package:sofomo/presentation/widgets/pull_request_list_item.dart';

class PullRequestsScreen extends StatefulWidget {
  const PullRequestsScreen({super.key});

  @override
  State<PullRequestsScreen> createState() => _PullRequestsScreenState();
}

class _PullRequestsScreenState extends State<PullRequestsScreen> {
  late final ScrollController _scrollController;

  static const _separatorHeight = 12.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(
        () {
          if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
            context.read<PullRequestsBloc>().add(EndOfListReached());
          }
        },
      );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PullRequestsBloc, PullRequestsState>(
      builder: (context, state) {
        if (!state.isLoading && state.pullRequests.isEmpty) {
          return Text('No result');
        }
        return ListView.separated(
          controller: _scrollController,
          itemBuilder: (context, index) => index < state.pullRequests.length
              ? PullRequestListItem(pullRequest: state.pullRequests[index])
              : const Center(child: CircularProgressIndicator()),
          separatorBuilder: (context, index) => Gap(_separatorHeight),
          itemCount: state.isLoading ? state.pullRequests.length + 1 : state.pullRequests.length,
        );
      },
    );
  }
}
