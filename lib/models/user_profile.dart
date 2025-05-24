import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

/// Represents a user profile in the Family Budget App.
///
/// Stores main user information, metadata, and optional settings for localization and avatar.
@JsonSerializable()
class UserProfile {
  final String id;
  final String name;
  final String? email;
  final DateTime? createdAt;
  final String? avatarUrl;
  final String? locale;
  final String? note;

  UserProfile({
    required this.id,
    required this.name,
    this.email,
    this.createdAt,
    this.avatarUrl,
    this.locale,
    this.note,
});

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}