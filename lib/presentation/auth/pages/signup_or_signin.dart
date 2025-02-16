import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';


class SignupOrSignin extends StatelessWidget {
   const SignupOrSignin({super.key});

   @override
   Widget build(BuildContext context) {
       return Scaffold(
          body: Stack(
              children: [

                 Align(
                   alignment: Alignment.topRight,
                   child: SvgPicture.asset(
                      AppVectors.toppattern,
                   ),
                 ),

                 Align(
                   alignment: Alignment.bottomRight,
                   child: SvgPicture.asset(
                      AppVectors.bottompattern,
                   ),
                 ),

                 Align(
                   alignment: Alignment.bottomLeft,
                   child: SvgPicture.asset(
                      AppImages.authBG,
                   ),
                 ),

                 Align(
                   alignment: Alignment.center,
                   child: SvgPicture.asset(
                      AppImages.authBG,
                   ),
                 ),


              ]
          ),
       );
   }
}