
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'arc_painter.dart';
import 'emoji.dart';

class SadEmoji extends StatelessWidget {
  const SadEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.purpleColor,
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
