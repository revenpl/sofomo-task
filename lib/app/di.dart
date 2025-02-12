import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sofomo/app/interceptors.dart';
import 'package:sofomo/data/repository/repository_repository_impl.dart';
import 'package:sofomo/domain/repository/repository_repository.dart';
import 'package:sofomo/domain/use_case/get_pull_request_for_repository_use_case.dart';
import 'package:sofomo/domain/use_case/get_repository_use_case.dart';
import 'package:sofomo/domain/use_case/search_repositories_use_case.dart';

final getIt = GetIt.instance;

void setupDi() {
  getIt
    ..registerLazySingleton(
      () => Dio(BaseOptions(baseUrl: 'https://api.github.com'))
        ..interceptors.addAll([
          SofomoGithubInterceptor(),
          PrettyDioLogger(requestHeader: true),
        ]),
    )
    ..registerLazySingleton<RepositoryRepository>(() => RepositoryRepositoryImpl(dio: getIt.get()))
    ..registerLazySingleton(() => SearchRepositoryUseCase(repositoryRepository: getIt.get()))
    ..registerLazySingleton(() => GetRepositoryUseCase(repositoryRepository: getIt.get()))
    ..registerLazySingleton(() => GetPullRequestsForRepositoryUseCase(repositoryRepository: getIt.get()));
}
