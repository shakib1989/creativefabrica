

import 'package:core_sdk/exports.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_json.dart';
import 'base_meta_data.dart';

part 'base_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseApiResponse extends BaseJson {
  final int statusCode;
  final BaseMetaData meta;

  BaseApiResponse({
    required this.statusCode,
    required this.meta,
  });

  FailureModel toFailureModel() {
    return FailureModel(
      message: meta.message,
    );
  }


  @override
  factory BaseApiResponse.genericSuccess() => BaseApiResponse(
    meta: BaseMetaData(message: 'Success'),
    statusCode: 200,
  );


  @override
  factory BaseApiResponse.genericFailure() => BaseApiResponse(
        meta: BaseMetaData(message: 'An Error Occurred'),
        statusCode: 400,
      );


  @override
  factory BaseApiResponse.timeout() => BaseApiResponse(
    meta: BaseMetaData(message: 'An Error Occurred'),
    statusCode: 400,
  );

  @override
  factory BaseApiResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseApiResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BaseApiResponseToJson(this);
}
