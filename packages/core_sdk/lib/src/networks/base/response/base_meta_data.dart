import 'package:json_annotation/json_annotation.dart';
part 'base_meta_data.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseMetaData {
  final String message;

  BaseMetaData({required this.message});

  @override
  factory BaseMetaData.fromJson(Map<String, dynamic> json) =>
      _$BaseMetaDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BaseMetaDataToJson(this);
}
