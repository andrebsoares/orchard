import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/specie_repository.dart';

List<SpecieModel> tSpecieList = [
  const SpecieModel(id: "1", description: "Laranjeira"),
  const SpecieModel(id: "2", description: "Coqueiro")
];
const speciesCollection = 'species';
final specieJson = [
  {"id": "1", "description": "Laranjeira"},
  {"id": "2", "description": "Coqueiro"}
];

void main() {
  late SpecieRepository specieRepository;
  late FakeFirebaseFirestore firestore;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    specieRepository = SpecieRepository(firestore);
  });

  test('specie repository getAll', () async {
    await firestore.collection(speciesCollection).add(specieJson[0]);
    await firestore.collection(speciesCollection).add(specieJson[1]);

    final result = await specieRepository.getAll();

    expect(result, tSpecieList);
    expect(result, isA<List<SpecieModel>>());
  });

  test('specie repository create', () async {
    await specieRepository.create(tSpecieList[0]);

    final data = await firestore.collection(speciesCollection).get();

    expect(data.docs.length, 1);
  });
}
