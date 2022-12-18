import 'package:core/common/constants.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search/presentation/blocs/movie_search_cubit.dart';
import 'package:search/presentation/blocs/tv_search_cubit.dart';

class SearchPage extends StatelessWidget {
  static const ROUTE_NAME = '/search';
  final bool? isMovie;

  const SearchPage({this.isMovie = true});

  const SearchPage.tv({this.isMovie = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onSubmitted: (query) {
                isMovie == true
                    ? context.read<MovieSearchCubit>().fetchMovieSearch(query)
                    : context.read<TvSearchCubit>().fetchTvSearch(query);
              },
              decoration: InputDecoration(
                hintText: 'Search title',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.search,
            ),
            SizedBox(height: 16),
            Text(
              'Search Result',
              style: kHeading6,
            ),
            ShowListSearch(
              isMovie: isMovie!,
            ),
          ],
        ),
      ),
    );
  }
}

class ShowListSearch extends StatelessWidget {
  final bool isMovie;

  const ShowListSearch({
    Key? key,
    required this.isMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMovie
        ? BlocBuilder<MovieSearchCubit, MovieSearchState>(
            builder: (context, data) {
              if (data.state == RequestState.Loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (data.state == RequestState.Loaded) {
                final result = data.searchResult;
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (context, index) {
                      final movie = data.searchResult[index];
                      return MovieCard<Movie>(movie);
                    },
                    itemCount: result.length,
                  ),
                );
              } else {
                return Expanded(
                  child: Container(),
                );
              }
            },
          )
        : BlocBuilder<TvSearchCubit, TvSearchState>(
            builder: (context, data) {
              if (data.state == RequestState.Loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (data.state == RequestState.Loaded) {
                final result = data.searchResult;
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (context, index) {
                      final movie = data.searchResult[index];
                      return MovieCard<Tv>(movie);
                    },
                    itemCount: result.length,
                  ),
                );
              } else {
                return Expanded(
                  child: Container(),
                );
              }
            },
          );
  }
}
