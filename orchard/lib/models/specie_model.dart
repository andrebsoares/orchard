import 'package:json_annotation/json_annotation.dart';

part 'specie_model.g.dart';

@JsonSerializable()
class SpecieModel {
  final String id;
  final String description;

  SpecieModel({
    required this.id,
    required this.description,
  });

  factory SpecieModel.fromJson(Map<String, dynamic> json) =>
      _$SpecieModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecieModelToJson(this);
}
