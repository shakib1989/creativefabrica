import 'package:json_annotation/json_annotation.dart';

import '../base/exports.dart';

part 'empty_request.g.dart';

@JsonSerializable()
class EmptyRequest extends BaseJson {
  EmptyRequest();

  @override
  factory EmptyRequest.fromJson(Map<String, dynamic> json) =>
      _$EmptyRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EmptyRequestToJson(this);
}
