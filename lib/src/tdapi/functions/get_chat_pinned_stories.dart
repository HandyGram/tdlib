part of '../tdapi.dart';

/// **GetChatPinnedStories** *(getChatPinnedStories)* - TDLib function
///
/// Returns the list of pinned stories posted by the given chat. The stories are returned in a reverse chronological order (i.e., in order of decreasing story_id).. For optimal performance, the number of returned stories is chosen by TDLib.
///
/// * [chatId]: Chat identifier.
/// * [fromStoryId]: Identifier of the story starting from which stories must be returned; use 0 to get results from the last story.
/// * [limit]: The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit.
///
/// [Stories] is returned on completion.
final class GetChatPinnedStories extends TdFunction {
  
  /// **GetChatPinnedStories** *(getChatPinnedStories)* - TDLib function
  ///
  /// Returns the list of pinned stories posted by the given chat. The stories are returned in a reverse chronological order (i.e., in order of decreasing story_id).. For optimal performance, the number of returned stories is chosen by TDLib.
  ///
  /// * [chatId]: Chat identifier.
  /// * [fromStoryId]: Identifier of the story starting from which stories must be returned; use 0 to get results from the last story.
  /// * [limit]: The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit.
  ///
  /// [Stories] is returned on completion.
  const GetChatPinnedStories({
    required this.chatId,
    required this.fromStoryId,
    required this.limit,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the story starting from which stories must be returned; use 0 to get results from the last story
  final int fromStoryId;

  /// The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "from_story_id": fromStoryId,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [from_story_id]: Identifier of the story starting from which stories must be returned; use 0 to get results from the last story
  /// * [limit]: The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  GetChatPinnedStories copyWith({
    int? chatId,
    int? fromStoryId,
    int? limit,
  }) => GetChatPinnedStories(
    chatId: chatId ?? this.chatId,
    fromStoryId: fromStoryId ?? this.fromStoryId,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String objectType = 'getChatPinnedStories';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
