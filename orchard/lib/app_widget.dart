import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:orchard/bloc/specie/specie_bloc.dart';
import 'package:orchard/customs/app_theme.dart';
import 'package:orchard/pages/home/home_page.dart';
import 'package:orchard/pages/specie/new_specie_page.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';
import 'package:orchard/repositories/specie_repository.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseFirestore>.value(value: FirebaseFirestore.instance),
        Provider<Uuid>.value(value: const Uuid()),
        Provider<ISpecieRepository>(
          create: (context) => SpecieRepository(context.read(), context.read()),
        ),
        Provider<SpecieBloc>(create: (context) => SpecieBloc(context.read())),
      ],
      child: MaterialApp(
        theme: theme,
        routes: {
          HomePage.id: (_) => const HomePage(),
          NewSpeciePage.id: (_) => const NewSpeciePage(),
        },
      ),
    );
  }
}
