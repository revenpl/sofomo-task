import 'dart:developer';

import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:sofomo/data/model/search_repository_response.dart';
import 'package:sofomo/domain/model/pull_request.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/repository/repository_repository.dart';

class RepositoryRepositoryImpl implements RepositoryRepository {
  final Dio dio;

  RepositoryRepositoryImpl({required this.dio});

  @override
  Future<Result<RepositoriesPage>> searchRepositories({
    required String searchText,
    required int page,
    required int perPage,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '/search/repositories',
        queryParameters: {
          'q': searchText,
          'page': page,
          'per_page': perPage,
        },
      );

      if (response.statusCode != 200) {
        return Result.error(Exception('Invalid response status code: ${response.statusCode}'));
      }

      if (response.data == null) {
        return Result.error(Exception('Response data is null'));
      }

      final parsedResponse = SearchRepositoryResponseMapper.fromMap(response.data!);

      return Result.value(parsedResponse.toRepositoriesPage());
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Repository>> getRepository(int id) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '/repositories/$id',
      );

      if (response.statusCode != 200) {
        return Result.error(Exception('Invalid response status code: ${response.statusCode}'));
      }

      if (response.data == null) {
        return Result.error(Exception('Response data is null'));
      }

      final parsedResponse = RepositoryMapper.fromMap(response.data!);

      return Result.value(parsedResponse);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<PullRequest>>> getPullRequestsForRepository({
    required int repositoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      final response = await dio.get<List<dynamic>>(
        '/repositories/$repositoryId/pulls',
        queryParameters: {
          'page': page,
          'per_page': perPage,
        },
      );

      if (response.statusCode != 200) {
        return Result.error(Exception('Invalid response status code: ${response.statusCode}'));
      }

      if (response.data == null) {
        return Result.error(Exception('Response data is null'));
      }

      final pullRequestsList = response.data!.map(
        (pullRequest) => pullRequest as Map<String, dynamic>,
      );

      final parsedResponse = pullRequestsList.map((e) => PullRequestMapper.fromMap(e)).toList();

      return Result.value(parsedResponse);
    } on Exception catch (e) {
      log(e.toString());
      return Result.error(e);
    }
  }
}
