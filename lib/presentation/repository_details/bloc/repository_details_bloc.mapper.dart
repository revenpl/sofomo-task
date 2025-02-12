// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository_details_bloc.dart';

class RepositoryDetailsEventMapper
    extends ClassMapperBase<RepositoryDetailsEvent> {
  RepositoryDetailsEventMapper._();

  static RepositoryDetailsEventMapper? _instance;
  static RepositoryDetailsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryDetailsEventMapper._());
      InitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositoryDetailsEvent';

  @override
  final MappableFields<RepositoryDetailsEvent> fields = const {};

  static RepositoryDetailsEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('RepositoryDetailsEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static RepositoryDetailsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositoryDetailsEvent>(map);
  }

  static RepositoryDetailsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RepositoryDetailsEvent>(json);
  }
}

mixin RepositoryDetailsEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RepositoryDetailsEventCopyWith<RepositoryDetailsEvent, RepositoryDetailsEvent,
      RepositoryDetailsEvent> get copyWith;
}

abstract class RepositoryDetailsEventCopyWith<
    $R,
    $In extends RepositoryDetailsEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RepositoryDetailsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends ClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      RepositoryDetailsEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  static Init _instantiate(DecodingData data) {
    return Init();
  }

  @override
  final Function instantiate = _instantiate;

  static Init fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Init>(map);
  }

  static Init fromJson(String json) {
    return ensureInitialized().decodeJson<Init>(json);
  }
}

mixin InitMappable {
  String toJson() {
    return InitMapper.ensureInitialized().encodeJson<Init>(this as Init);
  }

  Map<String, dynamic> toMap() {
    return InitMapper.ensureInitialized().encodeMap<Init>(this as Init);
  }

  InitCopyWith<Init, Init, Init> get copyWith =>
      _InitCopyWithImpl(this as Init, $identity, $identity);
  @override
  String toString() {
    return InitMapper.ensureInitialized().stringifyValue(this as Init);
  }

  @override
  bool operator ==(Object other) {
    return InitMapper.ensureInitialized().equalsValue(this as Init, other);
  }

  @override
  int get hashCode {
    return InitMapper.ensureInitialized().hashValue(this as Init);
  }
}

extension InitValueCopy<$R, $Out> on ObjectCopyWith<$R, Init, $Out> {
  InitCopyWith<$R, Init, $Out> get $asInit =>
      $base.as((v, t, t2) => _InitCopyWithImpl(v, t, t2));
}

abstract class InitCopyWith<$R, $In extends Init, $Out>
    implements RepositoryDetailsEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Init $make(CopyWithData data) => Init();

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl($value, $cast, t);
}

class RepositoryDetailsStateMapper
    extends ClassMapperBase<RepositoryDetailsState> {
  RepositoryDetailsStateMapper._();

  static RepositoryDetailsStateMapper? _instance;
  static RepositoryDetailsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryDetailsStateMapper._());
      RepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositoryDetailsState';

  static bool _$isLoading(RepositoryDetailsState v) => v.isLoading;
  static const Field<RepositoryDetailsState, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: true);
  static Repository? _$repository(RepositoryDetailsState v) => v.repository;
  static const Field<RepositoryDetailsState, Repository> _f$repository =
      Field('repository', _$repository, opt: true);
  static Exception? _$error(RepositoryDetailsState v) => v.error;
  static const Field<RepositoryDetailsState, Exception> _f$error =
      Field('error', _$error, opt: true);

  @override
  final MappableFields<RepositoryDetailsState> fields = const {
    #isLoading: _f$isLoading,
    #repository: _f$repository,
    #error: _f$error,
  };

  static RepositoryDetailsState _instantiate(DecodingData data) {
    return RepositoryDetailsState(
        isLoading: data.dec(_f$isLoading),
        repository: data.dec(_f$repository),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static RepositoryDetailsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositoryDetailsState>(map);
  }

  static RepositoryDetailsState fromJson(String json) {
    return ensureInitialized().decodeJson<RepositoryDetailsState>(json);
  }
}

mixin RepositoryDetailsStateMappable {
  String toJson() {
    return RepositoryDetailsStateMapper.ensureInitialized()
        .encodeJson<RepositoryDetailsState>(this as RepositoryDetailsState);
  }

  Map<String, dynamic> toMap() {
    return RepositoryDetailsStateMapper.ensureInitialized()
        .encodeMap<RepositoryDetailsState>(this as RepositoryDetailsState);
  }

  RepositoryDetailsStateCopyWith<RepositoryDetailsState, RepositoryDetailsState,
          RepositoryDetailsState>
      get copyWith => _RepositoryDetailsStateCopyWithImpl(
          this as RepositoryDetailsState, $identity, $identity);
  @override
  String toString() {
    return RepositoryDetailsStateMapper.ensureInitialized()
        .stringifyValue(this as RepositoryDetailsState);
  }

  @override
  bool operator ==(Object other) {
    return RepositoryDetailsStateMapper.ensureInitialized()
        .equalsValue(this as RepositoryDetailsState, other);
  }

  @override
  int get hashCode {
    return RepositoryDetailsStateMapper.ensureInitialized()
        .hashValue(this as RepositoryDetailsState);
  }
}

extension RepositoryDetailsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositoryDetailsState, $Out> {
  RepositoryDetailsStateCopyWith<$R, RepositoryDetailsState, $Out>
      get $asRepositoryDetailsState =>
          $base.as((v, t, t2) => _RepositoryDetailsStateCopyWithImpl(v, t, t2));
}

abstract class RepositoryDetailsStateCopyWith<
    $R,
    $In extends RepositoryDetailsState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  RepositoryCopyWith<$R, Repository, Repository>? get repository;
  $R call({bool? isLoading, Repository? repository, Exception? error});
  RepositoryDetailsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositoryDetailsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositoryDetailsState, $Out>
    implements
        RepositoryDetailsStateCopyWith<$R, RepositoryDetailsState, $Out> {
  _RepositoryDetailsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositoryDetailsState> $mapper =
      RepositoryDetailsStateMapper.ensureInitialized();
  @override
  RepositoryCopyWith<$R, Repository, Repository>? get repository =>
      $value.repository?.copyWith.$chain((v) => call(repository: v));
  @override
  $R call(
          {bool? isLoading,
          Object? repository = $none,
          Object? error = $none}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (repository != $none) #repository: repository,
        if (error != $none) #error: error
      }));
  @override
  RepositoryDetailsState $make(CopyWithData data) => RepositoryDetailsState(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      repository: data.get(#repository, or: $value.repository),
      error: data.get(#error, or: $value.error));

  @override
  RepositoryDetailsStateCopyWith<$R2, RepositoryDetailsState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RepositoryDetailsStateCopyWithImpl($value, $cast, t);
}
