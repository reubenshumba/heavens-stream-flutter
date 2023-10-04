import 'user.dart';

class AuthenticatedUser {
  final String token;
  final User user;

  AuthenticatedUser({required this.token, required this.user});

  factory AuthenticatedUser.fromJson(Map<String, dynamic> json) {
    return AuthenticatedUser(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
  }
}




