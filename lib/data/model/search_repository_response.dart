import 'package:dart_mappable/dart_mappable.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/model/repository.dart';

part 'package:sofomo/data/model/search_repository_response.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SearchRepositoryResponse with SearchRepositoryResponseMappable {
  SearchRepositoryResponse({
    required this.items,
    required this.totalCount,
  });

  final List<Repository> items;
  final int totalCount;

  RepositoriesPage toRepositoriesPage() => RepositoriesPage(items: items, totalCount: totalCount);
}
