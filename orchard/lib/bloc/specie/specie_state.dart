import 'package:orchard/models/specie_model.dart';

abstract class SpecieState {}

class EmptyState implements SpecieState {}

class LoadingState implements SpecieState {}

class LoadedState implements SpecieState {
  final List<SpecieModel> species;

  LoadedState(this.species);
}

class ExceptionState implements SpecieState {
  final String message;

  ExceptionState(this.message);
}
