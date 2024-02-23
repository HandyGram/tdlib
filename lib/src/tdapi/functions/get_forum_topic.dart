part of '../tdapi.dart';

/// **GetForumTopic** *(getForumTopic)* - TDLib function
///
/// Returns information about a forum topic.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [ForumTopic] is returned on completion.
final class GetForumTopic extends TdFunction {
  
  /// **GetForumTopic** *(getForumTopic)* - TDLib function
  ///
  /// Returns information about a forum topic.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [ForumTopic] is returned on completion.
  const GetForumTopic({
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
  GetForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) => GetForumTopic(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getForumTopic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
