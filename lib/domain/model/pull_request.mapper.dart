// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pull_request.dart';

class PullRequestMapper extends ClassMapperBase<PullRequest> {
  PullRequestMapper._();

  static PullRequestMapper? _instance;
  static PullRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PullRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PullRequest';

  static String _$state(PullRequest v) => v.state;
  static const Field<PullRequest, String> _f$state = Field('state', _$state);
  static String _$title(PullRequest v) => v.title;
  static const Field<PullRequest, String> _f$title = Field('title', _$title);
  static int _$id(PullRequest v) => v.id;
  static const Field<PullRequest, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<PullRequest> fields = const {
    #state: _f$state,
    #title: _f$title,
    #id: _f$id,
  };

  static PullRequest _instantiate(DecodingData data) {
    return PullRequest(
        state: data.dec(_f$state),
        title: data.dec(_f$title),
        id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static PullRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PullRequest>(map);
  }

  static PullRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PullRequest>(json);
  }
}

mixin PullRequestMappable {
  String toJson() {
    return PullRequestMapper.ensureInitialized()
        .encodeJson<PullRequest>(this as PullRequest);
  }

  Map<String, dynamic> toMap() {
    return PullRequestMapper.ensureInitialized()
        .encodeMap<PullRequest>(this as PullRequest);
  }

  PullRequestCopyWith<PullRequest, PullRequest, PullRequest> get copyWith =>
      _PullRequestCopyWithImpl(this as PullRequest, $identity, $identity);
  @override
  String toString() {
    return PullRequestMapper.ensureInitialized()
        .stringifyValue(this as PullRequest);
  }

  @override
  bool operator ==(Object other) {
    return PullRequestMapper.ensureInitialized()
        .equalsValue(this as PullRequest, other);
  }

  @override
  int get hashCode {
    return PullRequestMapper.ensureInitialized().hashValue(this as PullRequest);
  }
}

extension PullRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PullRequest, $Out> {
  PullRequestCopyWith<$R, PullRequest, $Out> get $asPullRequest =>
      $base.as((v, t, t2) => _PullRequestCopyWithImpl(v, t, t2));
}

abstract class PullRequestCopyWith<$R, $In extends PullRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? state, String? title, int? id});
  PullRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PullRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PullRequest, $Out>
    implements PullRequestCopyWith<$R, PullRequest, $Out> {
  _PullRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PullRequest> $mapper =
      PullRequestMapper.ensureInitialized();
  @override
  $R call({String? state, String? title, int? id}) => $apply(FieldCopyWithData({
        if (state != null) #state: state,
        if (title != null) #title: title,
        if (id != null) #id: id
      }));
  @override
  PullRequest $make(CopyWithData data) => PullRequest(
      state: data.get(#state, or: $value.state),
      title: data.get(#title, or: $value.title),
      id: data.get(#id, or: $value.id));

  @override
  PullRequestCopyWith<$R2, PullRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PullRequestCopyWithImpl($value, $cast, t);
}
