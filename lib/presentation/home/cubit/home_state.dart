part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.data({required List<RepositoryModel> repositories}) =
      Data;
  const factory HomeState.empty() = Empty;
  const factory HomeState.error({required String message}) = Error;
}
