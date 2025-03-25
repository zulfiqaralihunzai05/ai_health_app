
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'arc_painter.dart';
import 'emoji.dart';

class HappyEmoji extends StatelessWidget {
  const HappyEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.brownColor,
      eyebrow: Stack(
        children: [
          Positioned(
            top: 11,
            left: 8,
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
            top: 11,
            right: 8,
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
        bottom: 7,
        left: 11,
        child: SizedBox(
          height: 12,
          width: 40,
          child: CustomPaint(painter: ArcPainter()),
        ),
      ),
    );
  }
}
