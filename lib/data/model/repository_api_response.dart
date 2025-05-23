import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/data/model/repository_dto.dart';

part 'repository_api_response.g.dart';

@JsonSerializable(createToJson: false)
class RepositoryApiModel {
  @JsonKey(name: 'total_count')
  int totalCount;
  @JsonKey(name: 'incomplete_results')
  bool incompleteResults;
  List<RepositoryDto> items;

  RepositoryApiModel({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  factory RepositoryApiModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryApiModelFromJson(json);
}
