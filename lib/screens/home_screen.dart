import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuGeneral = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: IconTheme(
                    data: MyTheme.iconThemeCustom,
                    child: Icon(menuGeneral[index].icon)),

                //Icon(menuGeneral[index].icon,  Color: MyTheme.primary),
                title: Text(menuGeneral[index].name),
                onTap: () {
                  Navigator.pushNamed(
                      context, menuGeneral[index].routes);
                  //Navigator.pushReplacement(context, ruta); Esto es util para login
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuGeneral.length),
    );
  }
}
