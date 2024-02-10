import 'package:bookly/feauters/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
    
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(), 
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon:const Opacity(
          opacity: 0.8,
          child:  Icon(FontAwesomeIcons.magnifyingGlass))
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide:const BorderSide(
          color: Colors.white
        ),
        borderRadius: BorderRadius.circular(12),
      );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
    itemCount: 10,
      itemBuilder:((context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child:  BookListViewItem(),
      );
    }) );
  }
}