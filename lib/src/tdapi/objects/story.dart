part of '../tdapi.dart';

/// **Story** *(story)* - basic class
///
/// Represents a story.
///
/// * [id]: Unique story identifier among stories of the given sender.
/// * [senderChatId]: Identifier of the chat that posted the story.
/// * [senderId]: Identifier of the sender of the story; may be null if the story is posted on behalf of the sender_chat_id *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the story was published.
/// * [isBeingSent]: True, if the story is being sent by the current user.
/// * [isBeingEdited]: True, if the story is being edited by the current user.
/// * [isEdited]: True, if the story was edited.
/// * [isPinned]: True, if the story is saved in the sender's profile and will be available there after expiration.
/// * [isVisibleOnlyForSelf]: True, if the story is visible only for the current user.
/// * [canBeDeleted]: True, if the story can be deleted.
/// * [canBeEdited]: True, if the story can be edited.
/// * [canBeForwarded]: True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden.
/// * [canBeReplied]: True, if the story can be replied in the chat with the story sender.
/// * [canToggleIsPinned]: True, if the story's is_pinned value can be changed.
/// * [canGetStatistics]: True, if the story statistics are available through getStoryStatistics.
/// * [canGetInteractions]: True, if interactions with the story can be received through getStoryInteractions.
/// * [hasExpiredViewers]: True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago.
/// * [repostInfo]: Information about the original story; may be null if the story wasn't reposted *(optional)*.
/// * [interactionInfo]: Information about interactions with the story; may be null if the story isn't owned or there were no interactions *(optional)*.
/// * [chosenReactionType]: Type of the chosen reaction; may be null if none *(optional)*.
/// * [privacySettings]: Privacy rules affecting story visibility; may be approximate for non-owned stories.
/// * [content]: Content of the story.
/// * [areas]: Clickable areas to be shown on the story content.
/// * [caption]: Caption of the story.
final class Story extends TdObject {
  
  /// **Story** *(story)* - basic class
  ///
  /// Represents a story.
  ///
  /// * [id]: Unique story identifier among stories of the given sender.
  /// * [senderChatId]: Identifier of the chat that posted the story.
  /// * [senderId]: Identifier of the sender of the story; may be null if the story is posted on behalf of the sender_chat_id *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the story was published.
  /// * [isBeingSent]: True, if the story is being sent by the current user.
  /// * [isBeingEdited]: True, if the story is being edited by the current user.
  /// * [isEdited]: True, if the story was edited.
  /// * [isPinned]: True, if the story is saved in the sender's profile and will be available there after expiration.
  /// * [isVisibleOnlyForSelf]: True, if the story is visible only for the current user.
  /// * [canBeDeleted]: True, if the story can be deleted.
  /// * [canBeEdited]: True, if the story can be edited.
  /// * [canBeForwarded]: True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden.
  /// * [canBeReplied]: True, if the story can be replied in the chat with the story sender.
  /// * [canToggleIsPinned]: True, if the story's is_pinned value can be changed.
  /// * [canGetStatistics]: True, if the story statistics are available through getStoryStatistics.
  /// * [canGetInteractions]: True, if interactions with the story can be received through getStoryInteractions.
  /// * [hasExpiredViewers]: True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago.
  /// * [repostInfo]: Information about the original story; may be null if the story wasn't reposted *(optional)*.
  /// * [interactionInfo]: Information about interactions with the story; may be null if the story isn't owned or there were no interactions *(optional)*.
  /// * [chosenReactionType]: Type of the chosen reaction; may be null if none *(optional)*.
  /// * [privacySettings]: Privacy rules affecting story visibility; may be approximate for non-owned stories.
  /// * [content]: Content of the story.
  /// * [areas]: Clickable areas to be shown on the story content.
  /// * [caption]: Caption of the story.
  const Story({
    required this.id,
    required this.senderChatId,
    this.senderId,
    required this.date,
    required this.isBeingSent,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPinned,
    required this.isVisibleOnlyForSelf,
    required this.canBeDeleted,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canToggleIsPinned,
    required this.canGetStatistics,
    required this.canGetInteractions,
    required this.hasExpiredViewers,
    this.repostInfo,
    this.interactionInfo,
    this.chosenReactionType,
    required this.privacySettings,
    required this.content,
    required this.areas,
    required this.caption,
    this.extra,
    this.clientId,
  });
  
  /// Unique story identifier among stories of the given sender
  final int id;

  /// Identifier of the chat that posted the story
  final int senderChatId;

  /// Identifier of the sender of the story; may be null if the story is posted on behalf of the sender_chat_id
  final MessageSender? senderId;

  /// Point in time (Unix timestamp) when the story was published
  final int date;

  /// True, if the story is being sent by the current user
  final bool isBeingSent;

  /// True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// True, if the story was edited
  final bool isEdited;

  /// True, if the story is saved in the sender's profile and will be available there after expiration
  final bool isPinned;

  /// True, if the story is visible only for the current user
  final bool isVisibleOnlyForSelf;

  /// True, if the story can be deleted
  final bool canBeDeleted;

  /// True, if the story can be edited
  final bool canBeEdited;

  /// True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden
  final bool canBeForwarded;

  /// True, if the story can be replied in the chat with the story sender
  final bool canBeReplied;

  /// True, if the story's is_pinned value can be changed
  final bool canToggleIsPinned;

  /// True, if the story statistics are available through getStoryStatistics
  final bool canGetStatistics;

  /// True, if interactions with the story can be received through getStoryInteractions
  final bool canGetInteractions;

  /// True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// Information about the original story; may be null if the story wasn't reposted
  final StoryRepostInfo? repostInfo;

  /// Information about interactions with the story; may be null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// Type of the chosen reaction; may be null if none
  final ReactionType? chosenReactionType;

  /// Privacy rules affecting story visibility; may be approximate for non-owned stories
  final StoryPrivacySettings privacySettings;

  /// Content of the story
  final StoryContent content;

  /// Clickable areas to be shown on the story content
  final List<StoryArea> areas;

  /// Caption of the story
  final FormattedText caption;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Story.fromJson(Map<String, dynamic> json) => Story(
    id: json['id'],
    senderChatId: json['sender_chat_id'],
    senderId: json['sender_id'] == null ? null : MessageSender.fromJson(json['sender_id']),
    date: json['date'],
    isBeingSent: json['is_being_sent'],
    isBeingEdited: json['is_being_edited'],
    isEdited: json['is_edited'],
    isPinned: json['is_pinned'],
    isVisibleOnlyForSelf: json['is_visible_only_for_self'],
    canBeDeleted: json['can_be_deleted'],
    canBeEdited: json['can_be_edited'],
    canBeForwarded: json['can_be_forwarded'],
    canBeReplied: json['can_be_replied'],
    canToggleIsPinned: json['can_toggle_is_pinned'],
    canGetStatistics: json['can_get_statistics'],
    canGetInteractions: json['can_get_interactions'],
    hasExpiredViewers: json['has_expired_viewers'],
    repostInfo: json['repost_info'] == null ? null : StoryRepostInfo.fromJson(json['repost_info']),
    interactionInfo: json['interaction_info'] == null ? null : StoryInteractionInfo.fromJson(json['interaction_info']),
    chosenReactionType: json['chosen_reaction_type'] == null ? null : ReactionType.fromJson(json['chosen_reaction_type']),
    privacySettings: StoryPrivacySettings.fromJson(json['privacy_settings']),
    content: StoryContent.fromJson(json['content']),
    areas: List<StoryArea>.from((json['areas'] ?? []).map((item) => StoryArea.fromJson(item)).toList()),
    caption: FormattedText.fromJson(json['caption']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_chat_id": senderChatId,
      "sender_id": senderId?.toJson(),
      "date": date,
      "is_being_sent": isBeingSent,
      "is_being_edited": isBeingEdited,
      "is_edited": isEdited,
      "is_pinned": isPinned,
      "is_visible_only_for_self": isVisibleOnlyForSelf,
      "can_be_deleted": canBeDeleted,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_replied": canBeReplied,
      "can_toggle_is_pinned": canToggleIsPinned,
      "can_get_statistics": canGetStatistics,
      "can_get_interactions": canGetInteractions,
      "has_expired_viewers": hasExpiredViewers,
      "repost_info": repostInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "chosen_reaction_type": chosenReactionType?.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "content": content.toJson(),
      "areas": areas.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique story identifier among stories of the given sender
  /// * [sender_chat_id]: Identifier of the chat that posted the story
  /// * [sender_id]: Identifier of the sender of the story; may be null if the story is posted on behalf of the sender_chat_id
  /// * [date]: Point in time (Unix timestamp) when the story was published
  /// * [is_being_sent]: True, if the story is being sent by the current user
  /// * [is_being_edited]: True, if the story is being edited by the current user
  /// * [is_edited]: True, if the story was edited
  /// * [is_pinned]: True, if the story is saved in the sender's profile and will be available there after expiration
  /// * [is_visible_only_for_self]: True, if the story is visible only for the current user
  /// * [can_be_deleted]: True, if the story can be deleted
  /// * [can_be_edited]: True, if the story can be edited
  /// * [can_be_forwarded]: True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden
  /// * [can_be_replied]: True, if the story can be replied in the chat with the story sender
  /// * [can_toggle_is_pinned]: True, if the story's is_pinned value can be changed
  /// * [can_get_statistics]: True, if the story statistics are available through getStoryStatistics
  /// * [can_get_interactions]: True, if interactions with the story can be received through getStoryInteractions
  /// * [has_expired_viewers]: True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago
  /// * [repost_info]: Information about the original story; may be null if the story wasn't reposted
  /// * [interaction_info]: Information about interactions with the story; may be null if the story isn't owned or there were no interactions
  /// * [chosen_reaction_type]: Type of the chosen reaction; may be null if none
  /// * [privacy_settings]: Privacy rules affecting story visibility; may be approximate for non-owned stories
  /// * [content]: Content of the story
  /// * [areas]: Clickable areas to be shown on the story content
  /// * [caption]: Caption of the story
  Story copyWith({
    int? id,
    int? senderChatId,
    MessageSender? senderId,
    int? date,
    bool? isBeingSent,
    bool? isBeingEdited,
    bool? isEdited,
    bool? isPinned,
    bool? isVisibleOnlyForSelf,
    bool? canBeDeleted,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBeReplied,
    bool? canToggleIsPinned,
    bool? canGetStatistics,
    bool? canGetInteractions,
    bool? hasExpiredViewers,
    StoryRepostInfo? repostInfo,
    StoryInteractionInfo? interactionInfo,
    ReactionType? chosenReactionType,
    StoryPrivacySettings? privacySettings,
    StoryContent? content,
    List<StoryArea>? areas,
    FormattedText? caption,
    dynamic extra,
    int? clientId,
  }) => Story(
    id: id ?? this.id,
    senderChatId: senderChatId ?? this.senderChatId,
    senderId: senderId ?? this.senderId,
    date: date ?? this.date,
    isBeingSent: isBeingSent ?? this.isBeingSent,
    isBeingEdited: isBeingEdited ?? this.isBeingEdited,
    isEdited: isEdited ?? this.isEdited,
    isPinned: isPinned ?? this.isPinned,
    isVisibleOnlyForSelf: isVisibleOnlyForSelf ?? this.isVisibleOnlyForSelf,
    canBeDeleted: canBeDeleted ?? this.canBeDeleted,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBeReplied: canBeReplied ?? this.canBeReplied,
    canToggleIsPinned: canToggleIsPinned ?? this.canToggleIsPinned,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetInteractions: canGetInteractions ?? this.canGetInteractions,
    hasExpiredViewers: hasExpiredViewers ?? this.hasExpiredViewers,
    repostInfo: repostInfo ?? this.repostInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    chosenReactionType: chosenReactionType ?? this.chosenReactionType,
    privacySettings: privacySettings ?? this.privacySettings,
    content: content ?? this.content,
    areas: areas ?? this.areas,
    caption: caption ?? this.caption,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'story';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
