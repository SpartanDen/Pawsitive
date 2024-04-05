import 'package:flutter/material.dart';
import '../presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import '../presentation/frame_screen/frame_screen.dart';
import '../presentation/frame_one_screen/frame_one_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String frameScreen = '/frame_screen';

  static const String frameOneScreen = '/frame_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxOneScreen: (context) => Iphone1415ProMaxOneScreen(),
    frameScreen: (context) => FrameScreen(),
    frameOneScreen: (context) => FrameOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => FrameOneScreen(),
  };
}
