import 'package:bookly/core/utils/assest.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.8 /3,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.red,
        borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
            
            image: AssetImage(AssestData.test_image),
            fit: BoxFit.fill
            ),
    
        ),
      ),
    );
  }
}
