// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IssueModel {
  int get id;
  int get number;
  String get userImageUrl;
  String get body;
  String get title;
  bool get isOpen;
  String get url;
  bool get isPullRequest;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IssueModelCopyWith<IssueModel> get copyWith =>
      _$IssueModelCopyWithImpl<IssueModel>(this as IssueModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IssueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isPullRequest, isPullRequest) ||
                other.isPullRequest == isPullRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number, userImageUrl, body,
      title, isOpen, url, isPullRequest);

  @override
  String toString() {
    return 'IssueModel(id: $id, number: $number, userImageUrl: $userImageUrl, body: $body, title: $title, isOpen: $isOpen, url: $url, isPullRequest: $isPullRequest)';
  }
}

/// @nodoc
abstract mixin class $IssueModelCopyWith<$Res> {
  factory $IssueModelCopyWith(
          IssueModel value, $Res Function(IssueModel) _then) =
      _$IssueModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int number,
      String userImageUrl,
      String body,
      String title,
      bool isOpen,
      String url,
      bool isPullRequest});
}

/// @nodoc
class _$IssueModelCopyWithImpl<$Res> implements $IssueModelCopyWith<$Res> {
  _$IssueModelCopyWithImpl(this._self, this._then);

  final IssueModel _self;
  final $Res Function(IssueModel) _then;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? userImageUrl = null,
    Object? body = null,
    Object? title = null,
    Object? isOpen = null,
    Object? url = null,
    Object? isPullRequest = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      userImageUrl: null == userImageUrl
          ? _self.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isPullRequest: null == isPullRequest
          ? _self.isPullRequest
          : isPullRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _IssueModel implements IssueModel {
  _IssueModel(
      {required this.id,
      required this.number,
      required this.userImageUrl,
      required this.body,
      required this.title,
      required this.isOpen,
      required this.url,
      required this.isPullRequest});

  @override
  final int id;
  @override
  final int number;
  @override
  final String userImageUrl;
  @override
  final String body;
  @override
  final String title;
  @override
  final bool isOpen;
  @override
  final String url;
  @override
  final bool isPullRequest;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IssueModelCopyWith<_IssueModel> get copyWith =>
      __$IssueModelCopyWithImpl<_IssueModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isPullRequest, isPullRequest) ||
                other.isPullRequest == isPullRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number, userImageUrl, body,
      title, isOpen, url, isPullRequest);

  @override
  String toString() {
    return 'IssueModel(id: $id, number: $number, userImageUrl: $userImageUrl, body: $body, title: $title, isOpen: $isOpen, url: $url, isPullRequest: $isPullRequest)';
  }
}

/// @nodoc
abstract mixin class _$IssueModelCopyWith<$Res>
    implements $IssueModelCopyWith<$Res> {
  factory _$IssueModelCopyWith(
          _IssueModel value, $Res Function(_IssueModel) _then) =
      __$IssueModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int number,
      String userImageUrl,
      String body,
      String title,
      bool isOpen,
      String url,
      bool isPullRequest});
}

/// @nodoc
class __$IssueModelCopyWithImpl<$Res> implements _$IssueModelCopyWith<$Res> {
  __$IssueModelCopyWithImpl(this._self, this._then);

  final _IssueModel _self;
  final $Res Function(_IssueModel) _then;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? userImageUrl = null,
    Object? body = null,
    Object? title = null,
    Object? isOpen = null,
    Object? url = null,
    Object? isPullRequest = null,
  }) {
    return _then(_IssueModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      userImageUrl: null == userImageUrl
          ? _self.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isPullRequest: null == isPullRequest
          ? _self.isPullRequest
          : isPullRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
