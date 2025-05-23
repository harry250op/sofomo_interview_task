// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RepositoryDetailsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RepositoryDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RepositoryDetailsState()';
  }
}

/// @nodoc
class $RepositoryDetailsStateCopyWith<$Res> {
  $RepositoryDetailsStateCopyWith(
      RepositoryDetailsState _, $Res Function(RepositoryDetailsState) __);
}

/// @nodoc

class Initial implements RepositoryDetailsState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RepositoryDetailsState.initial()';
  }
}

/// @nodoc

class Loading implements RepositoryDetailsState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RepositoryDetailsState.loading()';
  }
}

/// @nodoc

class Error implements RepositoryDetailsState {
  const Error({required this.message, required this.repository});

  final String message;
  final RepositoryModel repository;

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.repository, repository) ||
                other.repository == repository));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, repository);

  @override
  String toString() {
    return 'RepositoryDetailsState.error(message: $message, repository: $repository)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $RepositoryDetailsStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String message, RepositoryModel repository});

  $RepositoryModelCopyWith<$Res> get repository;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? repository = null,
  }) {
    return _then(Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      repository: null == repository
          ? _self.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as RepositoryModel,
    ));
  }

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepositoryModelCopyWith<$Res> get repository {
    return $RepositoryModelCopyWith<$Res>(_self.repository, (value) {
      return _then(_self.copyWith(repository: value));
    });
  }
}

/// @nodoc

class Data implements RepositoryDetailsState {
  const Data({required this.repository, required final List<IssueModel> issues})
      : _issues = issues;

  final RepositoryModel repository;
  final List<IssueModel> _issues;
  List<IssueModel> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            const DeepCollectionEquality().equals(other._issues, _issues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, repository, const DeepCollectionEquality().hash(_issues));

  @override
  String toString() {
    return 'RepositoryDetailsState.data(repository: $repository, issues: $issues)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>
    implements $RepositoryDetailsStateCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({RepositoryModel repository, List<IssueModel> issues});

  $RepositoryModelCopyWith<$Res> get repository;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? repository = null,
    Object? issues = null,
  }) {
    return _then(Data(
      repository: null == repository
          ? _self.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as RepositoryModel,
      issues: null == issues
          ? _self._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueModel>,
    ));
  }

  /// Create a copy of RepositoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepositoryModelCopyWith<$Res> get repository {
    return $RepositoryModelCopyWith<$Res>(_self.repository, (value) {
      return _then(_self.copyWith(repository: value));
    });
  }
}

// dart format on
