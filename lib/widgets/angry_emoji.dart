
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'arc_painter.dart';
import 'emoji.dart';
import 'line_painter.dart';

class AngryEmoji extends StatelessWidget {
  const AngryEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.brownColor,
      eyebrow: Stack(
        children: [
          Positioned(
            top: 15,
            left: 11,
            child: Transform.rotate(
              angle: 0.4,
              child: SizedBox(
                width: 12,
                child: CustomPaint(painter: LinePainter()),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 11,
            child: Transform.rotate(
              angle: -0.4,
              child: SizedBox(
                width: 12,
                child: CustomPaint(painter: LinePainter()),
              ),
            ),
          ),
        ],
      ),
      mouth: Positioned(
        bottom: 14,
        left: 10,
        child: Transform.flip(
          flipY: true,
          child: SizedBox(
            height: 12,
            width: 40,
            child: CustomPaint(painter: ArcPainter()),
          ),
        ),
      ),
    );
  }
}
