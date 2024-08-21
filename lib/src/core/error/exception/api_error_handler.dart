// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'dart:io';

// import 'package:osa_pro/src/core/error/error.dart';

// class ApiErrorHandler {
//   static dynamic getMessage(error) {
//     dynamic errorDescription = "";
//     if (error is Exception) {
//       try {
//         if (error is http.ClientException) {
//           switch (error) {
//             case CancelException():
//               errorDescription = "Request to API server was cancelled";
//               break;
//             case ConnectionTimeoutException():
//               errorDescription = "Connection timeout with API server";
//               break;
//             case SendTimeoutException():
//               errorDescription = "Send timeout";
//               break;
//             case UnknownException():
//               errorDescription = "Request to API call limit excited ";
//               break;
//             case ReceiveTimeoutException():
//               errorDescription = "Receive timeout in connection with API server";
//               break;
//             case BadResponseException():
//               switch (error.Response?.statusCode) {
//                 case 403:
//                   if(error.response!.data['errors'] != null){
//                     ErrorResponse errorResponse = ErrorResponse.fromJson(error.response?.data);
//                    errorDescription = errorResponse.errors?[0].message;
//                   }else{
//                     errorDescription = error.response!.data['message'];
//                   }
//                   break;
//                 case 401:
//                   if(error.response!.data['errors'] != null){
//                     ErrorResponse errorResponse = ErrorResponse.fromJson(error.response?.data);
//                     errorDescription = errorResponse.errors?[0].message;
//                   }else{
//                     errorDescription = error.response!.data['message'];
//                   }
//                   Provider.of<AuthController>(Get.context!,listen: false).clearSharedData();
//                   break;
//                 case 404:
//                   errorDescription = error.response!.data['message'];
//                   break;
//                 case 500:
//                 errorDescription = error.response?.statusMessage;
//                 break;
//                 case 503:
//                 case 429:
//                   errorDescription = error.response?.statusMessage;
//                   break;
//                 default:
//                   ErrorResponse errorResponse = ErrorResponse.fromJson(error.response!.data);
//                   if (errorResponse.errors != null && errorResponse.errors!.isNotEmpty) {
//                     errorDescription = errorResponse;
//                   } else {errorDescription = "Failed to load data - status code: ${error.response!.statusCode}";
//                   }
//               }
//               break;
//             case BadCertificateException():
//               // TODO: Handle this case.
//               break;
//             case ConnectionErrorException():
//               // TODO: Handle this case.
//               break;
//             }
//         } else {
//           errorDescription = "Unexpected error occured";
//         }
//       } on FormatException catch (e) {
//         errorDescription = e.toString();
//       }
//     } else {
//       errorDescription = "is not a subtype of exception";
//     }
//     return errorDescription;
//   }
// }
