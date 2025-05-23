// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryApiModel _$RepositoryApiModelFromJson(Map<String, dynamic> json) =>
    RepositoryApiModel(
      totalCount: (json['total_count'] as num).toInt(),
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
