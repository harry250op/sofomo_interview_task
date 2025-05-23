import 'package:sofomo_github/data/repository/github_repository.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';

class GetRepositoriesUseCase {
  final GithubRepository repositoryRepository;

  GetRepositoriesUseCase(this.repositoryRepository);

  Future<List<RepositoryModel>> call({String? searchText}) async {
    final response = await repositoryRepository.getGitHubRepository(searchText);
    return response
        .map((repository) => RepositoryModel.fromDto(repository))
        .toList();
  }
}
