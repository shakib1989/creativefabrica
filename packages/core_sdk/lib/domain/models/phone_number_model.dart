part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class PhoneNumberModel {
   String countryId;
   String dialCode;
   String number;

  PhoneNumberModel({
    required this.countryId,
    required this.dialCode,
    required this.number,
  });

  String getFullNumber({String divider='-'}) {
    return '$dialCode$divider$number';
  }


  factory PhoneNumberModel.empty() => PhoneNumberModel(
        countryId: '',
        dialCode: '',
        number: '',
      );

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberModelToJson(this);
}
