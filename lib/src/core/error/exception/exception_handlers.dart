import 'dart:async';
import 'dart:io';

class ExceptionHandlers {
  getExceptionString(error) {
    // switch (error) {
    //   case RequestTimeOut:
    //     return 'Request time out.';
    //   case SocketException:
    //     return 'No internet connection.';
    //   case HttpException:
    //     return 'HTTP error occured.';
    //   case FormatException:
    //     return 'Invalid data format.';
    //   case TimeoutException:
    //     return 'Request time out.';
    //   case BadRequestException:
    //     return error.message.toString();
    //   case UnAuthorizedException:
    //     return error.message.toString();
    //   case NotFoundException:
    //     return error.message.toString();
    //   case FetchDataException:
    //     return error.message.toString();
    //   default:
    //     return 'Unknown error occured.';
    // }
    if (error is SocketException) {
      return 'No internet connection.';
    } else if (error is HttpException) {
      return 'HTTP error occured.';
    } else if (error is FormatException) {
      return 'Invalid data format.';
    } else if (error is TimeoutException) {
      return 'Request timedout.';
    } else if (error is BadRequestException) {
      return error.message.toString();
    } else if (error is UnAuthorizedException) {
      return error.message.toString();
    } else if (error is NotFoundException) {
      return error.message.toString();
    } else if (error is FetchDataException) {
      return error.message.toString();
    } else if (error is RequestTimeOut) {
      return 'Request time out.';
    } else {
      return 'Unknown error occured.';
    }
  }
}

class FailureHandlersMessage {
  // Failure getFailure(error) {
  //   switch (error) {
  //     case SocketException:
  //       return Failure(message: SocketException());
  //   }
  //   ;
  // }
}

class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppException([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process the request', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responding', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'Unauthorized request', url);
}

class NotFoundException extends AppException {
  NotFoundException([String? message, String? url])
      : super(message, 'Page not found', url);
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message, String? url])
      : super(message, 'Request time out', url);
}

class EmptyException extends AppException {
  EmptyException([String? message, String? url])
      : super(message, 'Empty Data Local', url);
}
