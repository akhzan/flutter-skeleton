// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/bad_request_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/forbidden_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/gateway_timeout_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/internal_server_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/not_found_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/service_unavailable_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/unauthorized_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/http/unprocessable_entity_error_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/self_defined/internal_device_offline_network_exception.dart';
// import 'package:canfazz_freelancer_app/core/helpers/network/exception/self_defined/other_error_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

abstract class HttpClient {
  Dio client;

  HttpClient({String baseUrl, int timeoutMilliseconds = 7000}) {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: timeoutMilliseconds,
        receiveTimeout: timeoutMilliseconds,
        contentType: "application/json");

    this.client = Dio(options);
    this.interceptors();
  }

  void interceptors() {
    this
        .client
        .interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
          debugPrint(
              "[DIO DEBUG] Request : { baseUrl: ${options.baseUrl}, path: ${options.path}, method: ${options.method}, contentType: ${options.contentType}, headers: ${options.headers}, queryParams: ${options.queryParameters}, data: ${options.data} }");

          return options;
        }, onResponse: (Response response) {
          debugPrint("[DIO DEBUG] Response : $response");
          return response;
        }, onError: (DioError error) async {
          if (error.response?.data != null) {
            debugPrint("[DIO DEBUG] Error Response : ${error.response.data}");
          }
          debugPrint("[DIO DEBUG] Error Response : ${error.response.data}");

          return error;
        }));
  }

  Future<dynamic> request({
    @required String method,
    @required String uri,
    dynamic data,
    Map<String, dynamic> queryParams,
    Map<String, dynamic> additionalHeaders,
  }) async {
    try {
      Options options = Options(
        method: method,
        headers: additionalHeaders,
      );

      Response response = await this.client.request(uri,
          data: data, queryParameters: queryParams, options: options);

      if (response != null) {
        if (response.statusCode == 204) {
          return null;
        }
        return response.data;
      }

      // throw createHTTPException(response);
    } catch (e) {
      // if (e is DioError) {
      //   throw manageDioException(e);
      // }

      // throw OtherErrorException(
      //   message: "Unknown Error !"
      // );
    }
  }

  // Exception createHTTPException(Response response){
  //   String errorMessage = (response.data is Map) ? response.data['error'] : response.data;
  //   Exception exception = OtherErrorException( message: 'Empty Response' );

  //   if(response != null) {
  //     switch (response.statusCode) {
  //       case BadRequestErrorException.code:
  //         exception = BadRequestErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case InternalServerErrorException.code:
  //         exception = InternalServerErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case NotFoundErrorException.code:
  //         exception = NotFoundErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case UnauthorizedErrorException.code:
  //         exception = UnauthorizedErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case UnProcessableEntityErrorException.code:
  //         exception = UnProcessableEntityErrorException(
  //             message: errorMessage,
  //             responseData: response.data
  //         );
  //         break;
  //       case ForbiddenErrorException.code:
  //         exception = ForbiddenErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case GatewayTimeoutErrorException.code:
  //         exception = GatewayTimeoutErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       case ServerUnavailableErrorException.code:
  //         exception = ServerUnavailableErrorException(
  //             message: errorMessage
  //         );
  //         break;
  //       default:
  //         exception = OtherErrorException(
  //             message: errorMessage
  //         );
  //     }
  //   }
  //   return exception;
  // }

  // Exception manageDioException(DioError error){
  //   switch(error.type){
  //     case DioErrorType.CANCEL:
  //       return OtherErrorException(
  //           message: 'Request API server was cancelled'
  //       );
  //       break;
  //     case DioErrorType.CONNECT_TIMEOUT:
  //       return OtherErrorException(
  //           message: 'Connection timeout with API server'
  //       );
  //       break;
  //     case DioErrorType.DEFAULT:
  //       return InternalDeviceOfflineNetworkException();
  //       break;
  //     case DioErrorType.RECEIVE_TIMEOUT:
  //       return OtherErrorException(
  //           message: 'Receive timeout in connection with API server'
  //       );
  //       break;
  //     case DioErrorType.SEND_TIMEOUT:
  //       return OtherErrorException(
  //           message: 'Send Timout in connection with API server'
  //       );
  //       break;
  //     case DioErrorType.RESPONSE:
  //       return createHTTPException(error.response);
  //       break;
  //     default:
  //       return OtherErrorException(
  //           message: 'Unknown API Exception'
  //       );
  //   }
  // }
}
