import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sofomo/presentation/repository_search/bloc/repository_search_bloc.dart';
import 'package:sofomo/presentation/widgets/repository_list_item.dart';
import 'package:sofomo/presentation/widgets/sofomo_search_bar.dart';

class RepositorySearchScreen extends StatefulWidget {
  const RepositorySearchScreen({super.key});

  @override
  State<RepositorySearchScreen> createState() => _RepositorySearchScreenState();
}

class _RepositorySearchScreenState extends State<RepositorySearchScreen> {
  late final ScrollController _scrollController;

  static const _padding = const EdgeInsets.all(16.0);
  static const _separatorHeight = 12.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(
        () {
          if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
            context.read<RepositorySearchBloc>().add(EndOfListReached());
          }
        },
      );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: _padding,
          child: SofomoSearchBar(
            onTextChanged: (text) => context.read<RepositorySearchBloc>().add(
                  SearchBarTextChanged(text),
                ),
            hintText: 'Enter at least 3 letters',
          ),
        ),
        Expanded(
          child: BlocBuilder<RepositorySearchBloc, RepositorySearchState>(
            builder: (context, state) {
              if (!state.isLoading && state.repositories.isEmpty) return Text('No results');
              if (state.error != null) return Text(state.error.toString());
              return ListView.separated(
                controller: _scrollController,
                padding: _padding,
                itemBuilder: (context, index) => index == state.repositories.length
                    ? const Center(child: CircularProgressIndicator())
                    : RepositoryListItem(
                        repository: state.repositories[index],
                        onTap: (id) => context.read<RepositorySearchBloc>().add(RepositorySelected(id)),
                      ),
                itemCount: state.isLoading ? state.repositories.length + 1 : state.repositories.length,
                separatorBuilder: (BuildContext context, int index) => Gap(_separatorHeight),
              );
            },
          ),
        )
      ],
    );
  }
}
