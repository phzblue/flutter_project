import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final String? email;
  final String? gender;
  final String? id;
  final Map<String, String>? lastLogin;

  const Profile({this.email, this.gender, this.id, this.lastLogin});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
