abstract class SpecieState {}

class EmptyState implements SpecieState {}

class LoadingState implements SpecieState {}

class LoadedState<T> implements SpecieState {
  final List<T> lists;

  LoadedState(this.lists);
}

class ExceptionState implements SpecieState {
  final String message;

  ExceptionState(this.message);
}
