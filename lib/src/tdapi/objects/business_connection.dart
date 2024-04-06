part of '../tdapi.dart';

/// **BusinessConnection** *(businessConnection)* - basic class
///
/// Describes a connection of the bot with a business account.
///
/// * [id]: Unique identifier of the connection.
/// * [userId]: Identifier of the business user that created the connection.
/// * [userChatId]: Chat identifier of the private chat with the user.
/// * [date]: Point in time (Unix timestamp) when the connection was established.
/// * [canReply]: True, if the bot can send messages to the connected user; false otherwise.
/// * [isEnabled]: True, if the connection is enabled; false otherwise.
final class BusinessConnection extends TdObject {
  /// **BusinessConnection** *(businessConnection)* - basic class
  ///
  /// Describes a connection of the bot with a business account.
  ///
  /// * [id]: Unique identifier of the connection.
  /// * [userId]: Identifier of the business user that created the connection.
  /// * [userChatId]: Chat identifier of the private chat with the user.
  /// * [date]: Point in time (Unix timestamp) when the connection was established.
  /// * [canReply]: True, if the bot can send messages to the connected user; false otherwise.
  /// * [isEnabled]: True, if the connection is enabled; false otherwise.
  const BusinessConnection({
    required this.id,
    required this.userId,
    required this.userChatId,
    required this.date,
    required this.canReply,
    required this.isEnabled,
    this.extra,
    this.clientId,
  });

  /// Unique identifier of the connection
  final String id;

  /// Identifier of the business user that created the connection
  final int userId;

  /// Chat identifier of the private chat with the user
  final int userChatId;

  /// Point in time (Unix timestamp) when the connection was established
  final int date;

  /// True, if the bot can send messages to the connected user; false otherwise
  final bool canReply;

  /// True, if the connection is enabled; false otherwise
  final bool isEnabled;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory BusinessConnection.fromJson(Map<String, dynamic> json) =>
      BusinessConnection(
        id: json['id'],
        userId: json['user_id'],
        userChatId: json['user_chat_id'],
        date: json['date'],
        canReply: json['can_reply'],
        isEnabled: json['is_enabled'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "user_id": userId,
      "user_chat_id": userChatId,
      "date": date,
      "can_reply": canReply,
      "is_enabled": isEnabled,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the connection
  /// * [user_id]: Identifier of the business user that created the connection
  /// * [user_chat_id]: Chat identifier of the private chat with the user
  /// * [date]: Point in time (Unix timestamp) when the connection was established
  /// * [can_reply]: True, if the bot can send messages to the connected user; false otherwise
  /// * [is_enabled]: True, if the connection is enabled; false otherwise
  BusinessConnection copyWith({
    String? id,
    int? userId,
    int? userChatId,
    int? date,
    bool? canReply,
    bool? isEnabled,
    dynamic extra,
    int? clientId,
  }) =>
      BusinessConnection(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        userChatId: userChatId ?? this.userChatId,
        date: date ?? this.date,
        canReply: canReply ?? this.canReply,
        isEnabled: isEnabled ?? this.isEnabled,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'businessConnection';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
