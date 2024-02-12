import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/feauters/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/feauters/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeauterBooksListView extends StatelessWidget {
  const FeauterBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccss){

        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(),
                );
              }),
        );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errorMessage:state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
