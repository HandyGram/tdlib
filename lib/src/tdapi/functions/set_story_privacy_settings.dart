part of '../tdapi.dart';

/// **SetStoryPrivacySettings** *(setStoryPrivacySettings)* - TDLib function
///
/// Changes privacy settings of a story. Can be called only if story.can_be_edited == true.
///
/// * [storySenderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Identifier of the story.
/// * [privacySettings]: The new privacy settigs for the story.
///
/// [Ok] is returned on completion.
final class SetStoryPrivacySettings extends TdFunction {
  
  /// **SetStoryPrivacySettings** *(setStoryPrivacySettings)* - TDLib function
  ///
  /// Changes privacy settings of a story. Can be called only if story.can_be_edited == true.
  ///
  /// * [storySenderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Identifier of the story.
  /// * [privacySettings]: The new privacy settigs for the story.
  ///
  /// [Ok] is returned on completion.
  const SetStoryPrivacySettings({
    required this.storySenderChatId,
    required this.storyId,
    required this.privacySettings,
  });
  
  /// Identifier of the chat that posted the story
  final int storySenderChatId;

  /// Identifier of the story
  final int storyId;

  /// The new privacy settigs for the story
  final StoryPrivacySettings privacySettings;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "privacy_settings": privacySettings.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Identifier of the story
  /// * [privacy_settings]: The new privacy settigs for the story
  SetStoryPrivacySettings copyWith({
    int? storySenderChatId,
    int? storyId,
    StoryPrivacySettings? privacySettings,
  }) => SetStoryPrivacySettings(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
    privacySettings: privacySettings ?? this.privacySettings,
  );

  /// TDLib object type
  static const String objectType = 'setStoryPrivacySettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
