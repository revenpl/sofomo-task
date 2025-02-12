part of 'repository_details_bloc.dart';

@immutable
@MappableClass()
sealed class RepositoryDetailsEvent with RepositoryDetailsEventMappable {
  const RepositoryDetailsEvent();
}

@MappableClass()
class Init extends RepositoryDetailsEvent with InitMappable {
  const Init();
}
