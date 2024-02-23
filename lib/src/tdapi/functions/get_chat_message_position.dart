part of '../tdapi.dart';

/// **GetChatMessagePosition** *(getChatMessagePosition)* - TDLib function
///
/// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats.
///
/// * [chatId]: Identifier of the chat in which to find message position.
/// * [messageId]: Message identifier.
/// * [filter]: Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function.
/// * [messageThreadId]: If not 0, only messages in the specified thread will be considered; supergroups only.
/// * [savedMessagesTopicId]: If not 0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all relevant messages, or for chats other than Saved Messages.
///
/// [Count] is returned on completion.
final class GetChatMessagePosition extends TdFunction {
  
  /// **GetChatMessagePosition** *(getChatMessagePosition)* - TDLib function
  ///
  /// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats.
  ///
  /// * [chatId]: Identifier of the chat in which to find message position.
  /// * [messageId]: Message identifier.
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function.
  /// * [messageThreadId]: If not 0, only messages in the specified thread will be considered; supergroups only.
  /// * [savedMessagesTopicId]: If not 0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all relevant messages, or for chats other than Saved Messages.
  ///
  /// [Count] is returned on completion.
  const GetChatMessagePosition({
    required this.chatId,
    required this.messageId,
    required this.filter,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
  });
  
  /// Identifier of the chat in which to find message position
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
  final SearchMessagesFilter filter;

  /// If not 0, only messages in the specified thread will be considered; supergroups only
  final int messageThreadId;

  /// If not 0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all relevant messages, or for chats other than Saved Messages
  final int savedMessagesTopicId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "filter": filter.toJson(),
      "message_thread_id": messageThreadId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat in which to find message position
  /// * [message_id]: Message identifier
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
  /// * [message_thread_id]: If not 0, only messages in the specified thread will be considered; supergroups only
  /// * [saved_messages_topic_id]: If not 0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all relevant messages, or for chats other than Saved Messages
  GetChatMessagePosition copyWith({
    int? chatId,
    int? messageId,
    SearchMessagesFilter? filter,
    int? messageThreadId,
    int? savedMessagesTopicId,
  }) => GetChatMessagePosition(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    filter: filter ?? this.filter,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getChatMessagePosition';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
