part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class UserAccountModel {
  String accountNumber;
  String accountType;
  String productType;

  UserAccountModel({
    required this.accountNumber,
    required this.accountType,
    required this.productType,
  });

  factory UserAccountModel.empty() => UserAccountModel(
        accountNumber: '',
        accountType: '',
        productType: '',
      );

  factory UserAccountModel.fromJson(Map<String, dynamic> json) =>
      _$UserAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountModelToJson(this);
}
