import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orchard/bloc/event.dart';
import 'package:orchard/bloc/state.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';

class SpecieBloc extends Bloc<Event, State> {
  final ISpecieRepository specieRepository;

  SpecieBloc(this.specieRepository) : super(EmptyState()) {
    on<GetAll>(_get);
    on<Create<SpecieModel>>(_create);
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

  Future<void> _create(Event event, Emitter emit) async {
   // specieRepository.create(event.);
  }
}
