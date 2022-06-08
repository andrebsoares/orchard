import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specie_model.g.dart';

@JsonSerializable()
class SpecieModel extends Equatable {
  final String id;
  final String description;

  const SpecieModel({
    required this.id,
    required this.description,
  });

  SpecieModel.fromMap(dynamic map)
      : id = map['id'],
        description = map['description'] as String;

  factory SpecieModel.fromJson(Map<String, dynamic> json) =>
      _$SpecieModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecieModelToJson(this);

  @override
  List<Object?> get props => [id, description];
}
