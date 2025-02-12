part of 'pull_requests_bloc.dart';

@immutable
@MappableClass()
class PullRequestsState with PullRequestsStateMappable {
  const PullRequestsState({this.isLoading = true, this.pullRequests = const [], this.error});

  final bool isLoading;
  final List<PullRequest> pullRequests;
  final Exception? error;
}
