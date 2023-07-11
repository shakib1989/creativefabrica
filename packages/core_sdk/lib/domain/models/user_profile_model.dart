part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class UserProfileModel {
  int userId;
  String fullName;
  GenderType? gender;
  @JsonKey(
    fromJson: DateTimeUtils.fromJsonOptional,
    toJson: DateTimeUtils.toJsonOptional,
  )
  DateTime? dob;

  UserProfileModel({
    required this.userId,
    required this.fullName,
    this.dob,
    required this.gender,
  });

  factory UserProfileModel.empty() => UserProfileModel(
        userId: 0,
        fullName: '',
        dob: null,
        gender: null,
      );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}
