// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pull_requests_bloc.dart';

class PullRequestsEventMapper extends ClassMapperBase<PullRequestsEvent> {
  PullRequestsEventMapper._();

  static PullRequestsEventMapper? _instance;
  static PullRequestsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PullRequestsEventMapper._());
      InitMapper.ensureInitialized();
      EndOfListReachedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PullRequestsEvent';

  @override
  final MappableFields<PullRequestsEvent> fields = const {};

  static PullRequestsEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('PullRequestsEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static PullRequestsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PullRequestsEvent>(map);
  }

  static PullRequestsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PullRequestsEvent>(json);
  }
}

mixin PullRequestsEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PullRequestsEventCopyWith<PullRequestsEvent, PullRequestsEvent,
      PullRequestsEvent> get copyWith;
}

abstract class PullRequestsEventCopyWith<$R, $In extends PullRequestsEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PullRequestsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends ClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      PullRequestsEventMapper.ensureInitialized();
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
    implements PullRequestsEventCopyWith<$R, $In, $Out> {
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

class EndOfListReachedMapper extends ClassMapperBase<EndOfListReached> {
  EndOfListReachedMapper._();

  static EndOfListReachedMapper? _instance;
  static EndOfListReachedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EndOfListReachedMapper._());
      PullRequestsEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EndOfListReached';

  @override
  final MappableFields<EndOfListReached> fields = const {};

  static EndOfListReached _instantiate(DecodingData data) {
    return EndOfListReached();
  }

  @override
  final Function instantiate = _instantiate;

  static EndOfListReached fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EndOfListReached>(map);
  }

  static EndOfListReached fromJson(String json) {
    return ensureInitialized().decodeJson<EndOfListReached>(json);
  }
}

mixin EndOfListReachedMappable {
  String toJson() {
    return EndOfListReachedMapper.ensureInitialized()
        .encodeJson<EndOfListReached>(this as EndOfListReached);
  }

  Map<String, dynamic> toMap() {
    return EndOfListReachedMapper.ensureInitialized()
        .encodeMap<EndOfListReached>(this as EndOfListReached);
  }

  EndOfListReachedCopyWith<EndOfListReached, EndOfListReached, EndOfListReached>
      get copyWith => _EndOfListReachedCopyWithImpl(
          this as EndOfListReached, $identity, $identity);
  @override
  String toString() {
    return EndOfListReachedMapper.ensureInitialized()
        .stringifyValue(this as EndOfListReached);
  }

  @override
  bool operator ==(Object other) {
    return EndOfListReachedMapper.ensureInitialized()
        .equalsValue(this as EndOfListReached, other);
  }

  @override
  int get hashCode {
    return EndOfListReachedMapper.ensureInitialized()
        .hashValue(this as EndOfListReached);
  }
}

extension EndOfListReachedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EndOfListReached, $Out> {
  EndOfListReachedCopyWith<$R, EndOfListReached, $Out>
      get $asEndOfListReached =>
          $base.as((v, t, t2) => _EndOfListReachedCopyWithImpl(v, t, t2));
}

abstract class EndOfListReachedCopyWith<$R, $In extends EndOfListReached, $Out>
    implements PullRequestsEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  EndOfListReachedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EndOfListReachedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EndOfListReached, $Out>
    implements EndOfListReachedCopyWith<$R, EndOfListReached, $Out> {
  _EndOfListReachedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EndOfListReached> $mapper =
      EndOfListReachedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  EndOfListReached $make(CopyWithData data) => EndOfListReached();

  @override
  EndOfListReachedCopyWith<$R2, EndOfListReached, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EndOfListReachedCopyWithImpl($value, $cast, t);
}

class PullRequestsStateMapper extends ClassMapperBase<PullRequestsState> {
  PullRequestsStateMapper._();

  static PullRequestsStateMapper? _instance;
  static PullRequestsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PullRequestsStateMapper._());
      PullRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PullRequestsState';

  static bool _$isLoading(PullRequestsState v) => v.isLoading;
  static const Field<PullRequestsState, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: true);
  static List<PullRequest> _$pullRequests(PullRequestsState v) =>
      v.pullRequests;
  static const Field<PullRequestsState, List<PullRequest>> _f$pullRequests =
      Field('pullRequests', _$pullRequests, opt: true, def: const []);
  static Exception? _$error(PullRequestsState v) => v.error;
  static const Field<PullRequestsState, Exception> _f$error =
      Field('error', _$error, opt: true);

  @override
  final MappableFields<PullRequestsState> fields = const {
    #isLoading: _f$isLoading,
    #pullRequests: _f$pullRequests,
    #error: _f$error,
  };

  static PullRequestsState _instantiate(DecodingData data) {
    return PullRequestsState(
        isLoading: data.dec(_f$isLoading),
        pullRequests: data.dec(_f$pullRequests),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static PullRequestsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PullRequestsState>(map);
  }

  static PullRequestsState fromJson(String json) {
    return ensureInitialized().decodeJson<PullRequestsState>(json);
  }
}

mixin PullRequestsStateMappable {
  String toJson() {
    return PullRequestsStateMapper.ensureInitialized()
        .encodeJson<PullRequestsState>(this as PullRequestsState);
  }

  Map<String, dynamic> toMap() {
    return PullRequestsStateMapper.ensureInitialized()
        .encodeMap<PullRequestsState>(this as PullRequestsState);
  }

  PullRequestsStateCopyWith<PullRequestsState, PullRequestsState,
          PullRequestsState>
      get copyWith => _PullRequestsStateCopyWithImpl(
          this as PullRequestsState, $identity, $identity);
  @override
  String toString() {
    return PullRequestsStateMapper.ensureInitialized()
        .stringifyValue(this as PullRequestsState);
  }

  @override
  bool operator ==(Object other) {
    return PullRequestsStateMapper.ensureInitialized()
        .equalsValue(this as PullRequestsState, other);
  }

  @override
  int get hashCode {
    return PullRequestsStateMapper.ensureInitialized()
        .hashValue(this as PullRequestsState);
  }
}

extension PullRequestsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PullRequestsState, $Out> {
  PullRequestsStateCopyWith<$R, PullRequestsState, $Out>
      get $asPullRequestsState =>
          $base.as((v, t, t2) => _PullRequestsStateCopyWithImpl(v, t, t2));
}

abstract class PullRequestsStateCopyWith<$R, $In extends PullRequestsState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, PullRequest,
      PullRequestCopyWith<$R, PullRequest, PullRequest>> get pullRequests;
  $R call({bool? isLoading, List<PullRequest>? pullRequests, Exception? error});
  PullRequestsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PullRequestsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PullRequestsState, $Out>
    implements PullRequestsStateCopyWith<$R, PullRequestsState, $Out> {
  _PullRequestsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PullRequestsState> $mapper =
      PullRequestsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, PullRequest,
          PullRequestCopyWith<$R, PullRequest, PullRequest>>
      get pullRequests => ListCopyWith($value.pullRequests,
          (v, t) => v.copyWith.$chain(t), (v) => call(pullRequests: v));
  @override
  $R call(
          {bool? isLoading,
          List<PullRequest>? pullRequests,
          Object? error = $none}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (pullRequests != null) #pullRequests: pullRequests,
        if (error != $none) #error: error
      }));
  @override
  PullRequestsState $make(CopyWithData data) => PullRequestsState(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      pullRequests: data.get(#pullRequests, or: $value.pullRequests),
      error: data.get(#error, or: $value.error));

  @override
  PullRequestsStateCopyWith<$R2, PullRequestsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PullRequestsStateCopyWithImpl($value, $cast, t);
}
