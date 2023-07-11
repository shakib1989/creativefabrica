import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'base_json.dart';
import 'exports.dart';

enum ApiRequestType { get, post, put, patch, delete }

abstract class BaseApiImpl<Request extends BaseJson,
    ApiResponse extends BaseJson> {
  static Client? _client;

  static Client get client {
    _client ??= Client();
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
    final appAuth = AuthSdkGetIt.shared.get<AuthRepository>().getAppAuthModel();

    final uri = Uri.parse(baseUrl);

    final headers = {
      'cache-control': 'no-cache',
      'content-type': 'application/json; charset=utf-8',
      'device-type': appAuth.device.deviceType,
      'host':  uri.host,
    };
    if (appAuth.token.isNotEmpty) {
      headers['token'] = appAuth.token;
    }
    if (appAuth.device.fingerprint.isNotEmpty) {
      headers['fingerprint'] = appAuth.device.fingerprint;
    }
    return headers;
  }

  Future<Either<BaseApiResponse, ApiResponse>> mock(Request request);

  Future<Either<BaseApiResponse, ApiResponse>> apiCall(
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
        url: Uri.parse(url),
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

    return Left(BaseApiResponse.genericFailure());
  }

  Future<Either<BaseApiResponse, ApiResponse>> _makeGetCall({
    required Uri url,
    required Map<String, String> headers,
    required Request request,
  }) async {
    final newUrl = (request.toJson().keys.isEmpty)
        ? url
        : url.replace(queryParameters: request.toJson());
    log("newUrl : $newUrl");
    try {
      final response = await client.get(
        newUrl,
        headers: headers,
      );
      print("\n\n\nresponse code = ${response.statusCode}");
      final json = jsonDecode(response.body);
      log("\n\n\n${json.toString()}");
      if (isSuccess(response)) {
        return Right(apiResponseFromJson(jsonDecode(response.body)));
      }
      return Left(BaseApiResponse.fromJson(jsonDecode(response.body)));
    } on TimeoutException catch (_) {
      return Left(
        BaseApiResponse(
          statusCode: -1,
          meta: BaseMetaData(
            message: 'Server Timeout',
          ),
        ),
      );
    } catch (e) {
      return Left(
        BaseApiResponse(
          statusCode: -1,
          meta: BaseMetaData(
            message: e.toString(),
          ),
        ),
      );
    }
  }

  Future<Either<BaseApiResponse, ApiResponse>> _makePostCall({
    required Uri url,
    required Map<String, String> headers,
    required Request request,
  }) async {
    try {
      final body = jsonEncode(request);
      final response = await client
          .post(
            url,
            body: body,
            headers: headers,
          )
          .timeout(const Duration(seconds: 130));

      print("\n\n\n<<<>>> response code = ${response.statusCode}");
      log("\n\n\n<<<>>> body :");
      log("\n\n\n${response.body}");
      final json = jsonDecode(response.body);
      log("\n\n\n${json.toString()}");
      if (isSuccess(response)) {
        return Right(apiResponseFromJson(json));
      }

      return Left(BaseApiResponse.fromJson(json));
    } on TimeoutException catch (_) {
      print("<<<>>> TimeoutException");
      return Left(BaseApiResponse(
        statusCode: -1,
        meta: BaseMetaData(
          message: 'Server Timeout',
        ),
      ));
    } catch (e) {
      print("<<<>>> Exception ${e.toString()}");
      return Left(
        BaseApiResponse(
          statusCode: -1,
          meta: BaseMetaData(
            message: e.toString(),
          ),
        ),
      );
    }
  }

  bool isSuccess(Response response) {
    if (200 <= response.statusCode && response.statusCode < 300) {
      return true;
    }
    return false;
  }

  ApiResponse apiResponseFromJson(Map<String, dynamic> json);
}
