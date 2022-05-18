// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harvest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarvestModel _$HarvestModelFromJson(Map<String, dynamic> json) => HarvestModel(
      id: json['id'] as String,
      information: json['information'] as String,
      harvestDate: DateTime.parse(json['harvestDate'] as String),
      grossWeight: json['grossWeight'] as num,
      harvestTrees: (json['harvestTrees'] as List<dynamic>)
          .map((e) => HarvestTreeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HarvestModelToJson(HarvestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'information': instance.information,
      'harvestDate': instance.harvestDate.toIso8601String(),
      'grossWeight': instance.grossWeight,
      'harvestTrees': instance.harvestTrees,
    };
