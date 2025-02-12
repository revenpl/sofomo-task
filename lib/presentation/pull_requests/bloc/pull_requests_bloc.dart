import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import 'package:sofomo/domain/model/pull_request.dart';
import 'package:sofomo/domain/use_case/get_pull_request_for_repository_use_case.dart';

part 'pull_requests_bloc.mapper.dart';
part 'pull_requests_event.dart';
part 'pull_requests_state.dart';

class PullRequestsBloc extends Bloc<PullRequestsEvent, PullRequestsState> {
  PullRequestsBloc(
      {required this.repositoryId, required GetPullRequestsForRepositoryUseCase getPullRequestsForRepositoryUseCase})
      : _getPullRequestsForRepositoryUseCase = getPullRequestsForRepositoryUseCase,
        super(const PullRequestsState()) {
    on<Init>(_onInit);
    on<EndOfListReached>(_onEndOfListReached);
  }

  bool _isLastPage = false;
  int _page = 1;

  static const _perPage = 10;

  final int repositoryId;
  final GetPullRequestsForRepositoryUseCase _getPullRequestsForRepositoryUseCase;

  Future<void> _onInit(Init event, Emitter<PullRequestsState> emit) async {
    final result = await _loadPullRequests();
    switch (result) {
      case ValueResult():
        if (result.value.length < _perPage) _isLastPage = true;
        emit(state.copyWith(pullRequests: result.value, isLoading: false));
        break;
      case ErrorResult():
        emit(state.copyWith(isLoading: false, error: result.error as Exception));
        break;
    }
  }

  Future<void> _onEndOfListReached(EndOfListReached event, Emitter<PullRequestsState> emit) async {
    if (_isLastPage || state.isLoading) return;
    _page++;

    emit(state.copyWith(isLoading: true));

    final result = await _loadPullRequests();

    switch (result) {
      case ValueResult():
        if (result.value.length < _perPage) _isLastPage = true;
        emit(state.copyWith(pullRequests: state.pullRequests.toList()..addAll(result.value), isLoading: false));
        break;
      case ErrorResult():
        emit(state.copyWith(isLoading: false, error: result.error as Exception, pullRequests: []));
        break;
    }
  }

  Future<Result<List<PullRequest>>> _loadPullRequests() {
    return _getPullRequestsForRepositoryUseCase(
      repositoryId: repositoryId,
      page: _page,
      perPage: _perPage,
    );
  }
}
