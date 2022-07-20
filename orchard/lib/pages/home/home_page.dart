import 'package:flutter/material.dart';
import 'package:orchard/pages/specie/specie_page.dart';

class HomePage extends StatelessWidget {
  static const id = '/';
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: const TabBarView(children: [
          Center(child: SpeciePage()),
          Center(
            child: Text("2"),
          )
        ]),
        bottomNavigationBar: Container(
          color: Colors.green,
          child: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text("Specie"),
            ),
            Tab(
              child: Text("Tree"),
            )
          ]),
        ),
      ),
    );
  }
}
