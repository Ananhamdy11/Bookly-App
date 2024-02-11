import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/feauters/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
Future <Either<Failures,List<BookModel>>> fetchNewestBooks();

Future <Either<Failures,List<BookModel>>> fetchFeautreBooks();



}