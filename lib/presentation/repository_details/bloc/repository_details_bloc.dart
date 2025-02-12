import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/use_case/get_repository_use_case.dart';

part 'package:sofomo/presentation/repository_details/bloc/repository_details_bloc.mapper.dart';
part 'repository_details_event.dart';
part 'repository_details_state.dart';

class RepositoryDetailsBloc extends Bloc<RepositoryDetailsEvent, RepositoryDetailsState> {
  RepositoryDetailsBloc({required this.repositoryId, required GetRepositoryUseCase getRepositoryUseCase})
      : _getRepositoryUseCase = getRepositoryUseCase,
        super(const RepositoryDetailsState()) {
    on<Init>(_onInit);
  }

  final int repositoryId;
  final GetRepositoryUseCase _getRepositoryUseCase;

  Future<void> _onInit(Init event, Emitter<RepositoryDetailsState> emit) async {
    final result = await _getRepositoryUseCase(repositoryId);

    switch (result) {
      case ValueResult():
        emit(state.copyWith(isLoading: false, repository: result.value));
        break;
      case ErrorResult():
        emit(state.copyWith(isLoading: false, error: result.error as Exception));
        return;
    }
  }
}
