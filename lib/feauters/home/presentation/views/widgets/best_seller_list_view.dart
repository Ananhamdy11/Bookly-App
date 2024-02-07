import 'package:bookly/feauters/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/widgets.dart';

class BestSellersListView extends StatelessWidget {
  const BestSellersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
    itemCount: 10,
      itemBuilder:((context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child:  BestSellersListViewItem(),
      );
    }) );
  }
}