import 'package:orchard/models/specie_model.dart';

class TestUtil {

  static SpecieModel getSpecie({description = "Macieira", id = "0101"}) {
    return SpecieModel(description: description, id: id);
  }
}