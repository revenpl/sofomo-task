// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository.dart';

class RepositoryMapper extends ClassMapperBase<Repository> {
  RepositoryMapper._();

  static RepositoryMapper? _instance;
  static RepositoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Repository';

  static String _$name(Repository v) => v.name;
  static const Field<Repository, String> _f$name = Field('name', _$name);
  static int _$id(Repository v) => v.id;
  static const Field<Repository, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<Repository> fields = const {
    #name: _f$name,
    #id: _f$id,
  };

  static Repository _instantiate(DecodingData data) {
    return Repository(name: data.dec(_f$name), id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static Repository fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Repository>(map);
  }

  static Repository fromJson(String json) {
    return ensureInitialized().decodeJson<Repository>(json);
  }
}

mixin RepositoryMappable {
  String toJson() {
    return RepositoryMapper.ensureInitialized()
        .encodeJson<Repository>(this as Repository);
  }

  Map<String, dynamic> toMap() {
    return RepositoryMapper.ensureInitialized()
        .encodeMap<Repository>(this as Repository);
  }

  RepositoryCopyWith<Repository, Repository, Repository> get copyWith =>
      _RepositoryCopyWithImpl(this as Repository, $identity, $identity);
  @override
  String toString() {
    return RepositoryMapper.ensureInitialized()
        .stringifyValue(this as Repository);
  }

  @override
  bool operator ==(Object other) {
    return RepositoryMapper.ensureInitialized()
        .equalsValue(this as Repository, other);
  }

  @override
  int get hashCode {
    return RepositoryMapper.ensureInitialized().hashValue(this as Repository);
  }
}

extension RepositoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Repository, $Out> {
  RepositoryCopyWith<$R, Repository, $Out> get $asRepository =>
      $base.as((v, t, t2) => _RepositoryCopyWithImpl(v, t, t2));
}

abstract class RepositoryCopyWith<$R, $In extends Repository, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, int? id});
  RepositoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RepositoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Repository, $Out>
    implements RepositoryCopyWith<$R, Repository, $Out> {
  _RepositoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Repository> $mapper =
      RepositoryMapper.ensureInitialized();
  @override
  $R call({String? name, int? id}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (id != null) #id: id}));
  @override
  Repository $make(CopyWithData data) => Repository(
      name: data.get(#name, or: $value.name), id: data.get(#id, or: $value.id));

  @override
  RepositoryCopyWith<$R2, Repository, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RepositoryCopyWithImpl($value, $cast, t);
}
