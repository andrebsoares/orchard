import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:orchard/bloc/specie/specie_event.dart';
import 'package:orchard/bloc/specie/specie_bloc.dart';
import 'package:orchard/bloc/specie/specie_state.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';

import '../test_util.dart';

class SpecieRepositoryMock extends Mock implements ISpecieRepository {}

void main() {
  late ISpecieRepository specieRepository;
  late SpecieBloc specieBloc;
  setUp(() {
    specieRepository = SpecieRepositoryMock();
    specieBloc = SpecieBloc(specieRepository);
  });

  blocTest<SpecieBloc, SpecieState>('GetAll', build: (() {
    when(
      () => specieRepository.getAll(),
    ).thenAnswer((invocation) => Stream.value([]));
    return specieBloc;
  }),
      act: ((specieBloc) => specieBloc.add(
            GetAll(),
          )),
      expect: (() => [isA<LoadingState>(), isA<LoadedState>()]));

  blocTest<SpecieBloc, SpecieState>(
    'Create',
    build: (() {
      when(() => specieRepository.create(TestUtil.getSpecie()))
          .thenAnswer((invocation) => Future.value());
      return specieBloc;
    }),
    act: ((specieBloc) => specieBloc.add(Create(TestUtil.getSpecie()))),
    expect: (() => []),
  );
}
