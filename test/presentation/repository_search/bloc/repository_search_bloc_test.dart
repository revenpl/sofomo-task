// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:async/async.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sofomo/domain/model/repositories_page.dart';
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/use_case/search_repositories_use_case.dart';
import 'package:sofomo/presentation/repository_search/bloc/repository_search_bloc.dart';

import 'repository_search_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SearchRepositoryUseCase>()])
void main() {
  late SearchRepositoryUseCase searchRepositoryUseCase;
  late RepositorySearchBloc repositorySearchBloc;

  final _exception = Exception();
  const _fakeRepoId = 0;
  final _mockRepositoryPageLong = RepositoriesPage(items: [
    Repository(name: 'flutter1', id: 1),
    Repository(name: 'flutter2', id: 2),
    Repository(name: 'flutter3', id: 3),
    Repository(name: 'flutter4', id: 4),
    Repository(name: 'flutter5', id: 5),
    Repository(name: 'flutter6', id: 6),
    Repository(name: 'flutter7', id: 7),
    Repository(name: 'flutter8', id: 8),
    Repository(name: 'flutter9', id: 9),
    Repository(name: 'flutter10', id: 10),
  ], totalCount: 11);
  final _mockRepositoryPage = RepositoriesPage(totalCount: 1, items: [Repository(name: 'flutter', id: 0)]);
  final _textPhrase = 'flutter';

  group(
    'PullRequestsBloc',
    () {
      setUp(
        () {
          searchRepositoryUseCase = MockSearchRepositoryUseCase();
          repositorySearchBloc = RepositorySearchBloc(searchRepositoryUseCase: searchRepositoryUseCase);
        },
      );

      test('initial state', () {
        expect(repositorySearchBloc.state, const RepositorySearchState());
      });

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'searching for flutter repo',
        build: () => repositorySearchBloc,
        act: (bloc) async {
          when(searchRepositoryUseCase(searchText: _textPhrase)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockRepositoryPage),
            ),
          );
          bloc.add(SearchBarTextChanged(_textPhrase));
        },
        expect: () => [
          RepositorySearchState().copyWith(isLoading: true),
          RepositorySearchState().copyWith(isLoading: false, repositories: _mockRepositoryPage.items),
        ],
        verify: (bloc) => verify(searchRepositoryUseCase(searchText: _textPhrase, perPage: 10, page: 1)).called(1),
      );

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'navigation test',
        build: () => repositorySearchBloc,
        act: (bloc) {
          bloc.add(const RepositorySelected(_fakeRepoId));
        },
        expect: () => [
          RepositorySearchState().copyWith(repositoryIdToNavigate: _fakeRepoId),
        ],
      );

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'navigation done',
        build: () => repositorySearchBloc,
        act: (bloc) {
          bloc.add(const NavigationDone());
        },
        seed: () => RepositorySearchState().copyWith(repositoryIdToNavigate: _fakeRepoId),
        expect: () => [
          RepositorySearchState().copyWith(repositoryIdToNavigate: null),
        ],
      );

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'error test',
        build: () => repositorySearchBloc,
        act: (bloc) {
          when(searchRepositoryUseCase(searchText: _textPhrase)).thenAnswer(
            (realInvocation) => Future(
              () => Result.error(_exception),
            ),
          );
          bloc.add(SearchBarTextChanged(_textPhrase));
        },
        expect: () => [
          RepositorySearchState().copyWith(isLoading: true),
          RepositorySearchState().copyWith(error: _exception, isLoading: false),
        ],
      );

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'pagination test when there is no next page',
        build: () => repositorySearchBloc,
        act: (bloc) {
          when(searchRepositoryUseCase(searchText: _textPhrase)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockRepositoryPage),
            ),
          );
          bloc.add(const EndOfListReached());
        },
        expect: () => <RepositorySearchState>[],
      );

      blocTest<RepositorySearchBloc, RepositorySearchState>(
        'pagination test when there is next page',
        build: () => repositorySearchBloc,
        act: (bloc) async {
          when(searchRepositoryUseCase(searchText: _textPhrase, page: 1, perPage: 10)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockRepositoryPageLong),
            ),
          );
          bloc.add(SearchBarTextChanged(_textPhrase));
          await Future<void>.delayed(Duration(seconds: 1));
          when(searchRepositoryUseCase(searchText: _textPhrase, page: 2, perPage: 10)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockRepositoryPage),
            ),
          );
          bloc.add(const EndOfListReached());
          await Future<void>.delayed(Duration(seconds: 1));
        },
        seed: () => RepositorySearchState(),
        expect: () => [
          RepositorySearchState().copyWith(isLoading: true, repositories: []),
          RepositorySearchState().copyWith(isLoading: false, repositories: _mockRepositoryPageLong.items),
          RepositorySearchState().copyWith(isLoading: true, repositories: _mockRepositoryPageLong.items),
          RepositorySearchState()
              .copyWith(isLoading: false, repositories: _mockRepositoryPageLong.items + _mockRepositoryPage.items),
        ],
      );
    },
  );
}
