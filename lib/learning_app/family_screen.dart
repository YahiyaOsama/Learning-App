import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/learning_app/models/element_model.dart';
import '../res/color_manager.dart';
import 'components/item.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key}) : super(key: key);
  final List<ModelElement> familyData = const [
    ModelElement(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter",
        sound: "daughter.wav"),
    ModelElement(
        image: "assets/images/family_members/family_father.png",
        jpName: "chichioya",
        enName: "father",
        sound: "father.wav"),
    ModelElement(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "ojīsan",
        enName: "grandfather",
        sound: "grandfather.wav"),
    ModelElement(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "obāchan",
        enName: "grandmother",
        sound: "grandmother.wav"),
    ModelElement(
        image: "assets/images/family_members/family_mother.png",
        jpName: "hahaoya",
        enName: "mother",
        sound: "mother.wav"),
    ModelElement(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "ani",
        enName: "older brother",
        sound: "olderbother.wav"),
    ModelElement(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "older sister",
        sound: "oldersister.wav"),
    ModelElement(
        image: "assets/images/family_members/family_son.png",
        jpName: "musuko",
        enName: "son",
        sound: "son.wav"),
    ModelElement(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otōto",
        enName: "younger brother",
        sound: "youngerbrohter.wav"),
    ModelElement(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imōto",
        enName: "younger sister",
        sound: "youngersister.wav"),
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
          itemCount: familyData.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(
              element: familyData[index],
            );
          },
        ),
      ),
    );
  }
}
