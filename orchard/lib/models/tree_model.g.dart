// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreeModel _$TreeModelFromJson(Map<String, dynamic> json) => TreeModel(
      id: json['id'] as String,
      description: json['description'] as String,
      plantedIn: DateTime.parse(json['plantedIn'] as String),
      specie: SpecieModel.fromJson(json['specie'] as Map<String, dynamic>),
      treeGroup:
          TreeGroupModel.fromJson(json['treeGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TreeModelToJson(TreeModel instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'plantedIn': instance.plantedIn.toIso8601String(),
      'specie': instance.specie,
      'treeGroup': instance.treeGroup,
    };
