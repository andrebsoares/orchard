import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:orchard/models/tree_model.dart';
import 'package:orchard/repositories/tree_repository.dart';

final treeMap = {"id":"1","description":"macieira","plantedIn":"2022-05-25T15:59:53.000","specie":{"id":"0101","description":"Arvore de Maçã"},"treeGroup":{"id":"1","name":"Cítricos","description":"Grupo cítricos"}};
final treeModel = TreeModel.fromMap(treeMap);

const treeCollection = "trees";

void main() {

  late TreeRepository treeRepository;
  late FakeFirebaseFirestore firestore;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    treeRepository = TreeRepository(firestore);
  });

  test('tree repository getAll', () async {
    await firestore.collection(treeCollection).add(treeMap);
    final result = await treeRepository.getAll();

    expect(result, isA <List<TreeModel>>());
    expect(result, [treeModel]);
  });

  test('tree repository create', () async {
    treeRepository.create(treeModel);
    final result = await firestore.collection(treeCollection).get();

    expect(result.docs.length, 1);
  });
}