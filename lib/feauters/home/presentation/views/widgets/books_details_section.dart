import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: const CustomBookImage(imageUrl: 'https://i.pinimg.com/564x/06/b0/ec/06b0ecdc943edca001987eb5f2a9b7d1.jpg',),
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
      // const BookRate(
      //   mainAxisAlignment: MainAxisAlignment.center,
      // ),
      const SizedBox(
        height: 37,
      ),
      const BookAction(),
    ]);
  }
}
