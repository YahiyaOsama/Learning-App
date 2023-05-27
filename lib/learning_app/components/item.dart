import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/res/extension.dart';
import 'package:learn_flutter/res/font_manager.dart';
import '../../res/assets_manager.dart';
import '../../res/color_manager.dart';
import '../../res/values_manager.dart';
import '../models/element_model.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.element}) : super(key: key);
  final ModelElement element;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: const EdgeInsets.only(top: AppMargin.m19, bottom: AppMargin.m11),
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p21),
      height: AppSiz.s80,
      child: Row(
        children: [
          Image.asset(
            element.image,
            width: 50,
          ),
          20.pw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                element.jpName,
                style: const TextStyle(
                    fontSize: FontSize.s18, fontWeight: FontWeightManager.bold),
              ),
              5.ph,
              Text(
                element.enName,
                style: const TextStyle(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeightManager.semiBold),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final playerAudio = AudioPlayer();
                playerAudio.play(AssetSource(element.sound));
                // AudioCache playSound = AudioCache(prefix: 'assets/sounds/colors/');
                // playSound.play('number_one_sound.mp3' ,);
              },
              icon: IconAssets.playIcon)
        ],
      ),
    );
  }
}
