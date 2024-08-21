library error;

import 'package:equatable/equatable.dart';

class AppExeptions implements Exception {
  final _message;
  final _perfix;
  AppExeptions([this._message, this._perfix]);

  String toString() {
    return '$_perfix $_message';
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

class ServerException extends AppExeptions {
  ServerException([String? message]) : super(message, 'Internal server error');
}

class EmptyException implements Exception {}

class OfflineException implements Exception {}

class ErrorLoginStatus extends Equatable {
  final String message;

  ErrorLoginStatus({required this.message});

  @override
  List<Object> get props => [message];
}

// Http Exception
class CancelException implements Exception {}

class ConnectionTimeoutException implements Exception {}

class SendTimeoutException implements RouteException {
  final String? messageText;

  SendTimeoutException({required this.messageText});
  @override
  String get message => messageText.toString();
}

class UnknownException extends Equatable {
  final String message;

  UnknownException({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class ReceiveTimeoutException extends AppExeptions {
  ReceiveTimeoutException([String? message])
      : super(message, 'Request Time Out');
}

class BadResponseException extends AppExeptions {
  BadResponseException([String? message]) : super(message, 'Request Time Out');
}

class BadCertificateException extends AppExeptions {
  BadCertificateException([String? message])
      : super(message, 'Request Time Out');
}

class ConnectionErrorException extends AppExeptions {
  ConnectionErrorException([String? message])
      : super(message, 'Request Time Out');
}

class OtherErrorException extends AppExeptions {
  OtherErrorException([String? message]) : super(message, 'Request Time Out');
}

class HttpErrorException extends AppExeptions {
  HttpErrorException([String? message]) : super(message, 'Request Time Out');
}

class RequestTimeOut extends AppExeptions {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}
