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
import 'package:sofomo/domain/model/repository.dart';
import 'package:sofomo/domain/use_case/get_repository_use_case.dart';
import 'package:sofomo/presentation/repository_details/bloc/repository_details_bloc.dart';

import 'repository_details_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetRepositoryUseCase>()])
void main() {
  late GetRepositoryUseCase getRepositoryUseCase;
  late RepositoryDetailsBloc repositoryDetailsBloc;

  const _fakeRepoId = 0;

  final _mockRepository = Repository(id: 0, name: 'Sofomo');
  final _exception = Exception();

  group(
    'PullRequestsBloc',
    () {
      setUp(
        () {
          getRepositoryUseCase = MockGetRepositoryUseCase();
          repositoryDetailsBloc =
              RepositoryDetailsBloc(repositoryId: _fakeRepoId, getRepositoryUseCase: getRepositoryUseCase);
        },
      );

      test('initial state', () {
        expect(repositoryDetailsBloc.state, const RepositoryDetailsState());
      });

      blocTest<RepositoryDetailsBloc, RepositoryDetailsState>(
        'initialization',
        build: () => repositoryDetailsBloc,
        act: (bloc) async {
          when(getRepositoryUseCase(_fakeRepoId)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockRepository),
            ),
          );
          bloc.add(const Init());
        },
        expect: () => [
          RepositoryDetailsState().copyWith(isLoading: false, repository: _mockRepository),
        ],
        verify: (bloc) => verify(getRepositoryUseCase(_fakeRepoId)).called(1),
      );

      blocTest<RepositoryDetailsBloc, RepositoryDetailsState>(
        'error',
        build: () => repositoryDetailsBloc,
        act: (bloc) async {
          when(getRepositoryUseCase(_fakeRepoId)).thenAnswer(
            (realInvocation) => Future(
              () => Result.error(_exception),
            ),
          );
          bloc.add(const Init());
        },
        expect: () => [
          RepositoryDetailsState().copyWith(isLoading: false, error: _exception),
        ],
        verify: (bloc) => verify(getRepositoryUseCase(_fakeRepoId)).called(1),
      );

      blocTest<RepositoryDetailsBloc, RepositoryDetailsState>(
        'error',
        build: () => repositoryDetailsBloc,
        act: (bloc) async {
          when(getRepositoryUseCase(_fakeRepoId)).thenAnswer(
                (realInvocation) => Future(
                  () => Result.error(_exception),
            ),
          );
          bloc.add(const Init());
        },
        expect: () => [
          RepositoryDetailsState().copyWith(isLoading: false, error: _exception),
        ],
        verify: (bloc) => verify(getRepositoryUseCase(_fakeRepoId)).called(1),
      );
    },
  );
}
