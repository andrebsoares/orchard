abstract class State {}

class EmptyState implements State {}

class LoadingState implements State {}

class LoadedState<T> implements State {
  final List<T> lists;

  LoadedState(this.lists);
}

class ExceptionState implements State {
  final String message;

  ExceptionState(this.message);
}
