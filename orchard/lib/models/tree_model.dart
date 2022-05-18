import 'package:json_annotation/json_annotation.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/models/tree_group_model.dart';

part 'tree_model.g.dart';

@JsonSerializable()
class TreeModel {
  final String id;
  final String description;
  final DateTime plantedIn;
  final SpecieModel specie;
  final TreeGroupModel treeGroup;

  TreeModel(
      {required this.id,
      required this.description,
      required this.plantedIn,
      required this.specie,
      required this.treeGroup});

  factory TreeModel.fromJson(Map<String, dynamic> json) =>
      _$TreeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TreeModelToJson(this);
}
