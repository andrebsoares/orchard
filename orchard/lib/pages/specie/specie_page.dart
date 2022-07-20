import 'package:flutter/material.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/pages/specie/new_specie_page.dart';
import 'package:orchard/pages/specie/widgets/specie_card.dart';

class SpeciePage extends StatefulWidget {
  const SpeciePage({Key? key}) : super(key: key);

  @override
  State<SpeciePage> createState() => _SpeciePageState();
}

class _SpeciePageState extends State<SpeciePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => const SpecieCard(
            specie: SpecieModel(description: "Laranjeira", id: "0101")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, NewSpeciePage.id);
        },
      ),
    );
  }
}
