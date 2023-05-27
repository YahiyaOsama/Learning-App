import 'package:flutter/material.dart';
import 'package:learn_flutter/learning_app/components/clipper.dart';

class TestAnyThing extends StatelessWidget {
  const TestAnyThing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}
