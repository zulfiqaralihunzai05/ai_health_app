
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'arc_painter.dart';
import 'emoji.dart';

class SmileEmoji extends StatelessWidget {
  const SmileEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.greenColor,
      eye: Stack(
        children: [
          Positioned(
            top: 20,
            left: 9,
            child: Transform.flip(
              flipY: true,
              child: SizedBox(
                width: 22,
                height: 6,
                child: CustomPaint(painter: ArcPainter()),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 9,
            child: Transform.flip(
              flipY: true,
              child: SizedBox(
                width: 22,
                height: 6,
                child: CustomPaint(painter: ArcPainter()),
              ),
            ),
          ),
        ],
      ),
      mouth: Positioned(
        bottom: 9,
        left: 10,
        child: SizedBox(
          height: 11,
          width: 41,
          child: CustomPaint(painter: ArcPainter()),
        ),
      ),
    );
  }
}
