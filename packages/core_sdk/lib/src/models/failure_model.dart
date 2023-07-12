part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class FailureModel {
  final String message;

  FailureModel({this.message = ''});

  factory FailureModel.empty() => FailureModel(message: '');

  factory FailureModel.genericFailure() => FailureModel(
        message: 'A error occurred',
      );

  factory FailureModel.apiFailure() => FailureModel(
        message: 'Failed to get the data from the api.',
      );

  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);

  Map<String, dynamic> toJson() => _$FailureModelToJson(this);
}
