part of 'repository_search_bloc.dart';

@immutable
@MappableClass()
sealed class RepositorySearchEvent with RepositorySearchEventMappable {
  const RepositorySearchEvent();
}

@MappableClass()
class SearchBarTextChanged extends RepositorySearchEvent with SearchBarTextChangedMappable {
  const SearchBarTextChanged(this.text);

  final String text;
}

@MappableClass()
class EndOfListReached extends RepositorySearchEvent with EndOfListReachedMappable {
  const EndOfListReached();
}

@MappableClass()
class RepositorySelected extends RepositorySearchEvent with RepositorySelectedMappable {
  const RepositorySelected(this.repositoryId);

  final int repositoryId;
}

@MappableClass()
class NavigationDone extends RepositorySearchEvent with NavigationDoneMappable {
  const NavigationDone();
}
