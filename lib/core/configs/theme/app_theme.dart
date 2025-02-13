import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {
   


   // theme for the green button ....
   static final lighttheme = ThemeData(
    primaryColor:  AppColors.primary,
    scaffoldBackgroundColor : AppColors.lightbackgroundcolor, 
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme : ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )
        )
    ),


   );

   


   //dark theme for the button .....
   static final darktheme = ThemeData(
    primaryColor:  AppColors.primary,
    scaffoldBackgroundColor : AppColors.darkbackgroundcolor, 
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme : ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )
        )
    ),


   );



}