import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orchard/bloc/event.dart';
import 'package:orchard/bloc/state.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/specie_repository.dart';

class SpecieBloc extends Bloc<Event, State> {
  final SpecieRepository specieRepository;

  SpecieBloc(this.specieRepository) : super(EmptyState()) {
    on<GetAll>(_get);
  }

  Future<void> _get(Event event, Emitter emit) async {
    emit(LoadingState());

    await emit.onEach<List<SpecieModel>>(specieRepository.getAll(),
        onData: (species) {
      emit(LoadedState(species));
    }, onError: (error, st) {
      emit(ExceptionState(error.toString()));
    });
  }
}
