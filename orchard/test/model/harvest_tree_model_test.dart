import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/harvest_tree_model.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/models/tree_group_model.dart';
import 'package:orchard/models/tree_model.dart';

const String harvestTreeJson =
    '{"tree":{"id":"1","description":"Laranja pera","plantedIn":"2022-01-01T00:00:00.000","specie":{"id":"1","description":"Laranjeira"},'
    '"treeGroup":{"id":"1","name":"Canteiro 1","description":"Grupo do canteiro 1"}},"grossWeight":100}';

void main() {
  test("Test convertion of json to HarvestTreeModel", () {
    HarvestTreeModel harvestTree =
        HarvestTreeModel.fromJson(jsonDecode(harvestTreeJson));

    expect(harvestTree.tree, isNotNull);

    expect(harvestTree.grossWeight, isNotNull);
    expect(harvestTree.grossWeight, 100);
  });

  test("Test convertion of HarvestTreeModel to json", () {
    HarvestTreeModel harvestTree = HarvestTreeModel(
        tree: TreeModel(
          id: "1",
          description: "Laranja pera",
          plantedIn: DateTime.parse("2022-01-01T00:00:00.000"),
          specie: const SpecieModel(id: "1", description: "Laranjeira"),
          treeGroup: const TreeGroupModel(
              id: "1", name: "Canteiro 1", description: "Grupo do canteiro 1"),
        ),
        grossWeight: 100);

    String resultHarvestTreeJson = jsonEncode(harvestTree.toJson());
    expect(resultHarvestTreeJson, harvestTreeJson);
  });
}
