part of '../tdapi.dart';

/// **GetForumTopicLink** *(getForumTopicLink)* - TDLib function
///
/// Returns an HTTPS link to a topic in a forum chat. This is an offline request.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [MessageLink] is returned on completion.
final class GetForumTopicLink extends TdFunction {
  
  /// **GetForumTopicLink** *(getForumTopicLink)* - TDLib function
  ///
  /// Returns an HTTPS link to a topic in a forum chat. This is an offline request.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [MessageLink] is returned on completion.
  const GetForumTopicLink({
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
			"@type": objectType,
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
  GetForumTopicLink copyWith({
    int? chatId,
    int? messageThreadId,
  }) => GetForumTopicLink(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  /// TDLib object type
  static const String objectType = 'getForumTopicLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
