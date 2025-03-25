
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'arc_painter.dart';
import 'emoji.dart';
import 'filled_arc_painter.dart';

class LaughingEmoji extends StatelessWidget {
  const LaughingEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.blueColor,
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
        bottom: 0,
        left: 12,
        child: SizedBox(
          height: 23,
          width: 38,
          child: CustomPaint(painter: FilledArcPainter()),
        ),
      ),
    );
  }
}
