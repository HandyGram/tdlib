part of '../tdapi.dart';

/// **MessageSender** *(messageSender)* - parent
///
/// Contains information about the sender of a message.
sealed class MessageSender extends TdObject {
  /// **MessageSender** *(messageSender)* - parent
  ///
  /// Contains information about the sender of a message.
  const MessageSender();

  /// a MessageSender return type can be :
  /// * [MessageSenderUser]
  /// * [MessageSenderChat]
  factory MessageSender.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSenderUser.defaultObjectId:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.defaultObjectId:
        return MessageSenderChat.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSender)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageSender copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'messageSender';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageSenderUser** *(messageSenderUser)* - child of MessageSender
///
/// The message was sent by a known user.
///
/// * [userId]: Identifier of the user that sent the message.
final class MessageSenderUser extends MessageSender {
  /// **MessageSenderUser** *(messageSenderUser)* - child of MessageSender
  ///
  /// The message was sent by a known user.
  ///
  /// * [userId]: Identifier of the user that sent the message.
  const MessageSenderUser({
    required this.userId,
  });

  /// Identifier of the user that sent the message
  final int userId;

  /// Parse from a json
  factory MessageSenderUser.fromJson(Map<String, dynamic> json) =>
      MessageSenderUser(
        userId: json['user_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user that sent the message
  @override
  MessageSenderUser copyWith({
    int? userId,
  }) =>
      MessageSenderUser(
        userId: userId ?? this.userId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageSenderUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageSenderChat** *(messageSenderChat)* - child of MessageSender
///
/// The message was sent on behalf of a chat.
///
/// * [chatId]: Identifier of the chat that sent the message.
final class MessageSenderChat extends MessageSender {
  /// **MessageSenderChat** *(messageSenderChat)* - child of MessageSender
  ///
  /// The message was sent on behalf of a chat.
  ///
  /// * [chatId]: Identifier of the chat that sent the message.
  const MessageSenderChat({
    required this.chatId,
  });

  /// Identifier of the chat that sent the message
  final int chatId;

  /// Parse from a json
  factory MessageSenderChat.fromJson(Map<String, dynamic> json) =>
      MessageSenderChat(
        chatId: json['chat_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat that sent the message
  @override
  MessageSenderChat copyWith({
    int? chatId,
  }) =>
      MessageSenderChat(
        chatId: chatId ?? this.chatId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageSenderChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
