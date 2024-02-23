part of '../tdapi.dart';

/// **GetChatMessageCalendar** *(getChatMessageCalendar)* - TDLib function
///
/// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset".
///
/// * [chatId]: Identifier of the chat in which to return information about messages.
/// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
/// * [fromMessageId]: The message identifier from which to return information about messages; use 0 to get results from the last message.
/// * [savedMessagesTopicId]: If not0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages, or for chats other than Saved Messages.
///
/// [MessageCalendar] is returned on completion.
final class GetChatMessageCalendar extends TdFunction {
  
  /// **GetChatMessageCalendar** *(getChatMessageCalendar)* - TDLib function
  ///
  /// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset".
  ///
  /// * [chatId]: Identifier of the chat in which to return information about messages.
  /// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
  /// * [fromMessageId]: The message identifier from which to return information about messages; use 0 to get results from the last message.
  /// * [savedMessagesTopicId]: If not0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages, or for chats other than Saved Messages.
  ///
  /// [MessageCalendar] is returned on completion.
  const GetChatMessageCalendar({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.savedMessagesTopicId,
  });
  
  /// Identifier of the chat in which to return information about messages
  final int chatId;

  /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
  final SearchMessagesFilter filter;

  /// The message identifier from which to return information about messages; use 0 to get results from the last message
  final int fromMessageId;

  /// If not0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages, or for chats other than Saved Messages
  final int savedMessagesTopicId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "from_message_id": fromMessageId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat in which to return information about messages
  /// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
  /// * [from_message_id]: The message identifier from which to return information about messages; use 0 to get results from the last message
  /// * [saved_messages_topic_id]: If not0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages, or for chats other than Saved Messages
  GetChatMessageCalendar copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? fromMessageId,
    int? savedMessagesTopicId,
  }) => GetChatMessageCalendar(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
  );

  /// TDLib object type
  static const String objectType = 'getChatMessageCalendar';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
