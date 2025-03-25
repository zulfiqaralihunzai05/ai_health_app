
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../utils/assets.dart';
import '../../utils/colours.dart';
import '../../widgets/app_rounded_icon_button.dart';
import '../../widgets/rounded_image.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedImage(
                width: 40,
                source: Assets.profileImage,
                type: ImageSourceType.asset,
              ),
              AppRoundedIconButton(
                source: Assets.searchIcon,
                backgroundColor: Colours.backgroundColor,
                size: 22,
                padding: EdgeInsets.all(8),
                onPressed: () {},
              ),
            ],
          )
          .animate()
          .fadeIn(duration: const Duration(milliseconds: 500))
          .slideY(
            duration: const Duration(milliseconds: 500),
            begin: 1,
            end: 0,
          ),
    );
  }
}
