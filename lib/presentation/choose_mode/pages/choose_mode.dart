import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_remake/common/widgets/button/basic_app_button.dart';
import 'package:spotify_remake/core/configs/assets/app_images.dart';
import 'package:spotify_remake/core/configs/assets/app_vectors.dart';
import 'package:spotify_remake/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.chooseModeBG),
            )),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                Spacer(),
                Text('Choose Mode', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
                SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF30393C).withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              AppVectors.moon,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF30393C).withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            AppVectors.sun,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Light Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                          fontSize: 17,
                        ),
                      )
                    ],
                  )
                ]),
                SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseModePage()));
                  },
                  title: 'Continue',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}