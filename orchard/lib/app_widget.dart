import 'package:flutter/material.dart';
import 'package:orchard/customs/app_theme.dart';
import 'package:orchard/pages/home/home_page.dart';
import 'package:orchard/pages/specie/new_specie_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      routes: {
        HomePage.id: (_) => const HomePage(),
        NewSpeciePage.id: (_) => const NewSpeciePage(),
      },
    );
  }
}
