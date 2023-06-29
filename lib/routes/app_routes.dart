import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/menu_options.dart';

class AppRoutes {
  static const initialRoute = 'HomeScreen';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        routes: "HomeScreen",
        name: "Inicio",
        screen: const HomeScreen(),
        icon: Icons.home),
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
        screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
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
  //};
  static Route<dynamic> onGenerareRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
