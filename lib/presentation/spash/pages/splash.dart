import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';


class SplashPage extends StatefulWidget {
   
   @override
   _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
   
   @override
   void initState() {
     super.initState();
    redirect();  // function call ...
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: SvgPicture.asset(
          AppVectors.logo,
         )
      ),
    );
  }


 // added the some future delayed time for time buffer before navigating to the nest screen.......
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
       context,
       MaterialPageRoute(
         builder: (context) => SignupOrSignin(),
       ),
    );
  }
}