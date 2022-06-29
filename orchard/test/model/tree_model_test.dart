import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/models/tree_group_model.dart';
import 'package:orchard/models/tree_model.dart';

String treeJson =
    '{"id":"1","description":"macieira","plantedIn":"2022-05-25T15:59:53.000","specie":{"id":"0101","description":"Arvore de Maçã"},"treeGroup":{"id":"1","name":"Cítricos","description":"Grupo cítricos"}}';

void main() {
  test("Test convertion of json to TreeModel", () {
    TreeModel tree = TreeModel.fromJson(jsonDecode(treeJson));

    expect(tree.id, isNotNull);
    expect(tree.id, "1");
    expect(tree.description, "macieira");
    expect(tree.plantedIn, DateTime.parse("2022-05-25T15:59:53.000"));

    expect(tree.specie.id, isNotNull);
    expect(tree.specie.id, "0101");
    expect(tree.specie.description, "Arvore de Maçã");

    expect(tree.treeGroup.id, isNotNull);
    expect(tree.treeGroup.id, "1");
    expect(tree.treeGroup.name, "Cítricos");
    expect(tree.treeGroup.description, "Grupo cítricos");
  });

  test("Test convertion of TreeModel to Json", () {
    TreeModel tree = TreeModel(
      id: "1",
      description: "macieira",
      plantedIn: DateTime.parse("2022-05-25T15:59:53.000"),
      specie: const SpecieModel(id: "0101", description: "Arvore de Maçã"),
      treeGroup: const TreeGroupModel(
        id: "1",
        name: "Cítricos",
        description: "Grupo cítricos",
      ),
    );

    String resultTreeJson = jsonEncode(tree.toJson());

    expect(resultTreeJson, treeJson);
  });
}
