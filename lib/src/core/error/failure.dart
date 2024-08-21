// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  Failure({required this.message});
}

class OffLineFailure extends Failure {
  OffLineFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class EmptyCacheFailure extends Failure {
  EmptyCacheFailure({required super.message});

  @override
  List<Object?> get props => [];
}

class RequestTimeOutFailure extends Failure {
  RequestTimeOutFailure({required super.message});

  @override
  List<Object?> get props => [message];
}
