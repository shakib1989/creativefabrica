// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) => FailureModel(
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$FailureModelToJson(FailureModel instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      id: json['id'] as String,
      fileType: json['fileType'] as String,
      mimeType: json['mimeType'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileType': instance.fileType,
      'mimeType': instance.mimeType,
      'path': instance.path,
    };

TextIntValueModel _$TextIntValueModelFromJson(Map<String, dynamic> json) =>
    TextIntValueModel(
      text: json['text'] as String,
      value: json['value'] as int,
    );

Map<String, dynamic> _$TextIntValueModelToJson(TextIntValueModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
