// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientApi {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, String language, int page)
        popularMovies,
    required TResult Function() discoverMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularMovies value) popularMovies,
    required TResult Function(_DiscoverMovies value) discoverMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientApiCopyWith<$Res> {
  factory $ClientApiCopyWith(ClientApi value, $Res Function(ClientApi) then) =
      _$ClientApiCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClientApiCopyWithImpl<$Res> implements $ClientApiCopyWith<$Res> {
  _$ClientApiCopyWithImpl(this._value, this._then);

  final ClientApi _value;
  // ignore: unused_field
  final $Res Function(ClientApi) _then;
}

/// @nodoc
abstract class _$PopularMoviesCopyWith<$Res> {
  factory _$PopularMoviesCopyWith(
          _PopularMovies value, $Res Function(_PopularMovies) then) =
      __$PopularMoviesCopyWithImpl<$Res>;
  $Res call({String apiKey, String language, int page});
}

/// @nodoc
class __$PopularMoviesCopyWithImpl<$Res> extends _$ClientApiCopyWithImpl<$Res>
    implements _$PopularMoviesCopyWith<$Res> {
  __$PopularMoviesCopyWithImpl(
      _PopularMovies _value, $Res Function(_PopularMovies) _then)
      : super(_value, (v) => _then(v as _PopularMovies));

  @override
  _PopularMovies get _value => super._value as _PopularMovies;

  @override
  $Res call({
    Object? apiKey = freezed,
    Object? language = freezed,
    Object? page = freezed,
  }) {
    return _then(_PopularMovies(
      apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PopularMovies extends _PopularMovies {
  const _$_PopularMovies(this.apiKey, this.language, this.page) : super._();

  @override
  final String apiKey;
  @override
  final String language;
  @override
  final int page;

  @override
  String toString() {
    return 'ClientApi.popularMovies(apiKey: $apiKey, language: $language, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularMovies &&
            const DeepCollectionEquality().equals(other.apiKey, apiKey) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiKey),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$PopularMoviesCopyWith<_PopularMovies> get copyWith =>
      __$PopularMoviesCopyWithImpl<_PopularMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, String language, int page)
        popularMovies,
    required TResult Function() discoverMovies,
  }) {
    return popularMovies(apiKey, language, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
  }) {
    return popularMovies?.call(apiKey, language, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
    required TResult orElse(),
  }) {
    if (popularMovies != null) {
      return popularMovies(apiKey, language, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularMovies value) popularMovies,
    required TResult Function(_DiscoverMovies value) discoverMovies,
  }) {
    return popularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
  }) {
    return popularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
    required TResult orElse(),
  }) {
    if (popularMovies != null) {
      return popularMovies(this);
    }
    return orElse();
  }
}

abstract class _PopularMovies extends ClientApi {
  const factory _PopularMovies(
          final String apiKey, final String language, final int page) =
      _$_PopularMovies;
  const _PopularMovies._() : super._();

  String get apiKey => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PopularMoviesCopyWith<_PopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DiscoverMoviesCopyWith<$Res> {
  factory _$DiscoverMoviesCopyWith(
          _DiscoverMovies value, $Res Function(_DiscoverMovies) then) =
      __$DiscoverMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$DiscoverMoviesCopyWithImpl<$Res> extends _$ClientApiCopyWithImpl<$Res>
    implements _$DiscoverMoviesCopyWith<$Res> {
  __$DiscoverMoviesCopyWithImpl(
      _DiscoverMovies _value, $Res Function(_DiscoverMovies) _then)
      : super(_value, (v) => _then(v as _DiscoverMovies));

  @override
  _DiscoverMovies get _value => super._value as _DiscoverMovies;
}

/// @nodoc

class _$_DiscoverMovies extends _DiscoverMovies {
  const _$_DiscoverMovies() : super._();

  @override
  String toString() {
    return 'ClientApi.discoverMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DiscoverMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, String language, int page)
        popularMovies,
    required TResult Function() discoverMovies,
  }) {
    return discoverMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
  }) {
    return discoverMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, String language, int page)? popularMovies,
    TResult Function()? discoverMovies,
    required TResult orElse(),
  }) {
    if (discoverMovies != null) {
      return discoverMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopularMovies value) popularMovies,
    required TResult Function(_DiscoverMovies value) discoverMovies,
  }) {
    return discoverMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
  }) {
    return discoverMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PopularMovies value)? popularMovies,
    TResult Function(_DiscoverMovies value)? discoverMovies,
    required TResult orElse(),
  }) {
    if (discoverMovies != null) {
      return discoverMovies(this);
    }
    return orElse();
  }
}

abstract class _DiscoverMovies extends ClientApi {
  const factory _DiscoverMovies() = _$_DiscoverMovies;
  const _DiscoverMovies._() : super._();
}
