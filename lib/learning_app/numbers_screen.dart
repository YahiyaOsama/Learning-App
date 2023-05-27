import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/learning_app/models/element_model.dart';
import 'package:learn_flutter/res/color_manager.dart';
import 'components/item.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);
  final List<ModelElement> numbersData = const [
    ModelElement(
        image: "assets/images/numbers/number_one.png",
        jpName: "Ichi",
        enName: "one",
        sound: 'number_one_sound.mp3'),
    ModelElement(
        image: "assets/images/numbers/number_two.png",
        jpName: "ni",
        enName: "two",
        sound: "number_two_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_three.png",
        jpName: "mittsu",
        enName: "three",
        sound: "number_three_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_four.png",
        jpName: "shi",
        enName: "four",
        sound: "number_four_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_five.png",
        jpName: "go",
        enName: "five",
        sound: "number_five_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_six.png",
        jpName: "roku",
        enName: "six",
        sound: "number_six_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven",
        sound: "number_seven_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight",
        sound: "number_eight_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyū",
        enName: "nine",
        sound: "number_nine_sound.mp3"),
    ModelElement(
        image: "assets/images/numbers/number_ten.png",
        jpName: "jū",
        enName: "ten",
        sound: "number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
         SystemUiOverlayStyle(statusBarColor: ColorManager.endColorForGradient));
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorManager.endColorForGradient,),
      body: SafeArea(
        child: ListView.builder(
          itemCount: numbersData.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(
              element: numbersData[index],
            );
          },
        ),
      ),
    );
  }
}
