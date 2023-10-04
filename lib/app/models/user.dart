import 'authority.dart';

class User {
  final int id;
  final String username;
  final String email;
  final bool active;
  final bool accountNonExpired;
  final bool accountNonLocked;
  final bool credentialsNonExpired;
  final bool delete;
  final bool edit;
  final bool create;
  final List<Authority> authorities;
  final dynamic heavensOwned;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.active,
    required this.accountNonExpired,
    required this.accountNonLocked,
    required this.credentialsNonExpired,
    required this.delete,
    required this.edit,
    required this.create,
    required this.authorities,
    required this.heavensOwned,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final List<dynamic> authorityList = json['authorities'];

    List<Authority> authorities = authorityList
        .map((authorityJson) => Authority.fromJson(authorityJson))
        .toList();

    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      active: json['active'] as bool,
      accountNonExpired: json['accountNonExpired'] as bool,
      accountNonLocked: json['accountNonLocked'] as bool,
      credentialsNonExpired: json['credentialsNonExpired'] as bool,
      delete: json['delete'] as bool,
      edit: json['edit'] as bool,
      create: json['create'] as bool,
      authorities: authorities,
      heavensOwned: json['heavensOwned'], // This field is dynamic
    );
  }
}