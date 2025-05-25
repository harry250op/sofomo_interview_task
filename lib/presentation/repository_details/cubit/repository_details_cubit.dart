import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo_github/domain/models/issue_model.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';
import 'package:sofomo_github/domain/use_case/get_details_repository_use_case.dart';

part 'repository_details_state.dart';
part 'repository_details_cubit.freezed.dart';

class RepositoryDetailsCubit extends Cubit<RepositoryDetailsState> {
  final GetDetailsRepositoryUseCase _getDetailsRepositoryUseCase;

  RepositoryDetailsCubit(this._getDetailsRepositoryUseCase)
      : super(RepositoryDetailsState.initial());

  void init(RepositoryModel repository) async {
    try {
      emit(RepositoryDetailsState.loading());
      final issues =
          await _getDetailsRepositoryUseCase.call(repository.fullName);

      emit(RepositoryDetailsState.data(repository: repository, issues: issues));
    } catch (e) {
      emit(RepositoryDetailsState.error(
          message: e.toString(), repository: repository));
    }
  }
}
