import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/feauters/home/data/models/book_model/book_model.dart';
import 'package:bookly/feauters/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess){
          return ListView.builder(
            
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: ((context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel:state.books[index],
                ),
              );
            }));
        }else if (state is NewestBooksFailure){
          return CustomErrorWidget(errorMessage:state.errorMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
