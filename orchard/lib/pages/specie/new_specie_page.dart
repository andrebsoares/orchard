import 'package:flutter/material.dart';
import 'package:orchard/bloc/specie/specie_bloc.dart';
import 'package:orchard/bloc/specie/specie_event.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/widgets/default_input_field_widget.dart';
import 'package:provider/provider.dart';

class NewSpeciePage extends StatefulWidget {
  static const id = 'new-specie';
  const NewSpeciePage({Key? key}) : super(key: key);

  @override
  State<NewSpeciePage> createState() => _NewSpeciePageState();
}

class _NewSpeciePageState extends State<NewSpeciePage> {
  late TextEditingController descriptionController;
  @override
  void initState() {
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Specie'),
      ),
      body: Card(
        child: Form(
          child: Column(
            children: <Widget>[
              DefaultInputFieldWidget(
                labelTextValue: 'Description',
                controller: descriptionController,
                defaultValidation: true,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final specieModel = SpecieModel(id: '010101', description: descriptionController.text);
                    context.read<SpecieBloc>().add(CreateSpecie(specieModel));
                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
