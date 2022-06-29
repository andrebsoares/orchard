abstract class Event {}

class GetAll implements Event {}

class Create<T> implements Event {
  final T object;

  Create(this.object);
}
