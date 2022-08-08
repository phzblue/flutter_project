// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      email: json['email'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      last_login:
          LastLogin.fromJson(json['last_login'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'email': instance.email,
      'gender': instance.gender,
      'id': instance.id,
      'last_login': instance.last_login,
    };

LastLogin _$LastLoginFromJson(Map<String, dynamic> json) => LastLogin(
      date_time: json['date_time'] as String,
      ip4: json['ip4'] as String,
    );

Map<String, dynamic> _$LastLoginToJson(LastLogin instance) => <String, dynamic>{
      'date_time': instance.date_time,
      'ip4': instance.ip4,
    };
