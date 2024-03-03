part of '../tdapi.dart';

/// **DeleteForumTopic** *(deleteForumTopic)* - TDLib function
///
/// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [Ok] is returned on completion.
final class DeleteForumTopic extends TdFunction {
  /// **DeleteForumTopic** *(deleteForumTopic)* - TDLib function
  ///
  /// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [Ok] is returned on completion.
  const DeleteForumTopic({
    required this.chatId,
    required this.messageThreadId,
  });

  /// Identifier of the chat
  final int chatId;

  /// Message thread identifier of the forum topic
  final int messageThreadId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  /// * [message_thread_id]: Message thread identifier of the forum topic
  DeleteForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      DeleteForumTopic(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'deleteForumTopic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
