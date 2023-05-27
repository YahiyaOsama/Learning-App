import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_flutter/learning_app/numbers_screen.dart';
import 'package:learn_flutter/res/assets_manager.dart';
import 'package:learn_flutter/res/color_manager.dart';
import 'package:learn_flutter/res/extension.dart';
import 'package:learn_flutter/res/values_manager.dart';
import 'color_screen.dart';
import 'components/home_containers.dart';
import 'family_screen.dart';

class LearningAppHomeScreen extends StatelessWidget {
  const LearningAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xFFe6f2f5)));
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              ColorManager.startColorForGradient,
              ColorManager.startColorForGradient,
              ColorManager.endColorForGradient,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
          child: ListView(
            children: [
              _pageHeadTitle(),
              20.ph,
              _centerImage(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: AppMargin.m21),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeContainers(
                          width: AppSiz.s150,
                          height: AppSiz.s200,
                          image: ImageAssets.numberImage,
                          color: Colors.greenAccent,
                          containerTitle: 'Numbers',
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const NumberScreen();
                            }));
                          },
                          imageWidth: AppSiz.s60,
                        ),
                        HomeContainers(
                          width: AppSiz.s160,
                          height: AppSiz.s140,
                          image: ImageAssets.familyMemberImage,
                          color: Colors.blueAccent,
                          containerTitle: "Family Members",
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const FamilyScreen();
                            }));
                          },
                          imageWidth: AppSiz.s50,
                        ),
                      ],
                    ),
                    30.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeContainers(
                          width: AppSiz.s160,
                          height: AppSiz.s140,
                          image: ImageAssets.colorImage,
                          color: Colors.blueAccent,
                          containerTitle: "Colors",
                          function: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ColorScreen();
                            }));
                          },
                          imageWidth: AppSiz.s50,
                        ),
                        HomeContainers(
                          width: AppSiz.s150,
                          height: AppSiz.s200,
                          image: ImageAssets.memberImage,
                          color: Colors.greenAccent,
                          containerTitle: 'phrases',
                          function: () {},
                          imageWidth: AppSiz.s60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _pageHeadTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppMargin.m19, vertical: AppMargin.m26),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {}, child: SvgPicture.asset(ImageAssets.menuIcon)),
          const SizedBox(
            width: 40,
          ),
          const Text(
            "3lamny",
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  _centerImage() {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/language.png",
        width: 150,
      ),
    );
  }
}
