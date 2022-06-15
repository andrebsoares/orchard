import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tree_group_model.g.dart';

@JsonSerializable()
class TreeGroupModel extends Equatable{
  final String id;
  final String name;
  final String description;

  //Código, Nome, Descrição
  TreeGroupModel(
      {required this.id, required this.name, required this.description});

  factory TreeGroupModel.fromJson(Map<String, dynamic> json) =>
      _$TreeGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$TreeGroupModelToJson(this);

  TreeGroupModel.fromMap(dynamic map)
    :  id = map['id'],
      description = map['description'],
      name = map['name'];

  @override

  List<Object?> get props => [id, name, description];
}
