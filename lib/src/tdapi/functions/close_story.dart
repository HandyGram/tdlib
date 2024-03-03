part of '../tdapi.dart';

/// **CloseStory** *(closeStory)* - TDLib function
///
/// Informs TDLib that a story is closed by the user.
///
/// * [storySenderChatId]: The identifier of the sender of the story to close.
/// * [storyId]: The identifier of the story.
///
/// [Ok] is returned on completion.
final class CloseStory extends TdFunction {
  /// **CloseStory** *(closeStory)* - TDLib function
  ///
  /// Informs TDLib that a story is closed by the user.
  ///
  /// * [storySenderChatId]: The identifier of the sender of the story to close.
  /// * [storyId]: The identifier of the story.
  ///
  /// [Ok] is returned on completion.
  const CloseStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// The identifier of the sender of the story to close
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
  /// * [story_sender_chat_id]: The identifier of the sender of the story to close
  /// * [story_id]: The identifier of the story
  CloseStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) =>
      CloseStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'closeStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
