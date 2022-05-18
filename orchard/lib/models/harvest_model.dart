import 'package:json_annotation/json_annotation.dart';
import 'package:orchard/models/harvest_tree_model.dart';

part 'harvest_model.g.dart';

@JsonSerializable()
class HarvestModel {
  final String id;
  final String information;
  final DateTime harvestDate;
  final num grossWeight;
  final List<HarvestTreeModel> harvestTrees;

  HarvestModel(
      {required this.id,
      required this.information,
      required this.harvestDate,
      required this.grossWeight,
      required this.harvestTrees});

  factory HarvestModel.fromJson(Map<String, dynamic> json) =>
      _$HarvestModelFromJson(json);

  Map<String, dynamic> toJson() => _$HarvestModelToJson(this);
}
