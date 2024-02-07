import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:bookly/feauters/home/presentation/views/home_view.dart';
import 'package:bookly/feauters/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assest.dart';
import 'package:go_router/go_router.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {  
      super.initState();

    initSliding();
slidingAnimation.addListener(() {});
  navigateToHome();
  

  }

  void navigateToHome() {
    Future.delayed( const Duration(seconds: 2),(){
      // Get.to(const HomeView(),transition: Transition.fade,duration: ktransationDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSliding() {
    
    animationController=AnimationController(vsync: this,duration:const Duration(seconds: 1));
    super.initState();
    
    slidingAnimation=Tween<Offset>(begin:const Offset(0, 2) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssestData.logo),
        const SizedBox(height: 5,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}

