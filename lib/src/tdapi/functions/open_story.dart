part of '../tdapi.dart';

/// **OpenStory** *(openStory)* - TDLib function
///
/// Informs TDLib that a story is opened and is being viewed by the user.
///
/// * [storySenderChatId]: The identifier of the sender of the opened story.
/// * [storyId]: The identifier of the story.
///
/// [Ok] is returned on completion.
final class OpenStory extends TdFunction {
  
  /// **OpenStory** *(openStory)* - TDLib function
  ///
  /// Informs TDLib that a story is opened and is being viewed by the user.
  ///
  /// * [storySenderChatId]: The identifier of the sender of the opened story.
  /// * [storyId]: The identifier of the story.
  ///
  /// [Ok] is returned on completion.
  const OpenStory({
    required this.storySenderChatId,
    required this.storyId,
  });
  
  /// The identifier of the sender of the opened story
  final int storySenderChatId;

  /// The identifier of the story
  final int storyId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: The identifier of the sender of the opened story
  /// * [story_id]: The identifier of the story
  OpenStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) => OpenStory(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'openStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
