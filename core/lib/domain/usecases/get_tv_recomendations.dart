import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/domain/repositories/tv_repository.dart';

import '../entities/tv.dart';

class GetTvRecommendations {
  final TvRepository repository;

  GetTvRecommendations(this.repository);

  Future<Either<Failure, List<Tv>>> execute(id) {
    return repository.getTvRecommendations(id);
  }
}