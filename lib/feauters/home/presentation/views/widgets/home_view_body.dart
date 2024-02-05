import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          CustomAppBar(),
          Expanded(child: FeauterBooksListView())
        ],
  
    );
  }
}

class FeauterBooksListView extends StatelessWidget {
  const FeauterBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height*.3 ,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
        
        return CustomListViewItem();
      }),
    );
  }
}
