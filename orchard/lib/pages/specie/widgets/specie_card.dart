import 'package:flutter/material.dart';
import 'package:orchard/models/specie_model.dart';

class SpecieCard extends StatelessWidget {
  final SpecieModel specie;
  const SpecieCard({required this.specie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(child: Text(specie.description)),
    );
  }
}
