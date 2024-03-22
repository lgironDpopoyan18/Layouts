import 'package:flutter/material.dart';
import 'package:gesture/share_preferences/preferences.dart';
import 'package:gesture/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DarkMode: ${Preferences.isDark}'),
            const Divider(),
            Text('Genero: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de Usuario: ${Preferences.name}'),
            const Divider()
          ],
        ));
  }
}
