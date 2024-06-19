part of '../tdapi.dart';

/// **ReactionNotificationSettings** *(reactionNotificationSettings)* - basic class
///
/// Contains information about notification settings for reactions.
///
/// * [messageReactionSource]: Source of message reactions for which notifications are shown.
/// * [storyReactionSource]: Source of story reactions for which notifications are shown.
/// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
/// * [showPreview]: True, if reaction sender and emoji must be displayed in notifications.
final class ReactionNotificationSettings extends TdObject {
  /// **ReactionNotificationSettings** *(reactionNotificationSettings)* - basic class
  ///
  /// Contains information about notification settings for reactions.
  ///
  /// * [messageReactionSource]: Source of message reactions for which notifications are shown.
  /// * [storyReactionSource]: Source of story reactions for which notifications are shown.
  /// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [showPreview]: True, if reaction sender and emoji must be displayed in notifications.
  const ReactionNotificationSettings({
    required this.messageReactionSource,
    required this.storyReactionSource,
    required this.soundId,
    required this.showPreview,
  });

  /// Source of message reactions for which notifications are shown
  final ReactionNotificationSource messageReactionSource;

  /// Source of story reactions for which notifications are shown
  final ReactionNotificationSource storyReactionSource;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// True, if reaction sender and emoji must be displayed in notifications
  final bool showPreview;

  /// Parse from a json
  factory ReactionNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ReactionNotificationSettings(
        messageReactionSource: ReactionNotificationSource.fromJson(
            json['message_reaction_source']),
        storyReactionSource:
            ReactionNotificationSource.fromJson(json['story_reaction_source']),
        soundId: json['sound_id'] is int
            ? json['sound_id']
            : int.parse(json['sound_id']),
        showPreview: json['show_preview'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message_reaction_source": messageReactionSource.toJson(),
      "story_reaction_source": storyReactionSource.toJson(),
      "sound_id": soundId,
      "show_preview": showPreview,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_reaction_source]: Source of message reactions for which notifications are shown
  /// * [story_reaction_source]: Source of story reactions for which notifications are shown
  /// * [sound_id]: Identifier of the notification sound to be played; 0 if sound is disabled
  /// * [show_preview]: True, if reaction sender and emoji must be displayed in notifications
  ReactionNotificationSettings copyWith({
    ReactionNotificationSource? messageReactionSource,
    ReactionNotificationSource? storyReactionSource,
    int? soundId,
    bool? showPreview,
  }) =>
      ReactionNotificationSettings(
        messageReactionSource:
            messageReactionSource ?? this.messageReactionSource,
        storyReactionSource: storyReactionSource ?? this.storyReactionSource,
        soundId: soundId ?? this.soundId,
        showPreview: showPreview ?? this.showPreview,
      );

  /// TDLib object type
  static const String defaultObjectId = 'reactionNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
