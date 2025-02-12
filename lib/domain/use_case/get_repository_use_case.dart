import 'package:async/src/result/result.dart';
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/repository/repository_repository.dart';

class GetRepositoryUseCase {
  GetRepositoryUseCase({required RepositoryRepository repositoryRepository})
      : _repositoryRepository = repositoryRepository;

  final RepositoryRepository _repositoryRepository;

  Future<Result<Repository>> call(int id) async {
    return await _repositoryRepository.getRepository(id);
  }
}
