part of '../tdapi.dart';

/// **EditStoryCover** *(editStoryCover)* - TDLib function
///
/// Changes cover of a video story. Can be called only if story.can_be_edited == true and the story isn't being edited now.
///
/// * [storySenderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Identifier of the story to edit.
/// * [coverFrameTimestamp]: New timestamp of the frame, which will be used as video thumbnail.
///
/// [Ok] is returned on completion.
final class EditStoryCover extends TdFunction {
  /// **EditStoryCover** *(editStoryCover)* - TDLib function
  ///
  /// Changes cover of a video story. Can be called only if story.can_be_edited == true and the story isn't being edited now.
  ///
  /// * [storySenderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Identifier of the story to edit.
  /// * [coverFrameTimestamp]: New timestamp of the frame, which will be used as video thumbnail.
  ///
  /// [Ok] is returned on completion.
  const EditStoryCover({
    required this.storySenderChatId,
    required this.storyId,
    required this.coverFrameTimestamp,
  });

  /// Identifier of the chat that posted the story
  final int storySenderChatId;

  /// Identifier of the story to edit
  final int storyId;

  /// New timestamp of the frame, which will be used as video thumbnail
  final double coverFrameTimestamp;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "cover_frame_timestamp": coverFrameTimestamp,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Identifier of the story to edit
  /// * [cover_frame_timestamp]: New timestamp of the frame, which will be used as video thumbnail
  EditStoryCover copyWith({
    int? storySenderChatId,
    int? storyId,
    double? coverFrameTimestamp,
  }) =>
      EditStoryCover(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        coverFrameTimestamp: coverFrameTimestamp ?? this.coverFrameTimestamp,
      );

  /// TDLib object type
  static const String defaultObjectId = 'editStoryCover';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
