import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDto {
  int id;
  String login;
  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  UserDto({
    required this.id,
    required this.login,
    required this.avatarUrl,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
