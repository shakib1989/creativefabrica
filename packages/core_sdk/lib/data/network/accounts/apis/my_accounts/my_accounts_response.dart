part of 'my_accounts_api.dart';

@JsonSerializable(explicitToJson: true)
class MyAccountsResponse
    extends BaseApiResponse {
  final List<UserAccountModel> data;
  MyAccountsResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory MyAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAccountsResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MyAccountsResponseToJson(this);
}
