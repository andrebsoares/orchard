import 'package:orchard/models/specie_model.dart';

abstract class SpecieEvent {}

class GetAllSpecies implements SpecieEvent {}

class CreateSpecie implements SpecieEvent {
  final SpecieModel specie;

  CreateSpecie(this.specie);
}
