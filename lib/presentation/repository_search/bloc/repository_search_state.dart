part of 'repository_search_bloc.dart';

@immutable
@MappableClass()
class RepositorySearchState with RepositorySearchStateMappable {
  const RepositorySearchState({
    this.isLoading = false,
    this.repositories = const [],
    this.repositoryIdToNavigate,
    this.error,
  });

  final bool isLoading;
  final List<Repository> repositories;
  final int? repositoryIdToNavigate;
  final Exception? error;
}
