import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/tree_group_model.dart';

String treeGroupJson = '{"id":"1","name":"Cítricos","description":"Grupo cítricos"}';

void main () {
  test("Test convertion of json to TreeGroupModel", (){
    TreeGroupModel treeGroup = TreeGroupModel.fromJson(jsonDecode(treeGroupJson));

    expect(treeGroup.id, isNotNull);
    expect(treeGroup.id, "1");
    expect(treeGroup.name, "Cítricos");
    expect(treeGroup.description, "Grupo cítricos");
  });

  test("Test convertion of TreeGroupModel to Json", () {
    TreeGroupModel treeGroup = TreeGroupModel(id: "1", name: "Cítricos", description: "Grupo cítricos");

    String resultTreeGroupJson = jsonEncode(treeGroup.toJson());

    expect(resultTreeGroupJson, treeGroupJson);
  });
}