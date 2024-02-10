import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feauters/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
           SizedBox(height: 20,),
             Text("Search Results",style: Styles.textStyle18,),
                                   SizedBox(height: 20,),

          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
