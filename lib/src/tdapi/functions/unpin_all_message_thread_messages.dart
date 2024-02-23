part of '../tdapi.dart';

/// **UnpinAllMessageThreadMessages** *(unpinAllMessageThreadMessages)* - TDLib function
///
/// Removes all pinned messages from a forum topic; requires can_pin_messages member right in the supergroup.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier in which messages will be unpinned.
///
/// [Ok] is returned on completion.
final class UnpinAllMessageThreadMessages extends TdFunction {
  
  /// **UnpinAllMessageThreadMessages** *(unpinAllMessageThreadMessages)* - TDLib function
  ///
  /// Removes all pinned messages from a forum topic; requires can_pin_messages member right in the supergroup.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier in which messages will be unpinned.
  ///
  /// [Ok] is returned on completion.
  const UnpinAllMessageThreadMessages({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Message thread identifier in which messages will be unpinned
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
  /// * [message_thread_id]: Message thread identifier in which messages will be unpinned
  UnpinAllMessageThreadMessages copyWith({
    int? chatId,
    int? messageThreadId,
  }) => UnpinAllMessageThreadMessages(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'unpinAllMessageThreadMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
