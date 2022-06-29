import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orchard/models/specie_model.dart';
import 'package:orchard/models/tree_group_model.dart';

part 'tree_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TreeModel extends Equatable {
  final String id;
  final String description;
  final DateTime plantedIn;
  final SpecieModel specie;
  final TreeGroupModel treeGroup;

  const TreeModel(
      {required this.id,
      required this.description,
      required this.plantedIn,
      required this.specie,
      required this.treeGroup});

  factory TreeModel.fromJson(Map<String, dynamic> json) =>
      _$TreeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TreeModelToJson(this);

  TreeModel.fromMap(dynamic map)
      : id = map['id'],
        description = map['description'],
        plantedIn = DateTime.parse(map['plantedIn']),
        specie = SpecieModel.fromMap(map['specie']),
        treeGroup = TreeGroupModel.fromMap(map['treeGroup']);

  @override
  List<Object?> get props => [id, description, plantedIn, specie, treeGroup];
}
