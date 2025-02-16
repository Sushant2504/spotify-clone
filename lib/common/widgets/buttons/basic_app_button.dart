import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/core/configs/theme/app_textstyles.dart';

// basic button for the use on the onboarding pages .....

class BasicAppButton extends StatelessWidget {
  
  final String title;
  final double? height;

  BasicAppButton(
      {required this.title, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(

         height: height ?? 80,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             color: AppColors.primary,
             
         ),

         child: Center(
           child: Text(
             title,
             style: AppTextStyles.Intro_title_1,
           ),
         ),
      );
  }
}
