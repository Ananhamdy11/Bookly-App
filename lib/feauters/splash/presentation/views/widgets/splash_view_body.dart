import 'package:bookly/core/utils/assest.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assest.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssestData.logo),
        const SizedBox(height: 5,),
        const Text("Read Free Books ",
        textAlign: TextAlign.center,)
      ],
    );
  }
}