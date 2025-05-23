part of 'repository_details_cubit.dart';

@freezed
class RepositoryDetailsState with _$RepositoryDetailsState {
  const factory RepositoryDetailsState.initial() = Initial;
  const factory RepositoryDetailsState.loading() = Loading;
  const factory RepositoryDetailsState.error({
    required String message,
    required RepositoryModel repository,
  }) = Error;
  const factory RepositoryDetailsState.data({
    required RepositoryModel repository,
    required List<IssueModel> issues,
  }) = Data;
}
