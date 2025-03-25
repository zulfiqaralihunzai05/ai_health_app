
import 'package:ai_health_app/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../utils/colours.dart';
import 'ai_features_grid.dart';
import 'custom_app_bar.dart';
import 'custom_tab_bar.dart';
import 'daily_mood_log.dart';
import 'home_page_headline.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colours.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 25,
              children: [
                CustomAppBar(),
                HomePageHeadline(),
                CustomTabBar(),
                DailyMoodLog(),
                AIFeaturesGrid(),
              ],
            ),
          ),
        ),
      ).gradient(topRight: Colours.pinkColor, bottomLeft: Colours.whiteColor),
    );
  }
}
