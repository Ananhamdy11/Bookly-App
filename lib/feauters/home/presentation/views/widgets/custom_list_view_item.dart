import 'package:bookly/core/utils/assest.dart';
import 'package:flutter/material.dart';

class FeauteredListViewItem extends StatelessWidget {
  const FeauteredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.7/3,
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
