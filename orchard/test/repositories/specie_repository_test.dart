import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/specie_repository.dart';

List<SpecieModel> tSpecieList = [
  SpecieModel(id: "1", description: "Laranjeira"),
  SpecieModel(id: "2", description: "Coqueiro")
];
late FirebaseFirestore firebaseFirestore;

void main() {
  late SpecieRepository specieRepository;
  setUp(() {
    specieRepository = SpecieRepository(firebaseFirestore);
  });
  test('specie repository ...', () async {
    when(() => specieRepository.getAll()).thenAnswer((_) async => tSpecieList);
    final result = await specieRepository.getAll();
    expect(result, tSpecieList);
  });
}
