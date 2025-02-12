import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/use_case/search_repositories_use_case.dart';

part 'repository_search_bloc.mapper.dart';
part 'repository_search_event.dart';
part 'repository_search_state.dart';

class RepositorySearchBloc extends Bloc<RepositorySearchEvent, RepositorySearchState> {
  RepositorySearchBloc({required SearchRepositoryUseCase searchRepositoryUseCase})
      : _searchRepositoryUseCase = searchRepositoryUseCase,
        super(const RepositorySearchState()) {
    on<SearchBarTextChanged>(_onSearchBarTextChanged);
    on<EndOfListReached>(_onEndOfListReached);
    on<RepositorySelected>(_onRepositorySelected);
    on<NavigationDone>(_onNavigationDone);
  }

  final SearchRepositoryUseCase _searchRepositoryUseCase;

  static const _perPage = 10;

  int _page = 1;
  int _totalCount = 0;
  String _searchText = '';

  Future<void> _onSearchBarTextChanged(SearchBarTextChanged event, Emitter<RepositorySearchState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    _resetPagination();

    _searchText = event.text;

    final result = await _loadRepositories();

    switch (result) {
      case ValueResult():
        _totalCount = result.value.totalCount;
        emit(state.copyWith(isLoading: false, repositories: result.value.items));
        break;
      case ErrorResult():
        emit(state.copyWith(isLoading: false, error: result.error as Exception));
        break;
    }
  }

  Future<void> _onEndOfListReached(EndOfListReached event, Emitter<RepositorySearchState> emit) async {
    if (state.repositories.length >= _totalCount || state.isLoading) return;
    _page++;
    emit(state.copyWith(isLoading: true));
    final result = await _loadRepositories();

    switch (result) {
      case ValueResult():
        _totalCount = result.value.totalCount;
        emit(
          state.copyWith(
            isLoading: false,
            repositories: state.repositories.toList()..addAll(result.value.items),
          ),
        );
        break;
      case ErrorResult():
        _resetPagination();
        emit(state.copyWith(isLoading: false, error: result.error as Exception, repositories: []));
        break;
    }
  }

  void _resetPagination() {
    _page = 1;
    _totalCount = 0;
  }

  Future<Result<RepositoriesPage>> _loadRepositories() {
    return _searchRepositoryUseCase(searchText: _searchText, page: _page, perPage: _perPage);
  }

  void _onRepositorySelected(RepositorySelected event, Emitter<RepositorySearchState> emit) {
    emit(state.copyWith(repositoryIdToNavigate: event.repositoryId));
  }

  void _onNavigationDone(NavigationDone event, Emitter<RepositorySearchState> emit) {
    emit(state.copyWith(repositoryIdToNavigate: null));
  }
}
