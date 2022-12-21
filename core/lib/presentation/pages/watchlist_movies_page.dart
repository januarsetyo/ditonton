import 'package:core/common/constants.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/common/utils.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/presentation/blocs/watchlist_movie_cubit.dart';
import 'package:core/presentation/blocs/watchlist_tv_cubit.dart';
import 'package:core/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/tv_card_list.dart';

class WatchlistMoviesPage extends StatefulWidget {
  static const ROUTE_NAME = '/watchlist-movie';

  @override
  _WatchlistMoviesPageState createState() => _WatchlistMoviesPageState();
}

class _WatchlistMoviesPageState extends State<WatchlistMoviesPage>
    with RouteAware {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<WatchlistMovieCubit>().fetchWatchlistMovies();
      context.read<WatchlistTvCubit>().fetchWatchlistTv();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didPopNext() {
    context.read<WatchlistMovieCubit>().fetchWatchlistMovies();
    context.read<WatchlistTvCubit>().fetchWatchlistTv();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Watchlist'),
            bottom: const TabBar(
              unselectedLabelColor: kDavysGrey,
              indicatorColor: kMikadoYellow,
              tabs: [
                Tab(
                  text: 'Movie',
                  // icon: Icon(Icons.movie),
                ),
                Tab(
                  text: 'TV',
                  // icon: Icon(Icons.tv),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MovieWatchList(),
              TvWatchList(),
            ],
          )),
    );
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}

class MovieWatchList extends StatefulWidget {
  const MovieWatchList({
    Key? key,
  }) : super(key: key);

  @override
  State<MovieWatchList> createState() => _MovieWatchListState();
}

class _MovieWatchListState extends State<MovieWatchList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<WatchlistMovieCubit, WatchlistMovieState>(
        builder: (context, data) {
          if (data.watchlistState == RequestState.Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (data.watchlistState == RequestState.Loaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final movie = data.watchlistMovies[index];
                return MovieCard<Movie>(movie);
              },
              itemCount: data.watchlistMovies.length,
            );
          } else if (data.watchlistState == RequestState.Empty) {
            return const Center(
              child: Text('List Anda Kosong!'),
            );
          } else {
            return Center(
              key: const Key('error_message'),
              child: Text(data.message),
            );
          }
        },
      ),
    );
  }
}

class TvWatchList extends StatefulWidget {
  const TvWatchList({
    Key? key,
  }) : super(key: key);

  @override
  State<TvWatchList> createState() => _TvWatchListState();
}

class _TvWatchListState extends State<TvWatchList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<WatchlistTvCubit, WatchlistTvState>(
        builder: (context, data) {
          if (data.watchlistState == RequestState.Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (data.watchlistState == RequestState.Loaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final tv = data.watchlistTv[index];
                return TvCard(tv);
              },
              itemCount: data.watchlistTv.length,
            );
          } else if (data.watchlistState == RequestState.Empty) {
            return const Center(
              child: Text('List Anda Kosong!'),
            );
          } else {
            return Center(
              key: const Key('error_message'),
              child: Text(data.message),
            );
          }
        },
      ),
    );
  }
}
