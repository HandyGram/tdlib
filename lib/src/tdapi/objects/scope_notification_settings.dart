part of '../tdapi.dart';

/// **ScopeNotificationSettings** *(scopeNotificationSettings)* - basic class
///
/// Contains information about notification settings for several chats.
///
/// * [muteFor]: Time left before notifications will be unmuted, in seconds.
/// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
/// * [showPreview]: True, if message content must be displayed in notifications.
/// * [useDefaultMuteStories]: If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories.
/// * [muteStories]: True, if story notifications are disabled.
/// * [storySoundId]: Identifier of the notification sound to be played for stories; 0 if sound is disabled.
/// * [showStorySender]: True, if the sender of stories must be displayed in notifications.
/// * [disablePinnedMessageNotifications]: True, if notifications for incoming pinned messages will be created as for an ordinary unread message.
/// * [disableMentionNotifications]: True, if notifications for messages with mentions will be created as for an ordinary unread message.
final class ScopeNotificationSettings extends TdObject {
  /// **ScopeNotificationSettings** *(scopeNotificationSettings)* - basic class
  ///
  /// Contains information about notification settings for several chats.
  ///
  /// * [muteFor]: Time left before notifications will be unmuted, in seconds.
  /// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [showPreview]: True, if message content must be displayed in notifications.
  /// * [useDefaultMuteStories]: If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories.
  /// * [muteStories]: True, if story notifications are disabled.
  /// * [storySoundId]: Identifier of the notification sound to be played for stories; 0 if sound is disabled.
  /// * [showStorySender]: True, if the sender of stories must be displayed in notifications.
  /// * [disablePinnedMessageNotifications]: True, if notifications for incoming pinned messages will be created as for an ordinary unread message.
  /// * [disableMentionNotifications]: True, if notifications for messages with mentions will be created as for an ordinary unread message.
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.storySoundId,
    required this.showStorySender,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
    this.extra,
    this.clientId,
  });

  /// Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// True, if message content must be displayed in notifications
  final bool showPreview;

  /// If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories
  final bool useDefaultMuteStories;

  /// True, if story notifications are disabled
  final bool muteStories;

  /// Identifier of the notification sound to be played for stories; 0 if sound is disabled
  final int storySoundId;

  /// True, if the sender of stories must be displayed in notifications
  final bool showStorySender;

  /// True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// True, if notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ScopeNotificationSettings(
        muteFor: json['mute_for'],
        soundId: int.parse(json['sound_id']),
        showPreview: json['show_preview'],
        useDefaultMuteStories: json['use_default_mute_stories'],
        muteStories: json['mute_stories'],
        storySoundId: int.parse(json['story_sound_id']),
        showStorySender: json['show_story_sender'],
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'],
        disableMentionNotifications: json['disable_mention_notifications'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "mute_for": muteFor,
      "sound_id": soundId,
      "show_preview": showPreview,
      "use_default_mute_stories": useDefaultMuteStories,
      "mute_stories": muteStories,
      "story_sound_id": storySoundId,
      "show_story_sender": showStorySender,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [mute_for]: Time left before notifications will be unmuted, in seconds
  /// * [sound_id]: Identifier of the notification sound to be played; 0 if sound is disabled
  /// * [show_preview]: True, if message content must be displayed in notifications
  /// * [use_default_mute_stories]: If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories
  /// * [mute_stories]: True, if story notifications are disabled
  /// * [story_sound_id]: Identifier of the notification sound to be played for stories; 0 if sound is disabled
  /// * [show_story_sender]: True, if the sender of stories must be displayed in notifications
  /// * [disable_pinned_message_notifications]: True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  /// * [disable_mention_notifications]: True, if notifications for messages with mentions will be created as for an ordinary unread message
  ScopeNotificationSettings copyWith({
    int? muteFor,
    int? soundId,
    bool? showPreview,
    bool? useDefaultMuteStories,
    bool? muteStories,
    int? storySoundId,
    bool? showStorySender,
    bool? disablePinnedMessageNotifications,
    bool? disableMentionNotifications,
    dynamic extra,
    int? clientId,
  }) =>
      ScopeNotificationSettings(
        muteFor: muteFor ?? this.muteFor,
        soundId: soundId ?? this.soundId,
        showPreview: showPreview ?? this.showPreview,
        useDefaultMuteStories:
            useDefaultMuteStories ?? this.useDefaultMuteStories,
        muteStories: muteStories ?? this.muteStories,
        storySoundId: storySoundId ?? this.storySoundId,
        showStorySender: showStorySender ?? this.showStorySender,
        disablePinnedMessageNotifications: disablePinnedMessageNotifications ??
            this.disablePinnedMessageNotifications,
        disableMentionNotifications:
            disableMentionNotifications ?? this.disableMentionNotifications,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'scopeNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
