part of '../tdapi.dart';

/// **StoryFullId** *(storyFullId)* - basic class
///
/// Contains identifier of a story along with identifier of its sender.
///
/// * [senderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Unique story identifier among stories of the given sender.
final class StoryFullId extends TdObject {
  
  /// **StoryFullId** *(storyFullId)* - basic class
  ///
  /// Contains identifier of a story along with identifier of its sender.
  ///
  /// * [senderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Unique story identifier among stories of the given sender.
  const StoryFullId({
    required this.senderChatId,
    required this.storyId,
  });
  
  /// Identifier of the chat that posted the story
  final int senderChatId;

  /// Unique story identifier among stories of the given sender
  final int storyId;
  
  /// Parse from a json
  factory StoryFullId.fromJson(Map<String, dynamic> json) => StoryFullId(
    senderChatId: json['sender_chat_id'],
    storyId: json['story_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "sender_chat_id": senderChatId,
      "story_id": storyId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Unique story identifier among stories of the given sender
  StoryFullId copyWith({
    int? senderChatId,
    int? storyId,
  }) => StoryFullId(
    senderChatId: senderChatId ?? this.senderChatId,
    storyId: storyId ?? this.storyId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyFullId';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
