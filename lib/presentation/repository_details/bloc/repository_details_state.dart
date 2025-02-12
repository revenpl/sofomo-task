part of 'repository_details_bloc.dart';

@immutable
@MappableClass()
class RepositoryDetailsState with RepositoryDetailsStateMappable {
  const RepositoryDetailsState({this.isLoading = true, this.repository, this.error});

  final bool isLoading;
  final Repository? repository;
  final Exception? error;
}
