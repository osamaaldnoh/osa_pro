// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/base_http_methods.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';

import '../../config/config.dart';
import '../../error/exception/exception_handlers.dart';

// typedef T = Future<Map<String, dynamic>>;

class HttpMethods extends BaseHttpMethods {
  final http.Client client;
  final SharedPreferencesService _sharedPer = SharedPreferencesService(sl());
  HttpMethods({
    required this.client,
  });
  @override
  Future<T> getApi<T>({required String url}) async {
    try {
      final response =
          await client.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      return response as T;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
    // on SocketException catch (e) {
    //   throw SocketException(e.toString());
    // } on FormatException catch (_) {
    //   throw const FormatException("Unable to process the data");
    // } catch (e) {
    //   rethrow;
    // }
  }

  @override
  Future<T> postApi<T>(
      {required String pathUri, required Map<String, dynamic> body}) async {
    try {
      final response = await client
          .post(
        HelperService.buildUri(pathUri),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${_sharedPer.getString("token")}'
        },
        body: jsonEncode(body),
      )
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          return throw TimeoutException("Request timed out");
        },
      );
      // print("response :::${response.body}");
      // if (response.statusCode == 200) {
      //   final Map<String, dynamic> data = jsonDecode(response.body);

      //   return data as T;
      // } else {
      //   throw BadCertificateException(response.statusCode.toString());
      // }
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet connection',
      );
    } on TimeoutException {
      throw RequestTimeOut(
        'API not responded in time',
      );
    }
    // on TimeoutException catch (e) {
    //   print("EEEEE:::::::::::${ExceptionHandlers().getExceptionString(e)}");
    //   throw ExceptionHandlers().getExceptionString(e);
    // } catch (e) {
    //   print(
    //       "EEEEE @@@@@@@@@@@@!######${ExceptionHandlers().getExceptionString(e)}");
    //   throw ExceptionHandlers().getExceptionString(e);
    // }
    // on FormatException catch (_) {
    //   throw const FormatException("Unable to process the data");
    // } on http.ClientException catch (e) {
    //   throw HttpErrorException('client exception : $e');
    // }
  }

//----------------------ERROR STATUS CODES----------------------

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.body;
        return jsonDecode(responseJson);
      case 400: //Bad request
        throw BadRequestException(jsonDecode(response.body)['message']);
      case 401: //Unauthorized
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 403: //Forbidden
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 404: //Resource Not Found
        throw NotFoundException(jsonDecode(response.body)['message']);
      case 500: //Internal Server Error
      default:
        throw FetchDataException(
            'Something went wrong! ${response.statusCode}');
    }
  }

  // Future<http.Response> postApi(
  //     {required String url, required Map<String, dynamic> body}) async {
  //   try {
  //     final response = await client.post(
  //       Uri.parse(url),
  //       body: jsonEncode(body),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Authorization': 'Bearer ${_sharedPer.getString("token")}'
  //       },
  //     ).timeout(const Duration(seconds: 10));
  //     return response;
  //   } on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<T> postApi(
  //     {required String url, required Map<String, dynamic> body}) async {
  //   try {
  //     final response = await client.post(
  //       Uri.parse(url),
  //       body: jsonEncode(body),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'Authorization': 'Bearer ${_sharedPer.getString("token")}'
  //       },
  //     ).timeout(const Duration(seconds: 10));
  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> data = jsonDecode(response.body);
  //       return data as T;
  //     } else {
  //       throw ServerException(
  //           message: "From server statatus ${response.statusCode}");
  //     }
  //   } on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<http.Response> postApi( String url, {Map<String, dynamic>? data,}) async {
  //   try {
  //     final response = await client
  //         .post(Uri.parse(url), body: data)
  //         .timeout(const Duration(seconds: 10));
  //    return response;
  //   } on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // dynamic returnResponse(http.Response response) {
  //   print('response.statusCode ${response.statusCode}');
  //   switch (response.statusCode) {
  //     case 200:
  //       dynamic responseJson = jsonDecode(response.body);
  //       return responseJson;
  //     case 400:
  //       dynamic responseJson = jsonDecode(response.body);
  //       return responseJson;
  //     default:
  //       throw FetchDataException(
  //           "Error accoured while communication with server " +
  //               response.statusCode.toString());
  //   }
  // }
}
