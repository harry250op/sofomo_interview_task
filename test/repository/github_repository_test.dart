import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sofomo_github/data/model/issue_dto.dart';
import 'package:sofomo_github/data/model/repository_api_response.dart';
import 'package:sofomo_github/data/model/repository_dto.dart';
import 'package:sofomo_github/data/model/user_dto.dart';
import 'package:sofomo_github/data/repository/github_repository.dart';
import 'package:sofomo_github/data/source/api/api_client.dart';
import 'package:sofomo_github/domain/models/issue_model.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';

import 'github_repository_test.mocks.dart';

@GenerateMocks([ApiClient])
void main() {
  late GithubRepository githubRepository;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    githubRepository = GithubRepository(apiClient: mockApiClient);
  });

  group('getGitHubRepository', () {
    test('returns list of RepositoryModel on success', () async {
      final List<RepositoryDto> mockUpList = [
        RepositoryDto(
          id: 1,
          name: 'flutter',
          description:
              'Flutter makes it easy and fast to build beautiful apps for mobile and beyond.',
          openIssues: 5000,
          language: 'Dart',
          forks: 25000,
          watchers: 150000,
          isPrivate: false,
          fullName: 'flutter/flutter',
        ),
        RepositoryDto(
          id: 2,
          name: 'react',
          description:
              'A declarative, efficient, and flexible JavaScript library for building user interfaces.',
          openIssues: 1000,
          language: 'JavaScript',
          forks: 35000,
          watchers: 180000,
          isPrivate: false,
          fullName: 'facebook/react',
        ),
      ];

      when(mockApiClient.getRepositories(any)).thenAnswer((_) async =>
          RepositoryApiModel(
              totalCount: 10, incompleteResults: false, items: mockUpList));

      final result = await githubRepository.getGitHubRepository('flutter');

      expect(result, isA<List<RepositoryModel>>());
      expect(result.first.fullName, 'flutter/flutter');
    });

    test('throws Exception on failure', () async {
      when(mockApiClient.getRepositories(any))
          .thenThrow(Exception('Network error'));

      expect(() => githubRepository.getGitHubRepository('flutter'),
          throwsException);
    });
  });

  group('getIssue', () {
    test('returns list of IssueModel on success', () async {
      final List<IssueDto> mockIssueDto = [
        IssueDto(
          id: 101,
          number: 1,
          user: UserDto(
              id: 1001,
              login: 'alice',
              avatarUrl: 'https://example.com/avatar1.png'),
          body:
              'This is a sample issue body with some markdown **formatting**.',
          title: 'Bug: Unexpected crash on launch',
          state: 'open',
          url: 'https://github.com/example/repo/issues/1',
          pullRequest: null,
        ),
        IssueDto(
          id: 102,
          number: 2,
          user: UserDto(
              id: 1002,
              login: 'bob',
              avatarUrl: 'https://example.com/avatar2.png'),
          body:
              'Steps to reproduce:\n1. Open the app\n2. Click on “Start”\n3. App crashes',
          title: 'App crashes on start',
          state: 'closed',
          url: 'https://github.com/example/repo/issues/2',
          pullRequest: {'url': 'https://github.com/example/repo/pull/5'},
        ),
        IssueDto(
          id: 103,
          number: 3,
          user: UserDto(
              id: 1003,
              login: 'carol',
              avatarUrl: 'https://example.com/avatar3.png'),
          body: null,
          title: 'Feature Request: Dark Mode',
          state: 'open',
          url: 'https://github.com/example/repo/issues/3',
          pullRequest: null,
        ),
      ];

      when(mockApiClient.getIssues('user/repo'))
          .thenAnswer((_) async => mockIssueDto);

      final result = await githubRepository.getIssue('user/repo');

      expect(result, isA<List<IssueModel>>());
      expect(result.first.title, 'Bug: Unexpected crash on launch');
    });

    test('throws Exception on failure', () async {
      when(mockApiClient.getIssues('user/repo'))
          .thenThrow(Exception('API error'));

      expect(() => githubRepository.getIssue('user/repo'), throwsException);
    });
  });
}
