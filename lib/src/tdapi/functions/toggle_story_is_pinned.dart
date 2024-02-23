part of '../tdapi.dart';

/// **ToggleStoryIsPinned** *(toggleStoryIsPinned)* - TDLib function
///
/// Toggles whether a story is accessible after expiration. Can be called only if story.can_toggle_is_pinned == true.
///
/// * [storySenderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Identifier of the story.
/// * [isPinned]: Pass true to make the story accessible after expiration; pass false to make it private.
///
/// [Ok] is returned on completion.
final class ToggleStoryIsPinned extends TdFunction {
  
  /// **ToggleStoryIsPinned** *(toggleStoryIsPinned)* - TDLib function
  ///
  /// Toggles whether a story is accessible after expiration. Can be called only if story.can_toggle_is_pinned == true.
  ///
  /// * [storySenderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Identifier of the story.
  /// * [isPinned]: Pass true to make the story accessible after expiration; pass false to make it private.
  ///
  /// [Ok] is returned on completion.
  const ToggleStoryIsPinned({
    required this.storySenderChatId,
    required this.storyId,
    required this.isPinned,
  });
  
  /// Identifier of the chat that posted the story
  final int storySenderChatId;

  /// Identifier of the story
  final int storyId;

  /// Pass true to make the story accessible after expiration; pass false to make it private
  final bool isPinned;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "is_pinned": isPinned,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Identifier of the story
  /// * [is_pinned]: Pass true to make the story accessible after expiration; pass false to make it private
  ToggleStoryIsPinned copyWith({
    int? storySenderChatId,
    int? storyId,
    bool? isPinned,
  }) => ToggleStoryIsPinned(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'toggleStoryIsPinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
