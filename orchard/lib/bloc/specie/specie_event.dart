import 'package:orchard/models/specie_model.dart';

abstract class SpecieEvent {}

class GetAll implements SpecieEvent {}

class Create implements SpecieEvent {
  final SpecieModel specie;

  Create(this.specie);
}
