import 'package:orchard/models/tree_model.dart';

abstract class ITreeRepository {
  Future<List<TreeModel>> getAll();
  Future<void> create(TreeModel tree);
}