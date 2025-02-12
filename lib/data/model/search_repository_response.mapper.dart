// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_repository_response.dart';

class SearchRepositoryResponseMapper
    extends ClassMapperBase<SearchRepositoryResponse> {
  SearchRepositoryResponseMapper._();

  static SearchRepositoryResponseMapper? _instance;
  static SearchRepositoryResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SearchRepositoryResponseMapper._());
      RepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchRepositoryResponse';

  static List<Repository> _$items(SearchRepositoryResponse v) => v.items;
  static const Field<SearchRepositoryResponse, List<Repository>> _f$items =
      Field('items', _$items);
  static int _$totalCount(SearchRepositoryResponse v) => v.totalCount;
  static const Field<SearchRepositoryResponse, int> _f$totalCount =
      Field('totalCount', _$totalCount, key: r'total_count');

  @override
  final MappableFields<SearchRepositoryResponse> fields = const {
    #items: _f$items,
    #totalCount: _f$totalCount,
  };

  static SearchRepositoryResponse _instantiate(DecodingData data) {
    return SearchRepositoryResponse(
        items: data.dec(_f$items), totalCount: data.dec(_f$totalCount));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchRepositoryResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchRepositoryResponse>(map);
  }

  static SearchRepositoryResponse fromJson(String json) {
    return ensureInitialized().decodeJson<SearchRepositoryResponse>(json);
  }
}

mixin SearchRepositoryResponseMappable {
  String toJson() {
    return SearchRepositoryResponseMapper.ensureInitialized()
        .encodeJson<SearchRepositoryResponse>(this as SearchRepositoryResponse);
  }

  Map<String, dynamic> toMap() {
    return SearchRepositoryResponseMapper.ensureInitialized()
        .encodeMap<SearchRepositoryResponse>(this as SearchRepositoryResponse);
  }

  SearchRepositoryResponseCopyWith<SearchRepositoryResponse,
          SearchRepositoryResponse, SearchRepositoryResponse>
      get copyWith => _SearchRepositoryResponseCopyWithImpl(
          this as SearchRepositoryResponse, $identity, $identity);
  @override
  String toString() {
    return SearchRepositoryResponseMapper.ensureInitialized()
        .stringifyValue(this as SearchRepositoryResponse);
  }

  @override
  bool operator ==(Object other) {
    return SearchRepositoryResponseMapper.ensureInitialized()
        .equalsValue(this as SearchRepositoryResponse, other);
  }

  @override
  int get hashCode {
    return SearchRepositoryResponseMapper.ensureInitialized()
        .hashValue(this as SearchRepositoryResponse);
  }
}

extension SearchRepositoryResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchRepositoryResponse, $Out> {
  SearchRepositoryResponseCopyWith<$R, SearchRepositoryResponse, $Out>
      get $asSearchRepositoryResponse => $base
          .as((v, t, t2) => _SearchRepositoryResponseCopyWithImpl(v, t, t2));
}

abstract class SearchRepositoryResponseCopyWith<
    $R,
    $In extends SearchRepositoryResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Repository, RepositoryCopyWith<$R, Repository, Repository>>
      get items;
  $R call({List<Repository>? items, int? totalCount});
  SearchRepositoryResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchRepositoryResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchRepositoryResponse, $Out>
    implements
        SearchRepositoryResponseCopyWith<$R, SearchRepositoryResponse, $Out> {
  _SearchRepositoryResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchRepositoryResponse> $mapper =
      SearchRepositoryResponseMapper.ensureInitialized();
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
  SearchRepositoryResponse $make(CopyWithData data) => SearchRepositoryResponse(
      items: data.get(#items, or: $value.items),
      totalCount: data.get(#totalCount, or: $value.totalCount));

  @override
  SearchRepositoryResponseCopyWith<$R2, SearchRepositoryResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SearchRepositoryResponseCopyWithImpl($value, $cast, t);
}
