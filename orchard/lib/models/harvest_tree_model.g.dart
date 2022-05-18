// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harvest_tree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarvestTreeModel _$HarvestTreeModelFromJson(Map<String, dynamic> json) =>
    HarvestTreeModel(
      tree: TreeModel.fromJson(json['tree'] as Map<String, dynamic>),
      grossWeight: json['grossWeight'] as num,
    );

Map<String, dynamic> _$HarvestTreeModelToJson(HarvestTreeModel instance) =>
    <String, dynamic>{
      'tree': instance.tree,
      'grossWeight': instance.grossWeight,
    };
