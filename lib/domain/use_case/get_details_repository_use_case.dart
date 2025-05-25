import 'package:sofomo_github/data/repository/github_repository.dart';
import 'package:sofomo_github/domain/models/issue_model.dart';

class GetDetailsRepositoryUseCase {
  final GithubRepository githubRepository;

  GetDetailsRepositoryUseCase(this.githubRepository);

  Future<List<IssueModel>> call(String fullName) async =>
      await githubRepository.getIssue(fullName);
}
