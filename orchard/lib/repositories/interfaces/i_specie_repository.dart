import 'package:orchard/models/specie_model.dart';

abstract class ISpecieRepository {
  Stream<List<SpecieModel>> getAll();
  Future<void> create(SpecieModel specie);
}
