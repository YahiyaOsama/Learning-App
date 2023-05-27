import 'package:flutter/material.dart';
import 'package:learn_flutter/res/color_manager.dart';
import 'package:learn_flutter/res/extension.dart';
import 'package:learn_flutter/res/font_manager.dart';
import 'package:learn_flutter/res/values_manager.dart';

import '../../res/assets_manager.dart';

class HomeContainers extends StatelessWidget {
  final double width;
  final double imageWidth;
  final double height;
  final String image;
  final Color color;
  final String containerTitle;
  final Function() function;

  const HomeContainers(
      {super.key,
      required this.width,
      required this.height,
      required this.image,
      required this.color,
      required this.containerTitle,
      required this.function,
      required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSiz.s14),
          color: color.withOpacity(AppSiz.s0_7),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppMargin.m21, vertical: AppMargin.m19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    image,
                    width: imageWidth,
                  )),
              const Spacer(),
              Text(
                containerTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSize.s14),
              ),
              5.ph,
              Row(
                children: [
                  IconAssets.goArrow,
                  5.pw,
                  Text(
                    "Go to",
                    style: TextStyle(
                        color: ColorManager.white,
                        fontSize: FontSize.s14,
                        fontWeight: FontWeightManager.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
