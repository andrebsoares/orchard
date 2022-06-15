import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:orchard/models/tree_model.dart';
import 'package:orchard/repositories/interfaces/i_tree_repository.dart';

class TreeRepository implements ITreeRepository {
  final FirebaseFirestore firebaseFirestore;
  final collection = "trees";

  TreeRepository(this.firebaseFirestore);

  @override
  Future<void> create(TreeModel tree) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<TreeModel>> getAll() async {
    final result = await firebaseFirestore.collection(collection).get();

    return result.docs.map((treeMap) => TreeModel.fromMap(treeMap)).toList();
  }
}
