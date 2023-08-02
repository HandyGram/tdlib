part of '../tdapi.dart';

/// **ToggleForumTopicIsPinned** *(toggleForumTopicIsPinned)* - TDLib function
///
/// Changes the pinned state of a forum topic; requires can_manage_topics administrator right in the supergroup. There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: Message thread identifier of the forum topic.
/// * [isPinned]: Pass true to pin the topic; pass false to unpin it.
///
/// [Ok] is returned on completion.
final class ToggleForumTopicIsPinned extends TdFunction {
  
  /// **ToggleForumTopicIsPinned** *(toggleForumTopicIsPinned)* - TDLib function
  ///
  /// Changes the pinned state of a forum topic; requires can_manage_topics administrator right in the supergroup. There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  /// * [isPinned]: Pass true to pin the topic; pass false to unpin it.
  ///
  /// [Ok] is returned on completion.
  const ToggleForumTopicIsPinned({
    required this.chatId,
    required this.messageThreadId,
    required this.isPinned,
  });
  
  /// Chat identifier
  final int chatId;

  /// Message thread identifier of the forum topic
  final int messageThreadId;

  /// Pass true to pin the topic; pass false to unpin it
  final bool isPinned;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "is_pinned": isPinned,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: Message thread identifier of the forum topic
  /// * [is_pinned]: Pass true to pin the topic; pass false to unpin it
  ToggleForumTopicIsPinned copyWith({
    int? chatId,
    int? messageThreadId,
    bool? isPinned,
  }) => ToggleForumTopicIsPinned(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String objectType = 'toggleForumTopicIsPinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
