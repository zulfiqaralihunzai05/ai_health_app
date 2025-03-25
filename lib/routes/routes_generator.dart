
import 'package:flutter/material.dart';

import '../screens/ai-chat/ai_chat_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/home/models/data_model.dart';
import '../screens/onboarding-screen/onboarding_screen.dart';
import 'fade_transition.dart';

Route<dynamic> routesGenerator(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OnboardingScreen.routeName:
      return FadeInTransition(widget: OnboardingScreen());
    case HomeScreen.routeName:
      return FadeInTransition(widget: const HomeScreen());
    case AIChatScreen.routeName:
      return FadeInTransition(
        widget: AIChatScreen(data: routeSettings.arguments as DataModel),
      );

    default:
      return MaterialPageRoute(
        builder:
            (context) =>
                const Scaffold(body: Center(child: Text("Screen not found"))),
      );
  }
}
