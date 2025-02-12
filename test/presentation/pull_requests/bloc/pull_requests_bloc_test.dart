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
import 'package:sofomo/domain/model/pull_request.dart';
import 'package:sofomo/domain/use_case/get_pull_request_for_repository_use_case.dart';
import 'package:sofomo/presentation/pull_requests/bloc/pull_requests_bloc.dart';

import 'pull_requests_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetPullRequestsForRepositoryUseCase>()])
void main() {
  late GetPullRequestsForRepositoryUseCase getPullRequestsForRepositoryUseCase;
  late PullRequestsBloc pullRequestsBloc;

  const _fakeRepoId = 0;

  final _mockPullRequests = [
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    )
  ];

  final _mockPullRequestsLong = [
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
    PullRequest(
      state: 'state',
      title: 'title',
      id: 123,
    ),
  ];

  final _exception = Exception();

  group(
    'PullRequestsBloc',
    () {
      setUp(
        () {
          getPullRequestsForRepositoryUseCase = MockGetPullRequestsForRepositoryUseCase();
          pullRequestsBloc = PullRequestsBloc(
              repositoryId: _fakeRepoId, getPullRequestsForRepositoryUseCase: getPullRequestsForRepositoryUseCase);
        },
      );

      test('initial state', () {
        expect(pullRequestsBloc.state, const PullRequestsState());
      });

      blocTest<PullRequestsBloc, PullRequestsState>(
        'initialization',
        build: () => pullRequestsBloc,
        act: (bloc) async {
          when(getPullRequestsForRepositoryUseCase(repositoryId: _fakeRepoId)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockPullRequests),
            ),
          );
          bloc.add(const Init());
        },
        expect: () => [
          PullRequestsState(isLoading: false, pullRequests: _mockPullRequests),
        ],
        verify: (bloc) => verify(getPullRequestsForRepositoryUseCase(repositoryId: _fakeRepoId)).called(1),
      );

      blocTest<PullRequestsBloc, PullRequestsState>(
        'pagination test when there is no next page',
        build: () => pullRequestsBloc,
        act: (bloc) async {
          when(getPullRequestsForRepositoryUseCase(repositoryId: _fakeRepoId)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockPullRequests),
            ),
          );
          bloc.add(const EndOfListReached());
        },
        expect: () => List<PullRequestsState>.empty(),
      );

      blocTest<PullRequestsBloc, PullRequestsState>(
        'pagination test when there is next page',
        build: () => pullRequestsBloc,
        act: (bloc) async {
          when(getPullRequestsForRepositoryUseCase(repositoryId: _fakeRepoId, page: 2, perPage: 10)).thenAnswer(
            (realInvocation) => Future(
              () => Result.value(_mockPullRequests),
            ),
          );
          bloc.add(const EndOfListReached());
          await bloc.stream.firstWhere((element) => true,);
        },
        seed: () => PullRequestsState(isLoading: false, pullRequests: _mockPullRequestsLong),
        expect: () => [
          PullRequestsState(isLoading: true, pullRequests: _mockPullRequestsLong),
          PullRequestsState(isLoading: false, pullRequests: _mockPullRequestsLong + _mockPullRequests),
        ],
      );

      blocTest<PullRequestsBloc, PullRequestsState>(
        'error test',
        build: () => pullRequestsBloc,
        act: (bloc) async {
          when(getPullRequestsForRepositoryUseCase(repositoryId: _fakeRepoId, page: 2, perPage: 10)).thenAnswer(
            (realInvocation) => Future(
              () => Result.error(_exception),
            ),
          );
          bloc.add(const EndOfListReached());
        },
        seed: () => PullRequestsState(isLoading: false, pullRequests: _mockPullRequestsLong),
        expect: () => [
          PullRequestsState(isLoading: true, pullRequests: _mockPullRequestsLong),
          PullRequestsState(isLoading: false, pullRequests: [], error: _exception),
        ],
      );
    },
  );
}
