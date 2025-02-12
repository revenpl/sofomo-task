import 'package:async/async.dart';
import 'package:sofomo/domain/model/pull_request.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/model/repository.dart';

abstract interface class RepositoryRepository {
  Future<Result<RepositoriesPage>> searchRepositories({
    required String searchText,
    required int page,
    required int perPage,
  });

  Future<Result<Repository>> getRepository(int id);

  Future<Result<List<PullRequest>>> getPullRequestsForRepository({
    required int repositoryId,
    required int page,
    required int perPage,
  });
}
