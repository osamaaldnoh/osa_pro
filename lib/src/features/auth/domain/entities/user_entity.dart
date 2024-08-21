import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String? username;
  final String? password;

  UserAuthEntity({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}
