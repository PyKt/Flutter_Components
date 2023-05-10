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
        icon: Icons.home_max)
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    return getAppRoutes();
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
