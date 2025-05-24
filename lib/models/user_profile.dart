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
}