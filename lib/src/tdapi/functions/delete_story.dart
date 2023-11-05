part of '../tdapi.dart';

/// **DeleteStory** *(deleteStory)* - TDLib function
///
/// Deletes a previously sent story. Can be called only if story.can_be_deleted == true.
///
/// * [storySenderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Identifier of the story to delete.
///
/// [Ok] is returned on completion.
final class DeleteStory extends TdFunction {
  
  /// **DeleteStory** *(deleteStory)* - TDLib function
  ///
  /// Deletes a previously sent story. Can be called only if story.can_be_deleted == true.
  ///
  /// * [storySenderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Identifier of the story to delete.
  ///
  /// [Ok] is returned on completion.
  const DeleteStory({
    required this.storySenderChatId,
    required this.storyId,
  });
  
  /// Identifier of the chat that posted the story
  final int storySenderChatId;

  /// Identifier of the story to delete
  final int storyId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Identifier of the story to delete
  DeleteStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) => DeleteStory(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
  );

  /// TDLib object type
  static const String objectType = 'deleteStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
