import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:sofomo/domain/model/repository.dart';

part 'package:sofomo/domain/model/repositories_page.mapper.dart';

@immutable
@MappableClass()
class RepositoriesPage with RepositoriesPageMappable {
  RepositoriesPage({
    required this.items,
    required this.totalCount,
  });

  final List<Repository> items;
  final int totalCount;
}
