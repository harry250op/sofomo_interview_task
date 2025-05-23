import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/data/model/repository_dto.dart';

part 'repository_model.freezed.dart';

@freezed
abstract class RepositoryModel with _$RepositoryModel {
  factory RepositoryModel({
    required String name,
    required String description,
    required String language,
    required int openIssues,
    required bool isPrivate,
    required int forks,
    required int watchers,
    required String fullName,
    required int id,
  }) = _RepositoryModel;

  factory RepositoryModel.fromDto(RepositoryDto dto) => RepositoryModel(
        name: dto.name,
        description: dto.description ?? 'No description',
        language: dto.language ?? 'Unknown',
        openIssues: dto.openIssues,
        isPrivate: dto.isPrivate,
        forks: dto.forks,
        watchers: dto.watchers,
        fullName: dto.fullName,
        id: dto.id,
      );
}
