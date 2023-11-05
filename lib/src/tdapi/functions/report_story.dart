part of '../tdapi.dart';

/// **ReportStory** *(reportStory)* - TDLib function
///
/// Reports a story to the Telegram moderators.
///
/// * [storySenderChatId]: The identifier of the sender of the story to report.
/// * [storyId]: The identifier of the story to report.
/// * [reason]: The reason for reporting the story.
/// * [text]: Additional report details; 0-1024 characters.
///
/// [Ok] is returned on completion.
final class ReportStory extends TdFunction {
  
  /// **ReportStory** *(reportStory)* - TDLib function
  ///
  /// Reports a story to the Telegram moderators.
  ///
  /// * [storySenderChatId]: The identifier of the sender of the story to report.
  /// * [storyId]: The identifier of the story to report.
  /// * [reason]: The reason for reporting the story.
  /// * [text]: Additional report details; 0-1024 characters.
  ///
  /// [Ok] is returned on completion.
  const ReportStory({
    required this.storySenderChatId,
    required this.storyId,
    required this.reason,
    required this.text,
  });
  
  /// The identifier of the sender of the story to report
  final int storySenderChatId;

  /// The identifier of the story to report
  final int storyId;

  /// The reason for reporting the story
  final ReportReason reason;

  /// Additional report details; 0-1024 characters
  final String text;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "reason": reason.toJson(),
      "text": text,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: The identifier of the sender of the story to report
  /// * [story_id]: The identifier of the story to report
  /// * [reason]: The reason for reporting the story
  /// * [text]: Additional report details; 0-1024 characters
  ReportStory copyWith({
    int? storySenderChatId,
    int? storyId,
    ReportReason? reason,
    String? text,
  }) => ReportStory(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
    reason: reason ?? this.reason,
    text: text ?? this.text,
  );

  /// TDLib object type
  static const String objectType = 'reportStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
