import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/error_screen.dart';

class AppRoutes {
  static const initialRoute = 'HomeScreen';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        routes: "CardScreen",
        name: "Tarjetas",
        icon: Icons.menu_open,
        screen: const CardScreen()),
    MenuOptions(
        routes: "AlertScreen",
        name: "Alerta",
        icon: Icons.add_alert_outlined,
        screen: const AlertScreen()),
    MenuOptions(
        routes: "ListView",
        name: "Listas",
        icon: Icons.list,
        screen: const ListViewScreen()),
    MenuOptions(
        routes: "AvatarScreen",
        name: "Avatar",
        icon: Icons.supervised_user_circle_outlined,
        screen: const AvatarScreen()),
    MenuOptions(
        routes: "AnimatedScreen",
        name: "Animation",
        icon: Icons.animation_outlined,
        screen: const AnimatedScreen()),
    MenuOptions(
        routes: "InputsScreen",
        name: "Texto",
        icon: Icons.text_rotation_none_outlined,
        screen: const InputsScreen()),
    MenuOptions(
        routes: 'slider',
        icon: Icons.format_size_outlined,
        name: 'Slider and Checks',
        screen: const SliderScreen()),
    MenuOptions(
        routes: "ListViewBuild",
        name: "Infinity Scroll",
        icon: Icons.build,
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({'HomeScreen': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.routes: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'ListView': (BuildContext context) => const ListViewScreen(),
  //  'CardScreen': (BuildContext context) => const CardScreen(),
  //  'AlertScreen': (BuildContext context) => const AlertScreen(),
  //  'HomeScreen': (BuildContext context) => const HomeScreen(),
  //};"
  static Route<dynamic> onGenerareRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
