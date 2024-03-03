part of '../tdapi.dart';

/// **ChatsNearby** *(chatsNearby)* - basic class
///
/// Represents a list of chats located nearby.
///
/// * [usersNearby]: List of users nearby.
/// * [supergroupsNearby]: List of location-based supergroups nearby.
final class ChatsNearby extends TdObject {
  /// **ChatsNearby** *(chatsNearby)* - basic class
  ///
  /// Represents a list of chats located nearby.
  ///
  /// * [usersNearby]: List of users nearby.
  /// * [supergroupsNearby]: List of location-based supergroups nearby.
  const ChatsNearby({
    required this.usersNearby,
    required this.supergroupsNearby,
    this.extra,
    this.clientId,
  });

  /// List of users nearby
  final List<ChatNearby> usersNearby;

  /// List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatsNearby.fromJson(Map<String, dynamic> json) => ChatsNearby(
        usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList()),
        supergroupsNearby: List<ChatNearby>.from(
            (json['supergroups_nearby'] ?? [])
                .map((item) => ChatNearby.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "users_nearby": usersNearby.map((i) => i.toJson()).toList(),
      "supergroups_nearby": supergroupsNearby.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [users_nearby]: List of users nearby
  /// * [supergroups_nearby]: List of location-based supergroups nearby
  ChatsNearby copyWith({
    List<ChatNearby>? usersNearby,
    List<ChatNearby>? supergroupsNearby,
    dynamic extra,
    int? clientId,
  }) =>
      ChatsNearby(
        usersNearby: usersNearby ?? this.usersNearby,
        supergroupsNearby: supergroupsNearby ?? this.supergroupsNearby,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatsNearby';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
