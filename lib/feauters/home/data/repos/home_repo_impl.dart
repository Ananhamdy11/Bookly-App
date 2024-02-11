import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/feauters/home/data/models/book_model/book_model.dart';
import 'package:bookly/feauters/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
//import 'package:dio/dio.dart';

 class HomeRepoImplementation extends HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellersBooks() {
        throw UnimplementedError();

  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeautreBooks() {
    // TODO: implement fetchFeautreBooks
    throw UnimplementedError();
  }

}