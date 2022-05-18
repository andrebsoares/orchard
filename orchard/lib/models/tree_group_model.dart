import 'package:json_annotation/json_annotation.dart';

part 'tree_group_model.g.dart';

@JsonSerializable()
class TreeGroupModel {
  final String id;
  final String name;
  final String description;

  //Código, Nome, Descrição
  TreeGroupModel(
      {required this.id, required this.name, required this.description});

  factory TreeGroupModel.fromJson(Map<String, dynamic> json) =>
      _$TreeGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$TreeGroupModelToJson(this);
}
