import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';
import 'package:sofomo_github/domain/use_case/get_repositories_use_case.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetRepositoriesUseCase _getRepositoriesUseCase;
  HomeCubit(this._getRepositoriesUseCase) : super(HomeState.init());

  Future<void> init() async => await _getRepositories('');

  Future<void> updateSearch(String searchText) async =>
      await _getRepositories(searchText);

  Future<void> _getRepositories(String searchText) async {
    try {
      emit(const HomeState.loading());
      final response = await _getRepositoriesUseCase.call(
          searchText: searchText.isEmpty ? null : searchText);
      if (response.isEmpty) {
        emit(const HomeState.empty());
      } else {
        emit(HomeState.data(repositories: response));
      }
    } catch (e) {
      emit(HomeState.error(message: e.toString()));
    }
  }
}
