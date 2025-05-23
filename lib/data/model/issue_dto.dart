import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/data/model/user_dto.dart';

part 'issue_dto.g.dart';

@JsonSerializable(createToJson: false)
class IssueDto {
  int id;
  int number;
  @JsonKey(name: 'user')
  UserDto user;
  String? body;
  String title;
  String state;
  @JsonKey(name: 'html_url')
  String url;
  @JsonKey(name: 'pull_request')
  dynamic pullRequest;

  IssueDto(
      {required this.id,
      required this.number,
      required this.user,
      required this.body,
      required this.title,
      required this.state,
      required this.url,
      this.pullRequest});

  factory IssueDto.fromJson(Map<String, dynamic> json) =>
      _$IssueDtoFromJson(json);
}
