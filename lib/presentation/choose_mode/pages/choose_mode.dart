import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_textstyles.dart';
import 'package:provider/provider.dart';
import 'package:spotify/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/choose_mode_bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                AppVectors.logo,
              ),
            ),
            Spacer(),
            Text(
              'Choose Mode',
              style: AppTextStyles.Intro_title_1,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              AppVectors.light_mode,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8,),

                    Center(
                       child: Text(
                        'Light Mode',
                        style: AppTextStyles.Mode_title,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ), 
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                          context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              AppVectors.dark_mode,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8,),

                    Center(
                       child: Text(
                        'Dark Mode',
                        style: AppTextStyles.Mode_title,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupOrSignin(),
                    ));
              },
              child: BasicAppButton(
                title: 'Continue',
                height: null,
              ),
            ),
          ]),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
      ]),
    );
  }
}
