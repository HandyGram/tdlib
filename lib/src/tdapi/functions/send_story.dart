part of '../tdapi.dart';

/// **SendStory** *(sendStory)* - TDLib function
///
/// Sends a new story to a chat; requires can_post_stories rights for channel chats. Returns a temporary story.
///
/// * [chatId]: Identifier of the chat that will post the story.
/// * [content]: Content of the story.
/// * [areas]: Clickable rectangle areas to be shown on the story media; pass null if none *(optional)*.
/// * [caption]: Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters *(optional)*.
/// * [privacySettings]: The privacy settings for the story.
/// * [activePeriod]: Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise.
/// * [isPinned]: Pass true to keep the story accessible after expiration.
/// * [protectContent]: Pass true if the content of the story must be protected from forwarding and screenshotting.
///
/// [Story] is returned on completion.
final class SendStory extends TdFunction {
  
  /// **SendStory** *(sendStory)* - TDLib function
  ///
  /// Sends a new story to a chat; requires can_post_stories rights for channel chats. Returns a temporary story.
  ///
  /// * [chatId]: Identifier of the chat that will post the story.
  /// * [content]: Content of the story.
  /// * [areas]: Clickable rectangle areas to be shown on the story media; pass null if none *(optional)*.
  /// * [caption]: Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters *(optional)*.
  /// * [privacySettings]: The privacy settings for the story.
  /// * [activePeriod]: Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise.
  /// * [isPinned]: Pass true to keep the story accessible after expiration.
  /// * [protectContent]: Pass true if the content of the story must be protected from forwarding and screenshotting.
  ///
  /// [Story] is returned on completion.
  const SendStory({
    required this.chatId,
    required this.content,
    this.areas,
    this.caption,
    required this.privacySettings,
    required this.activePeriod,
    required this.isPinned,
    required this.protectContent,
  });
  
  /// Identifier of the chat that will post the story
  final int chatId;

  /// Content of the story
  final InputStoryContent content;

  /// Clickable rectangle areas to be shown on the story media; pass null if none
  final InputStoryAreas? areas;

  /// Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters
  final FormattedText? caption;

  /// The privacy settings for the story
  final StoryPrivacySettings privacySettings;

  /// Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise
  final int activePeriod;

  /// Pass true to keep the story accessible after expiration
  final bool isPinned;

  /// Pass true if the content of the story must be protected from forwarding and screenshotting
  final bool protectContent;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "content": content.toJson(),
      "areas": areas?.toJson(),
      "caption": caption?.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "active_period": activePeriod,
      "is_pinned": isPinned,
      "protect_content": protectContent,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat that will post the story
  /// * [content]: Content of the story
  /// * [areas]: Clickable rectangle areas to be shown on the story media; pass null if none
  /// * [caption]: Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters
  /// * [privacy_settings]: The privacy settings for the story
  /// * [active_period]: Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise
  /// * [is_pinned]: Pass true to keep the story accessible after expiration
  /// * [protect_content]: Pass true if the content of the story must be protected from forwarding and screenshotting
  SendStory copyWith({
    int? chatId,
    InputStoryContent? content,
    InputStoryAreas? areas,
    FormattedText? caption,
    StoryPrivacySettings? privacySettings,
    int? activePeriod,
    bool? isPinned,
    bool? protectContent,
  }) => SendStory(
    chatId: chatId ?? this.chatId,
    content: content ?? this.content,
    areas: areas ?? this.areas,
    caption: caption ?? this.caption,
    privacySettings: privacySettings ?? this.privacySettings,
    activePeriod: activePeriod ?? this.activePeriod,
    isPinned: isPinned ?? this.isPinned,
    protectContent: protectContent ?? this.protectContent,
  );

  /// TDLib object type
  static const String objectType = 'sendStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
