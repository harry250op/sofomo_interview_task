import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_dto.g.dart';

@JsonSerializable(createToJson: false)
class RepositoryDto {
  int id;
  String name;
  String? description;
  @JsonKey(name: 'open_issues_count')
  int openIssues;
  String? language;
  @JsonKey(name: 'forks_count')
  int forks;
  @JsonKey(name: 'watchers_count')
  int watchers;
  @JsonKey(name: 'private')
  bool isPrivate;
  @JsonKey(name: 'full_name')
  String fullName;

  RepositoryDto({
    required this.id,
    required this.name,
    required this.description,
    required this.openIssues,
    required this.language,
    required this.forks,
    required this.watchers,
    required this.isPrivate,
    required this.fullName,
  });

  factory RepositoryDto.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDtoFromJson(json);
}
