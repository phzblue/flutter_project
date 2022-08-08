// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final String email;
  final String gender;
  final String id;
  final LastLogin last_login;

  const Profile(
      {required this.email,
      required this.gender,
      required this.id,
      required this.last_login});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable()
class LastLogin {
  LastLogin({
    required this.date_time,
    required this.ip4,
  });

  final String date_time;
  final String ip4;

  factory LastLogin.fromJson(Map<String, dynamic> json) =>
      _$LastLoginFromJson(json);
  Map<String, dynamic> toJson() => _$LastLoginToJson(this);
}
