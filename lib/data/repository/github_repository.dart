import 'package:sofomo_github/data/source/api/api_client.dart';
import 'package:sofomo_github/domain/models/issue_model.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';

class GithubRepository {
  final ApiClient apiClient;

  GithubRepository({required this.apiClient});

  Future<List<RepositoryModel>> getGitHubRepository(String? searchText) async {
    try {
      final response = await apiClient
          .getRepositories(searchText ?? 'stars:>10000&sort=stars');
      return response.items
          .map((repo) => RepositoryModel.fromDto(repo))
          .toList();
    } catch (e) {
      throw Exception('Error fetching repositories: $e');
    }
  }

  Future<List<IssueModel>> getIssue(String fullName) async {
    try {
      final response = await apiClient.getIssues(fullName);
      return response.map((issue) => IssueModel.fromDto(issue)).toList();
    } catch (e) {
      throw Exception('Error fetching issues: $e');
    }
  }
}
