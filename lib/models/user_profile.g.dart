// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
  id: json['id'] as String,
  nickname: json['nickname'] as String,
  email: json['email'] as String,
  name: json['name'] as String?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  avatarUrl: json['avatarUrl'] as String?,
  locale: json['locale'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'email': instance.email,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'avatarUrl': instance.avatarUrl,
      'locale': instance.locale,
      'note': instance.note,
    };
