import 'dart:convert';

class AuthRequest {
  AuthRequest({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory AuthRequest.fromRawJson(String str) =>
      AuthRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthRequest.fromJson(Map<String, dynamic> json) => AuthRequest(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
