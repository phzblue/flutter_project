// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      id: json['id'] as String?,
      lastLogin: (json['lastLogin'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'email': instance.email,
      'gender': instance.gender,
      'id': instance.id,
      'lastLogin': instance.lastLogin,
    };
