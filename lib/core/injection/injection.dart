import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sofomo_github/data/repository/github_repository.dart';
import 'package:sofomo_github/data/source/api/api_client.dart';
import 'package:sofomo_github/domain/use_case/get_details_repository_use_case.dart';
import 'package:sofomo_github/domain/use_case/get_repositories_use_case.dart';
import 'package:sofomo_github/presentation/home/cubit/home_cubit.dart';
import 'package:sofomo_github/presentation/repository_details/cubit/repository_details_cubit.dart';

class DependencyInjection {
  static final getIt = GetIt.instance;

  static void configure() {
    getIt.registerSingleton(Dio());
    getIt.registerSingleton(ApiClient(getIt.get()));
    getIt.registerSingleton(GithubRepository(apiClient: getIt.get()));
    getIt.registerSingleton(GetRepositoriesUseCase(getIt.get()));
    getIt.registerSingleton(GetDetailsRepositoryUseCase(getIt.get()));
    getIt.registerFactory(() => HomeCubit(getIt.get()));
    getIt.registerFactory(() => RepositoryDetailsCubit(getIt.get()));
  }
}
