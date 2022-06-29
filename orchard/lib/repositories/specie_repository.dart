import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/repositories/interfaces/i_specie_repository.dart';

class SpecieRepository implements ISpecieRepository {
  final FirebaseFirestore firebaseFirestore;
  final collection = "species";

  SpecieRepository(this.firebaseFirestore);

  @override
  Future<void> create(SpecieModel specie) async {
    await firebaseFirestore.collection(collection).add(specie.toJson());
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
