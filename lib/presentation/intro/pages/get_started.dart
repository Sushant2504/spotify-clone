import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_textstyles.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStartPage extends StatefulWidget {
  @override
  _GetStartPageState createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/intro_bg.png'),
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
              'Enjoy Listening to Music',
              style: AppTextStyles.Intro_title_1,
            ),
            SizedBox(height: 21),
            Center(
              child: Text(
                'Exploring the power of the Music: How Listening to Songs Enchances Mood, Focus, and Emotional Well-Being',
                style: AppTextStyles.Intro_subtitle_1,
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ChooseModePage(),
                ));
              },
              child: BasicAppButton(
                title: 'Get Started',
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
