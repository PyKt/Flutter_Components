import 'package:flutter/material.dart';
import 'package:fl_components/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuGeneral = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(menuGeneral[index].icon),
                title: Text(menuGeneral[index].name),
                onTap: () {
                  Navigator.pushNamed(context, menuGeneral[index].routes);
                  //Navigator.pushReplacement(context, ruta); Esto es util para login
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuGeneral.length),
    );
  }
}
