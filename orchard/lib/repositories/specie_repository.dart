import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';
import 'package:uuid/uuid.dart';

class SpecieRepository implements ISpecieRepository {
  final FirebaseFirestore firebaseFirestore;
  final Uuid uuid;
  final collection = "species";

  SpecieRepository(this.firebaseFirestore, this.uuid);

  @override
  Future<void> create(SpecieModel specie) async {
    final id = uuid.v4();
    final specieNew = SpecieModel(id: id, description: specie.description);

    await firebaseFirestore.collection(collection).add(specieNew.toJson());
  }

  @override
  Stream<List<SpecieModel>> getAll() {
    return firebaseFirestore.collection(collection).snapshots().map(
        (documentsSnapshot) => documentsSnapshot.docs
            .map((doc) => SpecieModel.fromMap(doc.data()))
            .toList());
    // return result
    //     .map((specieMap) => SpecieModel.fromMap(specieMap))
    //     .toList();
  }
}
