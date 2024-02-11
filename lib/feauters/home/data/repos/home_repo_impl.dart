import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feauters/home/data/models/book_model/book_model.dart';
import 'package:bookly/feauters/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
//import 'package:dio/dio.dart';

 class HomeRepoImplementation extends HomeRepo{
final ApiService apiService;

  HomeRepoImplementation( this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks()async {
   try {
  var data= await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');

List<BookModel> books=[];

for (var item in data['items']) {
  books.add(BookModel.fromJson(item));
}
return right(books);

} on Exception catch (e) {
return left(ServerFailure());
}
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeautreBooks() {
    // TODO: implement fetchFeautreBooks
    throw UnimplementedError();
  }

}