import 'package:sqflite/sqflite.dart';
import '../../../models/user_profile.dart';

/// Data Access Object (DAO) for UserProfile.
/// Encapsulates all database operations related to user profiles.
class UserProfileDao {
  static const String tableUserProfile = 'user_profile';

  // SQL schema explanation:
  // id:        Unique user identifier (UUID)
  // nickname:  User's nickname (required)
  // email:     User's email (required)
  // name:      Optional display name
  // createdAt: Optional ISO date string
  // avatarUrl: Optional avatar image URL
  // locale:    Optional user locale/language
  // note:      Optional notes or metadata

  /// Creates the user_profile table.
  /// Call this method during database initialization (e.g., onCreate).
  static Future<void> createTable(Database db) async {
    await db.execute('''
      CREATE TABLE $tableUserProfile (
        id TEXT PRIMARY KEY,
        nickname TEXT NOT NULL,
        email TEXT NOT NULL,
        name TEXT,
        createdAt TEXT,
        avatarUrl TEXT,
        locale TEXT,
        note TEXT,
      )
    ''');
  }

  /// Inserts or replaces the user profile (upsert).
  Future<int> insertUserProfile(Database db, UserProfile profile) async {
    return await db.insert(
      tableUserProfile,
      profile.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  /// Retrieves the user profile by UUID.
  Future<UserProfile?> getUserProfileById(Database db, String id) async {
    final List<Map<String, dynamic>> maps = await db.query(
      tableUserProfile,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return UserProfile.fromJson(maps.first);
    }
    return null;
  }

  /// Updates the existing user profile.
  Future<int> updateUserProfile(Database db, UserProfile profile) async {
    return await db.update(
      tableUserProfile,
      profile.toJson(),
      where: 'id = ?',
      whereArgs: [profile.id],
    );
  }

  /// Deletes the user profile by UUID.
  Future<int> deleteUserProfile(Database db, String id) async {
    return await db.delete(
      tableUserProfile,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Deletes all user profiles (useful for sign out or switching accounts).
  Future<int> clearAllUserProfiles(Database db) async {
    return await db.delete(tableUserProfile);
  }

  /// Retrieves all user profiles (if ever needed for multi-user or debug).
  Future<List<UserProfile>> getAllUserProfiles(Database db) async {
    final List<Map<String, dynamic>> maps = await db.query(tableUserProfile);
    return maps.map((map) => UserProfile.fromJson(map)).toList();
  }
}
