import 'package:orchard/models/tree_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'harvest_tree_model.g.dart';

@JsonSerializable()
class HarvestTreeModel {
  final TreeModel tree;
  final num grossWeight;

  HarvestTreeModel({required this.tree, required this.grossWeight});

  factory HarvestTreeModel.fromJson(Map<String, dynamic> json) =>
      _$HarvestTreeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HarvestTreeModelToJson(this);
}
