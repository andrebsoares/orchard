import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:orchard/bloc/event.dart';
import 'package:orchard/bloc/specie_bloc.dart';
import 'package:orchard/bloc/state.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';

class SpecieRepositoryMock extends Mock implements ISpecieRepository {}

void main() {
  late ISpecieRepository specieRepository;
  late SpecieBloc specieBloc;
  setUp(() {
    specieRepository = SpecieRepositoryMock();
    specieBloc = SpecieBloc(specieRepository);
  });

  blocTest<SpecieBloc, State>(
    'GetAll',
    build: (() {
      when(
        () => specieRepository.getAll(),
      ).thenAnswer((invocation) => Stream.value([]));
      return specieBloc;
    }), 
    act: ((specieBloc) => specieBloc.add(GetAll(),)),
    expect: (() => [
      isA<LoadingState>(),
      isA<LoadedState>()
    ])
  );
  
}
