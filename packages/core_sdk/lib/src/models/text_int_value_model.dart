part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class TextIntValueModel {
  String text;
  int value;

  TextIntValueModel({
    required this.text,
    required this.value,
  });

  factory TextIntValueModel.empty() => TextIntValueModel(
        text: '',
        value: 0,
      );

  factory TextIntValueModel.fromJson(Map<String, dynamic> json) =>
      _$TextIntValueModelFromJson(json);

  Map<String, dynamic> toJson() => _$TextIntValueModelToJson(this);
}
