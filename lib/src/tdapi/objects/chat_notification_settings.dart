part of '../tdapi.dart';

class ChatNotificationSettings extends TdObject {
  /// Contains information about notification settings for a chat
  ChatNotificationSettings(
      {this.useDefaultMuteFor,
      this.muteFor,
      this.useDefaultSound,
      this.sound,
      this.useDefaultShowPreview,
      this.showPreview,
      this.useDefaultDisablePinnedMessageNotifications,
      this.disablePinnedMessageNotifications,
      this.useDefaultDisableMentionNotifications,
      this.disableMentionNotifications});

  /// [useDefaultMuteFor] If true, mute_for is ignored and the value for the relevant type of chat is used instead
  bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  int muteFor;

  /// [useDefaultSound] If true, sound is ignored and the value for the relevant type of chat is used instead
  bool useDefaultSound;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  String sound;

  /// [useDefaultShowPreview] If true, show_preview is ignored and the value for the relevant type of chat is used instead
  bool useDefaultShowPreview;

  /// [showPreview] True, if message content should be displayed in notifications
  bool showPreview;

  /// [useDefaultDisablePinnedMessageNotifications] If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
  bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
  bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with mentions will be created as for an ordinary unread message
  bool disableMentionNotifications;

  /// Parse from a json
  ChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    this.useDefaultMuteFor = json['use_default_mute_for'];
    this.muteFor = json['mute_for'];
    this.useDefaultSound = json['use_default_sound'];
    this.sound = json['sound'];
    this.useDefaultShowPreview = json['use_default_show_preview'];
    this.showPreview = json['show_preview'];
    this.useDefaultDisablePinnedMessageNotifications =
        json['use_default_disable_pinned_message_notifications'];
    this.disablePinnedMessageNotifications =
        json['disable_pinned_message_notifications'];
    this.useDefaultDisableMentionNotifications =
        json['use_default_disable_mention_notifications'];
    this.disableMentionNotifications = json['disable_mention_notifications'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "use_default_mute_for": this.useDefaultMuteFor,
      "mute_for": this.muteFor,
      "use_default_sound": this.useDefaultSound,
      "sound": this.sound,
      "use_default_show_preview": this.useDefaultShowPreview,
      "show_preview": this.showPreview,
      "use_default_disable_pinned_message_notifications":
          this.useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications":
          this.disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications":
          this.useDefaultDisableMentionNotifications,
      "disable_mention_notifications": this.disableMentionNotifications,
    };
  }

  static const CONSTRUCTOR = 'chatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
