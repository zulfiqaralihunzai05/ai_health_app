
import 'package:flutter/material.dart';

import '../utils/colours.dart';
import 'emoji.dart';
import 'line_painter.dart';

class NeutralEmoji extends StatelessWidget {
  const NeutralEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Emoji(
      color: Colours.yellowColor,

      mouth: Positioned(
        bottom: 4,
        left: 22,
        child: SizedBox(
          height: 12,
          width: 18,
          child: CustomPaint(painter: LinePainter()),
        ),
      ),
    );
  }
}
