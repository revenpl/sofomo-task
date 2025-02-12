part of 'pull_requests_bloc.dart';

@immutable
@MappableClass()
sealed class PullRequestsEvent with PullRequestsEventMappable {
  const PullRequestsEvent();
}

@MappableClass()
class Init extends PullRequestsEvent with InitMappable {
  const Init();
}

@MappableClass()
class EndOfListReached extends PullRequestsEvent with EndOfListReachedMappable {
  const EndOfListReached();
}