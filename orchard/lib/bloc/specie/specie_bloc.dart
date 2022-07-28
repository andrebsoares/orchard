import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orchard/bloc/specie/specie_event.dart';
import 'package:orchard/bloc/specie/specie_state.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';

class SpecieBloc extends Bloc<SpecieEvent, SpecieState> {
  final ISpecieRepository specieRepository;

  SpecieBloc(this.specieRepository) : super(EmptyState()) {
    on<GetAllSpecies>(_get);
    on<CreateSpecie>(_create);
  }

  Future<void> _get(SpecieEvent event, Emitter emit) async {
    emit(LoadingState());

    await emit.onEach<List<SpecieModel>>(specieRepository.getAll(),
        onData: (species) {
      emit(LoadedState(species));
    }, onError: (error, st) {
      emit(ExceptionState(error.toString()));
    });
  }

  Future<void> _create(CreateSpecie event, Emitter emit) async {
    await specieRepository.create(event.specie);
  }
}
