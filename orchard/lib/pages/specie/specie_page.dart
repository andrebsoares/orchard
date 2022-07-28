import 'package:flutter/material.dart';
import 'package:orchard/bloc/specie/specie_bloc.dart';
import 'package:orchard/bloc/specie/specie_state.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/pages/specie/new_specie_page.dart';
import 'package:orchard/pages/specie/widgets/specie_card.dart';
import 'package:provider/provider.dart';

class SpeciePage extends StatefulWidget {
  const SpeciePage({Key? key}) : super(key: key);

  @override
  State<SpeciePage> createState() => _SpeciePageState();
}

class _SpeciePageState extends State<SpeciePage> {
  @override
  Widget build(BuildContext context) {
    final specieBloc = context.read<SpecieBloc>();
    final specieState = specieBloc.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species'),
      ),
      body: specieState is LoadingState
          ? const CircularProgressIndicator()
          : specieState is LoadedState
              ? ListView.builder(
                  itemCount: specieState.species.length,
                  itemBuilder: (context, index) =>
                      SpecieCard(specie: specieState.species[index]),
                )
              : specieState is EmptyState
                  ? const Center(
                      child: Text('vazio'),
                    )
                  : const Center(
                      child: Text('Erro'),
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
