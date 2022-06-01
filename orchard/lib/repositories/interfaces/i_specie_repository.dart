import 'package:orchard/models/specie_model.dart';

abstract class ISpecieRepository {
  Future<List<SpecieModel>> getAll();
  Future<void> create(SpecieModel specie);
}
