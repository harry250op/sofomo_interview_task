import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo_github/core/injection/injection.dart';
import 'package:sofomo_github/core/widget/error_widget.dart';
import 'package:sofomo_github/presentation/home/cubit/home_cubit.dart';
import 'package:sofomo_github/presentation/home/widget/repository_widget.dart';
import 'package:sofomo_github/presentation/home/widget/search_widget.dart';
import 'package:sofomo_github/presentation/repository_details/repository_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'GitHub Repositories',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Icon(
            Icons.code,
            color: Colors.black87,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => DependencyInjection.getIt<HomeCubit>()..init(),
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWidget(
            onSearch: (searchText) =>
                context.read<HomeCubit>().updateSearch(searchText)),
        Expanded(
          child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) => switch (state) {
                    Initial() => const Center(child: Text('Initial')),
                    Error(message: var message) => ErrorInfoWidget(
                        message: message,
                        onRetry: () => context.read<HomeCubit>().init(),
                      ),
                    Loading() =>
                      const Center(child: CircularProgressIndicator()),
                    Data() => ListView.builder(
                        itemCount: state.repositories.length,
                        itemBuilder: (context, index) {
                          final repository = state.repositories[index];
                          return GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => RepositoryDetailsPage(
                                            repository: repository,
                                          ))),
                              child: RepositoryWidget(repository: repository));
                        },
                      ),
                    HomeState() => Container(),
                  }),
        ),
      ],
    );
  }
}
