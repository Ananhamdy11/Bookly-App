import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);     
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration:  BoxDecoration(
              color: Colors.red,
            borderRadius: BorderRadius.circular(8),
              image:const DecorationImage(
                
                image: AssetImage(AssestData.test_image),
                fit: BoxFit.fill
                ),
        
            ),
          ),
        ),
        const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                  width:MediaQuery.of(context).size.width*.5 ,
                  child: Text(
                    'Harry Potter and the Goblet of Fire .',
                    style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    )),
                    const SizedBox(height: 3,),
                   const Text('JK.Rowling',style: Styles.textStyle14,),
                    const SizedBox(height: 3,),
                    Row(
                    children: [
                      Text(r'19.99 $',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
                     const Spacer(),
                     const BookRate(),
                    ],
                   ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

