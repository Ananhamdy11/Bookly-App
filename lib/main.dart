import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feauters/home/data/repos/home_repo_impl.dart';
import 'package:bookly/feauters/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/feauters/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //service locator بعمل نسخه واحده (get it)
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>()
          )..fetchFeaturedBooks(),
        ),
         BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>()
          )
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
      
    
      ),
    );
  }
}
