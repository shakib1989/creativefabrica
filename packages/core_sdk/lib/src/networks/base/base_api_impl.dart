import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:core_sdk/data/network/default_imports.dart';
import 'package:dio/dio.dart';

enum ApiRequestType { get, post, put, patch, delete }

abstract class BaseApiImpl<Request extends BaseJson,
    ApiResponse extends BaseJson> {
  static Dio? _client;

  static Dio get client {
    _client ??= Dio();
    return _client!;
  }

  final String baseUrl;
  final String endpoint;
  final ApiRequestType requestType;
  final bool useMock;

  BaseApiImpl({
    required this.baseUrl,
    required this.endpoint,
    required this.requestType,
    this.useMock = false,
  });

  Map<String, String> get defaultHeaders {
    final headers = <String, String>{};
    return headers;
  }

  Future<Either<FailureModel, ApiResponse>> mock(Request request);

  Future<Either<FailureModel, ApiResponse>> apiCall(
    Request request, {
    Map<String, String> headers = const {},
    Map<String, String> pathParams = const {},
  }) async {
    if (useMock) {
      return await mock(request);
    }

    String url = '$baseUrl$endpoint';
    for (String key in pathParams.keys) {
      url = url.replaceAll("{$key}", Uri.encodeComponent(pathParams[key]!));
    }
    final newHeaders = defaultHeaders;
    newHeaders.addAll(headers);

    log('Request');
    log('Url : $url');
    log('Headers');
    log(newHeaders.toString());
    log('body');
    log(request.toJson().toString());
    if (requestType == ApiRequestType.get) {
      return _makeGetCall(
        url: url,
        headers: newHeaders,
        request: request,
      );
    } else if (requestType == ApiRequestType.post) {
      return _makePostCall(
        url: Uri.parse(url),
        headers: newHeaders,
        request: request,
      );
    }

    return Left(FailureModel.apiFailure());
  }

  Future<Either<FailureModel, ApiResponse>> _makeGetCall({
    required String url,
    required Map<String, String> headers,
    required Request request,
  }) async {
    try {
      final response = await client.get(
        url,
        queryParameters: request.toJson(),
        options: Options(
          headers: headers,
        ),
      );

      print("\n\n\nresponse code = ${response.statusCode}");
      final json = response.data;
      log("\n\n\n${json.toString()}");
      if (isSuccess(response)) {
        return Right(apiResponseFromJson(response.data));
      }

      return Left(FailureModel.apiFailure());
    } on TimeoutException catch (_) {
      print("<<<>>> TimeoutException");
      return Left(FailureModel(
        message: 'Server Timeout. Please try again later',
      ));
    } catch (e) {
      print("<<<>>> Exception ${e.toString()}");
      return Left(
        FailureModel(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<FailureModel, ApiResponse>> _makePostCall({
    required Uri url,
    required Map<String, String> headers,
    required Request request,
  }) async {
    try {
      final body = jsonEncode(request);
      final response = await client
          .post(
            url.toString(),
            data: body,
            options: Options(
              headers: headers,
            ),
          )
          .timeout(const Duration(seconds: 130));

      print("\n\n\n<<<>>> response code = ${response.statusCode}");
      log("\n\n\n<<<>>> body :");
      log("\n\n\n${jsonEncode(response.data)}");
      final json = response.data;
      log("\n\n\n${json.toString()}");
      if (isSuccess(response)) {
        return Right(apiResponseFromJson(json));
      }

      return Left(FailureModel.apiFailure());
    } on TimeoutException catch (_) {
      print("<<<>>> TimeoutException");
      return Left(FailureModel(
        message: 'Server Timeout. Please try again later',
      ));
    } catch (e) {
      print("<<<>>> Exception ${e.toString()}");
      return Left(
        FailureModel(
          message: e.toString(),
        ),
      );
    }
  }

  bool isSuccess(Response response) {
    final statusCode = response.statusCode ?? 0;
    if (200 <= statusCode && statusCode < 300) {
      return true;
    }
    return false;
  }

  ApiResponse apiResponseFromJson(Map<String, dynamic> json);
}
