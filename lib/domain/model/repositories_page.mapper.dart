// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repositories_page.dart';

class RepositoriesPageMapper extends ClassMapperBase<RepositoriesPage> {
  RepositoriesPageMapper._();

  static RepositoriesPageMapper? _instance;
  static RepositoriesPageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoriesPageMapper._());
      RepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositoriesPage';

  static List<Repository> _$items(RepositoriesPage v) => v.items;
  static const Field<RepositoriesPage, List<Repository>> _f$items =
      Field('items', _$items);
  static int _$totalCount(RepositoriesPage v) => v.totalCount;
  static const Field<RepositoriesPage, int> _f$totalCount =
      Field('totalCount', _$totalCount);

  @override
  final MappableFields<RepositoriesPage> fields = const {
    #items: _f$items,
    #totalCount: _f$totalCount,
  };

  static RepositoriesPage _instantiate(DecodingData data) {
    return RepositoriesPage(
        items: data.dec(_f$items), totalCount: data.dec(_f$totalCount));
  }

  @override
  final Function instantiate = _instantiate;

  static RepositoriesPage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositoriesPage>(map);
  }

  static RepositoriesPage fromJson(String json) {
    return ensureInitialized().decodeJson<RepositoriesPage>(json);
  }
}

mixin RepositoriesPageMappable {
  String toJson() {
    return RepositoriesPageMapper.ensureInitialized()
        .encodeJson<RepositoriesPage>(this as RepositoriesPage);
  }

  Map<String, dynamic> toMap() {
    return RepositoriesPageMapper.ensureInitialized()
        .encodeMap<RepositoriesPage>(this as RepositoriesPage);
  }

  RepositoriesPageCopyWith<RepositoriesPage, RepositoriesPage, RepositoriesPage>
      get copyWith => _RepositoriesPageCopyWithImpl(
          this as RepositoriesPage, $identity, $identity);
  @override
  String toString() {
    return RepositoriesPageMapper.ensureInitialized()
        .stringifyValue(this as RepositoriesPage);
  }

  @override
  bool operator ==(Object other) {
    return RepositoriesPageMapper.ensureInitialized()
        .equalsValue(this as RepositoriesPage, other);
  }

  @override
  int get hashCode {
    return RepositoriesPageMapper.ensureInitialized()
        .hashValue(this as RepositoriesPage);
  }
}

extension RepositoriesPageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositoriesPage, $Out> {
  RepositoriesPageCopyWith<$R, RepositoriesPage, $Out>
      get $asRepositoriesPage =>
          $base.as((v, t, t2) => _RepositoriesPageCopyWithImpl(v, t, t2));
}

abstract class RepositoriesPageCopyWith<$R, $In extends RepositoriesPage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Repository, RepositoryCopyWith<$R, Repository, Repository>>
      get items;
  $R call({List<Repository>? items, int? totalCount});
  RepositoriesPageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositoriesPageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositoriesPage, $Out>
    implements RepositoriesPageCopyWith<$R, RepositoriesPage, $Out> {
  _RepositoriesPageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositoriesPage> $mapper =
      RepositoriesPageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Repository, RepositoryCopyWith<$R, Repository, Repository>>
      get items => ListCopyWith(
          $value.items, (v, t) => v.copyWith.$chain(t), (v) => call(items: v));
  @override
  $R call({List<Repository>? items, int? totalCount}) =>
      $apply(FieldCopyWithData({
        if (items != null) #items: items,
        if (totalCount != null) #totalCount: totalCount
      }));
  @override
  RepositoriesPage $make(CopyWithData data) => RepositoriesPage(
      items: data.get(#items, or: $value.items),
      totalCount: data.get(#totalCount, or: $value.totalCount));

  @override
  RepositoriesPageCopyWith<$R2, RepositoriesPage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RepositoriesPageCopyWithImpl($value, $cast, t);
}
