import 'package:bookly/feauters/home/presentation/views/home_view.dart';
import 'package:bookly/feauters/home/presentation/views/book_detail_view.dart';
import 'package:bookly/feauters/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
 static const kHomeView='/homeView'; 
  static const kBookDetails='/BookDetailsView'; 
 static final  router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: ( context,  state) {
        return const SplashView();
      },
      
    ),
    GoRoute(
      path: kHomeView,
      builder: ( context,  state) {
        return const HomeView();
      },
      
    ),
    GoRoute(
      path: kBookDetails,
      builder: ( context,  state) {
        return const BookDetailView();
      },
      
    ),
  ],
);
}