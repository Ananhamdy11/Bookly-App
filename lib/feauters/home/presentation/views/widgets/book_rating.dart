import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
       const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
      const  SizedBox(
          width: 6.3,
        ),
       const Text(
          '4.7'
        ),
       const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: 0.5,
            child: Text(
             '($rating)',
              style: Styles.textStyle14,
            ))
      ],
    );
  }
}
