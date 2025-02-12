import 'package:async/async.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/repository/repository_repository.dart';

class SearchRepositoryUseCase {
  SearchRepositoryUseCase({required this.repositoryRepository});

  final RepositoryRepository repositoryRepository;

  Future<Result<RepositoriesPage>> call({required String searchText, int page = 1, int perPage = 10}) async {
    if (searchText.length < 3) return Result.value(RepositoriesPage(items: [], totalCount: 0));

    return repositoryRepository.searchRepositories(searchText: searchText.trim(), page: page, perPage: perPage);
  }
}
