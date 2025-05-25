import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo_github/core/injection/injection.dart';
import 'package:sofomo_github/core/widget/error_widget.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';
import 'package:sofomo_github/presentation/home/widget/repository_widget.dart';
import 'package:sofomo_github/presentation/repository_details/cubit/repository_details_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryDetailsPage extends StatelessWidget {
  final RepositoryModel repository;

  const RepositoryDetailsPage({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          DependencyInjection.getIt<RepositoryDetailsCubit>()..init(repository),
      child: _Body(repository.fullName),
    );
  }
}

class _Body extends StatelessWidget {
  final String fullName;
  const _Body(this.fullName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          fullName,
          maxLines: 2,
        ),
      ),
      body: BlocBuilder<RepositoryDetailsCubit, RepositoryDetailsState>(
        builder: (context, state) {
          return switch (state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Error(message: var message) => Center(
                child: ErrorInfoWidget(
                  message: message,
                  onRetry: () => context
                      .read<RepositoryDetailsCubit>()
                      .init(state.repository),
                ),
              ),
            Data() => Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  RepositoryWidget(repository: state.repository),
                  if (state.issues.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: const Center(
                        child: Text(
                          'No issues found',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          itemBuilder: (context, index) {
                            final issue = state.issues[index];

                            return GestureDetector(
                              onTap: () => _launchUrl(issue.url),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    spacing: 20,
                                    children: [
                                      Row(
                                        spacing: 30,
                                        children: [
                                          ClipOval(
                                            child: Image.network(
                                              issue.userImageUrl,
                                              height: 50,
                                              width: 50,
                                            ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              issue.title,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: issue.isOpen
                                                  ? Colors.green
                                                  : Colors.purple,
                                            ),
                                            child: Row(
                                              children: [
                                                issue.isPullRequest
                                                    ? Icon(
                                                        Icons.call_split,
                                                        color: Colors.white,
                                                      )
                                                    : Icon(Icons.bug_report,
                                                        color: Colors.white),
                                                Text(
                                                  issue.isOpen
                                                      ? 'Open'
                                                      : 'Closed',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                        ],
                                      ),
                                      Text(
                                        issue.body,
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: state.issues.length),
                    ),
                ],
              ),
            RepositoryDetailsState() => Container(),
          };
        },
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri link = Uri.parse(url);

    launchUrl(
      link,
      mode: LaunchMode.externalApplication,
    );
  }
}
