import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final String? token;
  final String? refreshToken;

  TokenEntity({required this.token, required this.refreshToken});

  @override
  List<Object?> get props => [token, refreshToken];
}
