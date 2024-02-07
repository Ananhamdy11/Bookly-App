import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/feautre_list%20_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                
                FeauterBooksListView(),
                SizedBox(
                 height: 50,
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text("BestSellers",style: Styles.textStyle18,),
              ),
                 SizedBox(height: 20,),
               
              ],
          
          )
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellersListView(),
          ),
        )
      ],
    );
    
  }
}

