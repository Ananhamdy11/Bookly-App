import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/feautre_list%20_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            
            FeauterBooksListView(),
            SizedBox(
             height: 50,
            ),
            Text("BestSellers",style: Styles.titleMedium,),
            BestSellersListViewItem(),
          ],
      
      ),
    );
  }
}

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8),
            image:const DecorationImage(
              
              image: AssetImage(AssestData.test_image),
              fit: BoxFit.fill
              ),
      
          ),
        ),
      ),
         const Column(
            children: [
    
            ],
          )
        ],
      ),
    );
  }
}