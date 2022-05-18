import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:orchard/models/specie_model.dart';

const String specieJson = "{\"id\":\"0101\",\"description\":\"teste 1\"}";

void main() {
  test("Test convertion of json to SpecieModel", () {
    SpecieModel specie = SpecieModel.fromJson(jsonDecode(specieJson));

    expect(specie.id, isNotNull);
    expect(specie.description, isNotNull);
  });

  test("Test convertion of SpecieModel to Json", () {
    SpecieModel specie = SpecieModel(id: "0101", description: "teste 1");

    String resultSpecieJson = jsonEncode(specie.toJson());

    expect(resultSpecieJson, specieJson);
  });
}