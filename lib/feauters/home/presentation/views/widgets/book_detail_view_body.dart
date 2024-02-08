import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBr(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRate(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BookAction(),
          const SizedBox(
            height: 35,
          ),
          Align(
          alignment: Alignment.centerLeft,
                        child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          ),
          const SizedBox(height: 16,),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}

