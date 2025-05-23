import 'package:sofomo_github/data/model/issue_dto.dart';
import 'package:sofomo_github/data/model/repository_dto.dart';
import 'package:sofomo_github/data/source/api/api_client.dart';

class GithubRepository {
  final ApiClient apiClient;

  GithubRepository({required this.apiClient});

  Future<List<RepositoryDto>> getGitHubRepository(String? searchText) async {
    try {
      final response = await apiClient
          .getRepositories(searchText ?? 'stars:>10000&sort=stars');
      return response.items;
    } catch (e) {
      throw Exception('Error fetching repositories: $e');
    }
  }

  Future<List<IssueDto>> getIssue(String fullName) async {
    try {
      final response = await apiClient.getIssues(fullName);
      return response;
    } catch (e) {
      throw Exception('Error fetching issues: $e');
    }
  }
}
