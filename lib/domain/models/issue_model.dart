import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/data/model/issue_dto.dart';

part 'issue_model.freezed.dart';

@freezed
abstract class IssueModel with _$IssueModel {
  factory IssueModel({
    required int id,
    required int number,
    required String userImageUrl,
    required String body,
    required String title,
    required bool isOpen,
    required String url,
    required bool isPullRequest,
  }) = _IssueModel;

  factory IssueModel.fromDto(IssueDto dto) => IssueModel(
        id: dto.id,
        number: dto.number,
        userImageUrl: dto.user.avatarUrl,
        body: dto.body ?? '',
        title: dto.title,
        isOpen: dto.state == 'open',
        url: dto.url,
        isPullRequest: dto.pullRequest != null,
      );
}
