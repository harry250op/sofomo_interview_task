import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:sofomo_github/data/model/issue_dto.dart';
import 'package:sofomo_github/data/model/repository_api_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.github.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET("search/repositories?q={search}t&per_page=10")
  Future<RepositoryApiModel> getRepositories(
    @Path('search') String searchText,
  );

  @GET("repos/{full_name}/issues?per_page=10")
  Future<List<IssueDto>> getIssues(
    @Path('full_name') String fullName,
  );
}
