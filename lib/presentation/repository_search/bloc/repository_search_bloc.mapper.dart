// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository_search_bloc.dart';

class RepositorySearchEventMapper
    extends ClassMapperBase<RepositorySearchEvent> {
  RepositorySearchEventMapper._();

  static RepositorySearchEventMapper? _instance;
  static RepositorySearchEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositorySearchEventMapper._());
      SearchBarTextChangedMapper.ensureInitialized();
      EndOfListReachedMapper.ensureInitialized();
      RepositorySelectedMapper.ensureInitialized();
      NavigationDoneMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositorySearchEvent';

  @override
  final MappableFields<RepositorySearchEvent> fields = const {};

  static RepositorySearchEvent _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('RepositorySearchEvent');
  }

  @override
  final Function instantiate = _instantiate;

  static RepositorySearchEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositorySearchEvent>(map);
  }

  static RepositorySearchEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RepositorySearchEvent>(json);
  }
}

mixin RepositorySearchEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RepositorySearchEventCopyWith<RepositorySearchEvent, RepositorySearchEvent,
      RepositorySearchEvent> get copyWith;
}

abstract class RepositorySearchEventCopyWith<
    $R,
    $In extends RepositorySearchEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RepositorySearchEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class SearchBarTextChangedMapper extends ClassMapperBase<SearchBarTextChanged> {
  SearchBarTextChangedMapper._();

  static SearchBarTextChangedMapper? _instance;
  static SearchBarTextChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchBarTextChangedMapper._());
      RepositorySearchEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchBarTextChanged';

  static String _$text(SearchBarTextChanged v) => v.text;
  static const Field<SearchBarTextChanged, String> _f$text =
      Field('text', _$text);

  @override
  final MappableFields<SearchBarTextChanged> fields = const {
    #text: _f$text,
  };

  static SearchBarTextChanged _instantiate(DecodingData data) {
    return SearchBarTextChanged(data.dec(_f$text));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchBarTextChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchBarTextChanged>(map);
  }

  static SearchBarTextChanged fromJson(String json) {
    return ensureInitialized().decodeJson<SearchBarTextChanged>(json);
  }
}

mixin SearchBarTextChangedMappable {
  String toJson() {
    return SearchBarTextChangedMapper.ensureInitialized()
        .encodeJson<SearchBarTextChanged>(this as SearchBarTextChanged);
  }

  Map<String, dynamic> toMap() {
    return SearchBarTextChangedMapper.ensureInitialized()
        .encodeMap<SearchBarTextChanged>(this as SearchBarTextChanged);
  }

  SearchBarTextChangedCopyWith<SearchBarTextChanged, SearchBarTextChanged,
          SearchBarTextChanged>
      get copyWith => _SearchBarTextChangedCopyWithImpl(
          this as SearchBarTextChanged, $identity, $identity);
  @override
  String toString() {
    return SearchBarTextChangedMapper.ensureInitialized()
        .stringifyValue(this as SearchBarTextChanged);
  }

  @override
  bool operator ==(Object other) {
    return SearchBarTextChangedMapper.ensureInitialized()
        .equalsValue(this as SearchBarTextChanged, other);
  }

  @override
  int get hashCode {
    return SearchBarTextChangedMapper.ensureInitialized()
        .hashValue(this as SearchBarTextChanged);
  }
}

extension SearchBarTextChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchBarTextChanged, $Out> {
  SearchBarTextChangedCopyWith<$R, SearchBarTextChanged, $Out>
      get $asSearchBarTextChanged =>
          $base.as((v, t, t2) => _SearchBarTextChangedCopyWithImpl(v, t, t2));
}

abstract class SearchBarTextChangedCopyWith<
    $R,
    $In extends SearchBarTextChanged,
    $Out> implements RepositorySearchEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? text});
  SearchBarTextChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchBarTextChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchBarTextChanged, $Out>
    implements SearchBarTextChangedCopyWith<$R, SearchBarTextChanged, $Out> {
  _SearchBarTextChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchBarTextChanged> $mapper =
      SearchBarTextChangedMapper.ensureInitialized();
  @override
  $R call({String? text}) =>
      $apply(FieldCopyWithData({if (text != null) #text: text}));
  @override
  SearchBarTextChanged $make(CopyWithData data) =>
      SearchBarTextChanged(data.get(#text, or: $value.text));

  @override
  SearchBarTextChangedCopyWith<$R2, SearchBarTextChanged, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SearchBarTextChangedCopyWithImpl($value, $cast, t);
}

class EndOfListReachedMapper extends ClassMapperBase<EndOfListReached> {
  EndOfListReachedMapper._();

  static EndOfListReachedMapper? _instance;
  static EndOfListReachedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EndOfListReachedMapper._());
      RepositorySearchEventMapper.ensureInitialized();
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
    implements RepositorySearchEventCopyWith<$R, $In, $Out> {
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

class RepositorySelectedMapper extends ClassMapperBase<RepositorySelected> {
  RepositorySelectedMapper._();

  static RepositorySelectedMapper? _instance;
  static RepositorySelectedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositorySelectedMapper._());
      RepositorySearchEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositorySelected';

  static int _$repositoryId(RepositorySelected v) => v.repositoryId;
  static const Field<RepositorySelected, int> _f$repositoryId =
      Field('repositoryId', _$repositoryId);

  @override
  final MappableFields<RepositorySelected> fields = const {
    #repositoryId: _f$repositoryId,
  };

  static RepositorySelected _instantiate(DecodingData data) {
    return RepositorySelected(data.dec(_f$repositoryId));
  }

  @override
  final Function instantiate = _instantiate;

  static RepositorySelected fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositorySelected>(map);
  }

  static RepositorySelected fromJson(String json) {
    return ensureInitialized().decodeJson<RepositorySelected>(json);
  }
}

mixin RepositorySelectedMappable {
  String toJson() {
    return RepositorySelectedMapper.ensureInitialized()
        .encodeJson<RepositorySelected>(this as RepositorySelected);
  }

  Map<String, dynamic> toMap() {
    return RepositorySelectedMapper.ensureInitialized()
        .encodeMap<RepositorySelected>(this as RepositorySelected);
  }

  RepositorySelectedCopyWith<RepositorySelected, RepositorySelected,
          RepositorySelected>
      get copyWith => _RepositorySelectedCopyWithImpl(
          this as RepositorySelected, $identity, $identity);
  @override
  String toString() {
    return RepositorySelectedMapper.ensureInitialized()
        .stringifyValue(this as RepositorySelected);
  }

  @override
  bool operator ==(Object other) {
    return RepositorySelectedMapper.ensureInitialized()
        .equalsValue(this as RepositorySelected, other);
  }

  @override
  int get hashCode {
    return RepositorySelectedMapper.ensureInitialized()
        .hashValue(this as RepositorySelected);
  }
}

extension RepositorySelectedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositorySelected, $Out> {
  RepositorySelectedCopyWith<$R, RepositorySelected, $Out>
      get $asRepositorySelected =>
          $base.as((v, t, t2) => _RepositorySelectedCopyWithImpl(v, t, t2));
}

abstract class RepositorySelectedCopyWith<$R, $In extends RepositorySelected,
    $Out> implements RepositorySearchEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? repositoryId});
  RepositorySelectedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositorySelectedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositorySelected, $Out>
    implements RepositorySelectedCopyWith<$R, RepositorySelected, $Out> {
  _RepositorySelectedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositorySelected> $mapper =
      RepositorySelectedMapper.ensureInitialized();
  @override
  $R call({int? repositoryId}) => $apply(FieldCopyWithData(
      {if (repositoryId != null) #repositoryId: repositoryId}));
  @override
  RepositorySelected $make(CopyWithData data) =>
      RepositorySelected(data.get(#repositoryId, or: $value.repositoryId));

  @override
  RepositorySelectedCopyWith<$R2, RepositorySelected, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RepositorySelectedCopyWithImpl($value, $cast, t);
}

class NavigationDoneMapper extends ClassMapperBase<NavigationDone> {
  NavigationDoneMapper._();

  static NavigationDoneMapper? _instance;
  static NavigationDoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NavigationDoneMapper._());
      RepositorySearchEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NavigationDone';

  @override
  final MappableFields<NavigationDone> fields = const {};

  static NavigationDone _instantiate(DecodingData data) {
    return NavigationDone();
  }

  @override
  final Function instantiate = _instantiate;

  static NavigationDone fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NavigationDone>(map);
  }

  static NavigationDone fromJson(String json) {
    return ensureInitialized().decodeJson<NavigationDone>(json);
  }
}

mixin NavigationDoneMappable {
  String toJson() {
    return NavigationDoneMapper.ensureInitialized()
        .encodeJson<NavigationDone>(this as NavigationDone);
  }

  Map<String, dynamic> toMap() {
    return NavigationDoneMapper.ensureInitialized()
        .encodeMap<NavigationDone>(this as NavigationDone);
  }

  NavigationDoneCopyWith<NavigationDone, NavigationDone, NavigationDone>
      get copyWith => _NavigationDoneCopyWithImpl(
          this as NavigationDone, $identity, $identity);
  @override
  String toString() {
    return NavigationDoneMapper.ensureInitialized()
        .stringifyValue(this as NavigationDone);
  }

  @override
  bool operator ==(Object other) {
    return NavigationDoneMapper.ensureInitialized()
        .equalsValue(this as NavigationDone, other);
  }

  @override
  int get hashCode {
    return NavigationDoneMapper.ensureInitialized()
        .hashValue(this as NavigationDone);
  }
}

extension NavigationDoneValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NavigationDone, $Out> {
  NavigationDoneCopyWith<$R, NavigationDone, $Out> get $asNavigationDone =>
      $base.as((v, t, t2) => _NavigationDoneCopyWithImpl(v, t, t2));
}

abstract class NavigationDoneCopyWith<$R, $In extends NavigationDone, $Out>
    implements RepositorySearchEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  NavigationDoneCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NavigationDoneCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NavigationDone, $Out>
    implements NavigationDoneCopyWith<$R, NavigationDone, $Out> {
  _NavigationDoneCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NavigationDone> $mapper =
      NavigationDoneMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  NavigationDone $make(CopyWithData data) => NavigationDone();

  @override
  NavigationDoneCopyWith<$R2, NavigationDone, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NavigationDoneCopyWithImpl($value, $cast, t);
}

class RepositorySearchStateMapper
    extends ClassMapperBase<RepositorySearchState> {
  RepositorySearchStateMapper._();

  static RepositorySearchStateMapper? _instance;
  static RepositorySearchStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositorySearchStateMapper._());
      RepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositorySearchState';

  static bool _$isLoading(RepositorySearchState v) => v.isLoading;
  static const Field<RepositorySearchState, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static List<Repository> _$repositories(RepositorySearchState v) =>
      v.repositories;
  static const Field<RepositorySearchState, List<Repository>> _f$repositories =
      Field('repositories', _$repositories, opt: true, def: const []);
  static int? _$repositoryIdToNavigate(RepositorySearchState v) =>
      v.repositoryIdToNavigate;
  static const Field<RepositorySearchState, int> _f$repositoryIdToNavigate =
      Field('repositoryIdToNavigate', _$repositoryIdToNavigate, opt: true);
  static Exception? _$error(RepositorySearchState v) => v.error;
  static const Field<RepositorySearchState, Exception> _f$error =
      Field('error', _$error, opt: true);

  @override
  final MappableFields<RepositorySearchState> fields = const {
    #isLoading: _f$isLoading,
    #repositories: _f$repositories,
    #repositoryIdToNavigate: _f$repositoryIdToNavigate,
    #error: _f$error,
  };

  static RepositorySearchState _instantiate(DecodingData data) {
    return RepositorySearchState(
        isLoading: data.dec(_f$isLoading),
        repositories: data.dec(_f$repositories),
        repositoryIdToNavigate: data.dec(_f$repositoryIdToNavigate),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static RepositorySearchState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositorySearchState>(map);
  }

  static RepositorySearchState fromJson(String json) {
    return ensureInitialized().decodeJson<RepositorySearchState>(json);
  }
}

mixin RepositorySearchStateMappable {
  String toJson() {
    return RepositorySearchStateMapper.ensureInitialized()
        .encodeJson<RepositorySearchState>(this as RepositorySearchState);
  }

  Map<String, dynamic> toMap() {
    return RepositorySearchStateMapper.ensureInitialized()
        .encodeMap<RepositorySearchState>(this as RepositorySearchState);
  }

  RepositorySearchStateCopyWith<RepositorySearchState, RepositorySearchState,
          RepositorySearchState>
      get copyWith => _RepositorySearchStateCopyWithImpl(
          this as RepositorySearchState, $identity, $identity);
  @override
  String toString() {
    return RepositorySearchStateMapper.ensureInitialized()
        .stringifyValue(this as RepositorySearchState);
  }

  @override
  bool operator ==(Object other) {
    return RepositorySearchStateMapper.ensureInitialized()
        .equalsValue(this as RepositorySearchState, other);
  }

  @override
  int get hashCode {
    return RepositorySearchStateMapper.ensureInitialized()
        .hashValue(this as RepositorySearchState);
  }
}

extension RepositorySearchStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositorySearchState, $Out> {
  RepositorySearchStateCopyWith<$R, RepositorySearchState, $Out>
      get $asRepositorySearchState =>
          $base.as((v, t, t2) => _RepositorySearchStateCopyWithImpl(v, t, t2));
}

abstract class RepositorySearchStateCopyWith<
    $R,
    $In extends RepositorySearchState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Repository, RepositoryCopyWith<$R, Repository, Repository>>
      get repositories;
  $R call(
      {bool? isLoading,
      List<Repository>? repositories,
      int? repositoryIdToNavigate,
      Exception? error});
  RepositorySearchStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositorySearchStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositorySearchState, $Out>
    implements RepositorySearchStateCopyWith<$R, RepositorySearchState, $Out> {
  _RepositorySearchStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositorySearchState> $mapper =
      RepositorySearchStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Repository, RepositoryCopyWith<$R, Repository, Repository>>
      get repositories => ListCopyWith($value.repositories,
          (v, t) => v.copyWith.$chain(t), (v) => call(repositories: v));
  @override
  $R call(
          {bool? isLoading,
          List<Repository>? repositories,
          Object? repositoryIdToNavigate = $none,
          Object? error = $none}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (repositories != null) #repositories: repositories,
        if (repositoryIdToNavigate != $none)
          #repositoryIdToNavigate: repositoryIdToNavigate,
        if (error != $none) #error: error
      }));
  @override
  RepositorySearchState $make(CopyWithData data) => RepositorySearchState(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      repositories: data.get(#repositories, or: $value.repositories),
      repositoryIdToNavigate:
          data.get(#repositoryIdToNavigate, or: $value.repositoryIdToNavigate),
      error: data.get(#error, or: $value.error));

  @override
  RepositorySearchStateCopyWith<$R2, RepositorySearchState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RepositorySearchStateCopyWithImpl($value, $cast, t);
}
