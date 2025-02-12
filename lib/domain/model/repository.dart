import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'package:sofomo/domain/model/repository.mapper.dart';

@immutable
@MappableClass()
class Repository with RepositoryMappable {
  Repository({
    required this.name,
    required this.id,
  });

  final int id;
  final String name;
}
