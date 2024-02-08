import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/similar_boos_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:Column(
      children: [
                  CustomBookDetailsAppBr(),
                  BookDetailsSection(),
              Expanded(
                child:  SizedBox(
                  height: 40,
                ),
              ),
        SimilarBooksSection(),
        ],
      ),
    ) ,
        )
      ],
    );
  }
}

