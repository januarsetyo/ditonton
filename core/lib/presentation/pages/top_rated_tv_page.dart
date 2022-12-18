import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/presentation/blocs/tv_list_cubit.dart';
import 'package:core/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedTvPage extends StatefulWidget {
  static const ROUTE_NAME = '/top-rated-tv';

  @override
  _PopularMoviesPageState createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<TopRatedTvPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<TvListCubit>().fetchTopRatedTv());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated TV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TvListCubit, TvListState>(
          builder: (context, data) {
            if (data.topRatedState == RequestState.Loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (data.topRatedState == RequestState.Loaded) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final tv = data.topRatedTv[index];
                  return MovieCard<Tv>(tv);
                },
                itemCount: data.topRatedTv.length,
              );
            } else {
              return Center(
                key: Key('error_message'),
                child: Text(data.message),
              );
            }
          },
        ),
      ),
    );
  }
}
