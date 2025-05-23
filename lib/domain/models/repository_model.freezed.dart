// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RepositoryModel {
  String get name;
  String get description;
  String get language;
  int get openIssues;
  bool get isPrivate;
  int get forks;
  int get watchers;
  String get fullName;
  int get id;

  /// Create a copy of RepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RepositoryModelCopyWith<RepositoryModel> get copyWith =>
      _$RepositoryModelCopyWithImpl<RepositoryModel>(
          this as RepositoryModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepositoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.watchers, watchers) ||
                other.watchers == watchers) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, language,
      openIssues, isPrivate, forks, watchers, fullName, id);

  @override
  String toString() {
    return 'RepositoryModel(name: $name, description: $description, language: $language, openIssues: $openIssues, isPrivate: $isPrivate, forks: $forks, watchers: $watchers, fullName: $fullName, id: $id)';
  }
}

/// @nodoc
abstract mixin class $RepositoryModelCopyWith<$Res> {
  factory $RepositoryModelCopyWith(
          RepositoryModel value, $Res Function(RepositoryModel) _then) =
      _$RepositoryModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String description,
      String language,
      int openIssues,
      bool isPrivate,
      int forks,
      int watchers,
      String fullName,
      int id});
}

/// @nodoc
class _$RepositoryModelCopyWithImpl<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  _$RepositoryModelCopyWithImpl(this._self, this._then);

  final RepositoryModel _self;
  final $Res Function(RepositoryModel) _then;

  /// Create a copy of RepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? openIssues = null,
    Object? isPrivate = null,
    Object? forks = null,
    Object? watchers = null,
    Object? fullName = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      openIssues: null == openIssues
          ? _self.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      forks: null == forks
          ? _self.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _self.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _RepositoryModel implements RepositoryModel {
  _RepositoryModel(
      {required this.name,
      required this.description,
      required this.language,
      required this.openIssues,
      required this.isPrivate,
      required this.forks,
      required this.watchers,
      required this.fullName,
      required this.id});

  @override
  final String name;
  @override
  final String description;
  @override
  final String language;
  @override
  final int openIssues;
  @override
  final bool isPrivate;
  @override
  final int forks;
  @override
  final int watchers;
  @override
  final String fullName;
  @override
  final int id;

  /// Create a copy of RepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RepositoryModelCopyWith<_RepositoryModel> get copyWith =>
      __$RepositoryModelCopyWithImpl<_RepositoryModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.watchers, watchers) ||
                other.watchers == watchers) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, language,
      openIssues, isPrivate, forks, watchers, fullName, id);

  @override
  String toString() {
    return 'RepositoryModel(name: $name, description: $description, language: $language, openIssues: $openIssues, isPrivate: $isPrivate, forks: $forks, watchers: $watchers, fullName: $fullName, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RepositoryModelCopyWith<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  factory _$RepositoryModelCopyWith(
          _RepositoryModel value, $Res Function(_RepositoryModel) _then) =
      __$RepositoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String language,
      int openIssues,
      bool isPrivate,
      int forks,
      int watchers,
      String fullName,
      int id});
}

/// @nodoc
class __$RepositoryModelCopyWithImpl<$Res>
    implements _$RepositoryModelCopyWith<$Res> {
  __$RepositoryModelCopyWithImpl(this._self, this._then);

  final _RepositoryModel _self;
  final $Res Function(_RepositoryModel) _then;

  /// Create a copy of RepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? openIssues = null,
    Object? isPrivate = null,
    Object? forks = null,
    Object? watchers = null,
    Object? fullName = null,
    Object? id = null,
  }) {
    return _then(_RepositoryModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      openIssues: null == openIssues
          ? _self.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      forks: null == forks
          ? _self.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _self.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
