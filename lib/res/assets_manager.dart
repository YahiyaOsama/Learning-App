import 'package:flutter/material.dart';
import 'color_manager.dart';

const String imagePath = "assets/images";
class ImageAssets {
  static const String menuIcon = "$imagePath/menu-icon.svg";
  static const String memberImage = "$imagePath/membersLarge.png";
  static const String numberImage = "$imagePath/numbers.png";
  static const String familyMemberImage = "$imagePath/familyMembersLarge.png";
  static const String colorImage = "$imagePath/colorLarge.png";
  static const String phrasesImage = "$imagePath/phrases.png";
}

class IconAssets {
  static const Icon goArrow = Icon(
    Icons.arrow_forward_ios_outlined,
    size: 12,
    color: Colors.white,
  );
  static Icon playIcon = const Icon(
    Icons.play_arrow,
    color: Color(0xcc112e6d),
  );
}
