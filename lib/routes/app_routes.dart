import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/menu_options.dart';

class AppRoutes {
  static const initialRoute = 'HomeScreen';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        routes: "HomeScreen",
        name: "Pantalla de Inicio",
        screen: const HomeScreen(),
        icon: Icons.home_max),
    MenuOptions(
        routes: "CardScreen",
        name: "Tarjetas de Imágenes",
        icon: Icons.browse_gallery_rounded,
        screen: const CardScreen()),
    MenuOptions(
        routes: "AlertScreen",
        icon: Icons.lock_clock_rounded,
        name: "Pantalla de Alarma",
        screen: const AlertScreen()),
    MenuOptions(
        routes: "ListView",
        icon: Icons.calendar_month_rounded,
        name: "Pantalla Alerta",
        screen: ListView())
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
