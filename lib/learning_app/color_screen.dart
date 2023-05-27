import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/color_manager.dart';
import 'components/item.dart';
import 'models/element_model.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);
  final List<ModelElement> colorsData = const [
    ModelElement(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "black",
        sound: 'black.wav'),
    ModelElement(
        image: "assets/images/colors/color_brown.png",
        jpName: "chairo",
        enName: "brown",
        sound: "brown.wav"),
    ModelElement(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokripoikiro",
        enName: "dusty yellow",
        sound: "dustyyellow.wav"),
    ModelElement(
        image: "assets/images/colors/color_gray.png",
        jpName: "gurē",
        enName: "gray",
        sound: "gray.wav"),
    ModelElement(
        image: "assets/images/colors/color_green.png",
        jpName: "midori",
        enName: "green",
        sound: "green.wav"),
    ModelElement(
        image: "assets/images/colors/color_red.png",
        jpName: "aka",
        enName: "red",
        sound: "red.wav"),
    ModelElement(
        image: "assets/images/colors/color_white.png",
        jpName: "shiro",
        enName: "white",
        sound: "white.wav"),
    ModelElement(
        image: "assets/images/colors/yellow.png",
        jpName: "kiiro",
        enName: "yellow",
        sound: "yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: ColorManager.endColorForGradient));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.endColorForGradient,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: colorsData.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(
              element: colorsData[index],
            );
          },
        ),
      ),
    );
  }
}
