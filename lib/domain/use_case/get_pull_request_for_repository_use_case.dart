import 'package:async/src/result/result.dart';
import 'package:sofomo/domain/model/pull_request.dart';
import 'package:sofomo/domain/repository/repository_repository.dart';

class GetPullRequestsForRepositoryUseCase {
  GetPullRequestsForRepositoryUseCase({required RepositoryRepository repositoryRepository})
      : _repositoryRepository = repositoryRepository;
  final RepositoryRepository _repositoryRepository;

  Future<Result<List<PullRequest>>> call({required int repositoryId, int page = 1, int perPage = 10}) async {
    return _repositoryRepository.getPullRequestsForRepository(repositoryId: repositoryId, page: page, perPage: perPage);
  }
}
