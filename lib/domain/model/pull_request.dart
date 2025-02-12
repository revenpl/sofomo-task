import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'package:sofomo/domain/model/pull_request.mapper.dart';

@immutable
@MappableClass()
class PullRequest with PullRequestMappable {
  PullRequest({required this.state, required this.title, required this.id});

  final int id;
  final String state;
  final String title;
}
