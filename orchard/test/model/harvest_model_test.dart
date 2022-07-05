import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/harvest_model.dart';
import 'package:orchard/models/harvest_tree_model.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/models/tree_group_model.dart';
import 'package:orchard/models/tree_model.dart';

const String harvestJson =
    '{"id":"1","information":"Colheita de primavera","harvestDate":"2022-06-01T00:00:00.000","grossWeight":100,'
    '"harvestTrees":[{"tree":{"id":"1","description":"Laranja pera","plantedIn":"2022-01-01T00:00:00.000","specie":{"id":"1","description":"Laranjeira"},'
    '"treeGroup":{"id":"1","name":"Canteiro 1","description":"Grupo do canteiro 1"}},"grossWeight":100}]}';

void main() {
  test("Test convertion of json to HarvestModel", () {
    HarvestModel harvest = HarvestModel.fromJson(jsonDecode(harvestJson));
    expect(harvest.id, isNotNull);
    expect(harvest.id, "1");

    expect(harvest.information, isNotNull);
    expect(harvest.information, "Colheita de primavera");

    expect(harvest.harvestDate, isNotNull);
    expect(harvest.harvestDate, DateTime.parse('2022-06-01 00:00:00.000'));

    expect(harvest.grossWeight, isNotNull);
    expect(harvest.grossWeight, 100);

    expect(harvest.harvestTrees, isNotNull);
  });

  test("Test convertion of HarvestModel to Json", () {
    HarvestModel harvest = HarvestModel(
        id: "1",
        information: "Colheita de primavera",
        harvestDate: DateTime.parse('2022-06-01'),
        grossWeight: 100,
        harvestTrees: [
          HarvestTreeModel(
              tree: TreeModel(
                  id: "1",
                  description: "Laranja pera",
                  plantedIn: DateTime.parse("2022-01-01"),
                  specie: const SpecieModel(id: "1", description: "Laranjeira"),
                  treeGroup: const TreeGroupModel(
                      id: "1",
                      name: "Canteiro 1",
                      description: "Grupo do canteiro 1")),
              grossWeight: 100),
        ]);

    String resultHarvestJson = jsonEncode(harvest.toJson());

    expect(resultHarvestJson, harvestJson);
  });
}
