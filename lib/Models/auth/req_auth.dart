import 'package:json_annotation/json_annotation.dart';
part 'req_auth.g.dart';

@JsonSerializable()
class AuthRequest {
  AuthRequest({
    required this.email,
    required this.password,
  });

  String? email;
  String? password;

  factory AuthRequest.fromJson(Map<String, dynamic> json) => _$AuthRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
