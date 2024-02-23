part of '../tdapi.dart';

/// **SetPinnedForumTopics** *(setPinnedForumTopics)* - TDLib function
///
/// Changes the order of pinned forum topics; requires can_manage_topics right in the supergroup.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadIds]: The new list of pinned forum topics.
///
/// [Ok] is returned on completion.
final class SetPinnedForumTopics extends TdFunction {
  
  /// **SetPinnedForumTopics** *(setPinnedForumTopics)* - TDLib function
  ///
  /// Changes the order of pinned forum topics; requires can_manage_topics right in the supergroup.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadIds]: The new list of pinned forum topics.
  ///
  /// [Ok] is returned on completion.
  const SetPinnedForumTopics({
    required this.chatId,
    required this.messageThreadIds,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new list of pinned forum topics
  final List<int> messageThreadIds;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_ids": messageThreadIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier 
  /// * [message_thread_ids]: The new list of pinned forum topics
  SetPinnedForumTopics copyWith({
    int? chatId,
    List<int>? messageThreadIds,
  }) => SetPinnedForumTopics(
    chatId: chatId ?? this.chatId,
    messageThreadIds: messageThreadIds ?? this.messageThreadIds,
  );

  /// TDLib object type
  static const String defaultObjectId = 'setPinnedForumTopics';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
