part of '../tdapi.dart';

/// **ChatNearby** *(chatNearby)* - basic class
///
/// Describes a chat located nearby.
///
/// * [chatId]: Chat identifier.
/// * [distance]: Distance to the chat location, in meters.
final class ChatNearby extends TdObject {
  /// **ChatNearby** *(chatNearby)* - basic class
  ///
  /// Describes a chat located nearby.
  ///
  /// * [chatId]: Chat identifier.
  /// * [distance]: Distance to the chat location, in meters.
  const ChatNearby({
    required this.chatId,
    required this.distance,
  });

  /// Chat identifier
  final int chatId;

  /// Distance to the chat location, in meters
  final int distance;

  /// Parse from a json
  factory ChatNearby.fromJson(Map<String, dynamic> json) => ChatNearby(
        chatId: json['chat_id'],
        distance: json['distance'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "distance": distance,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [distance]: Distance to the chat location, in meters
  ChatNearby copyWith({
    int? chatId,
    int? distance,
  }) =>
      ChatNearby(
        chatId: chatId ?? this.chatId,
        distance: distance ?? this.distance,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatNearby';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
