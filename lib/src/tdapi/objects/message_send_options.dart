part of '../tdapi.dart';

/// **MessageSendOptions** *(messageSendOptions)* - basic class
///
/// Options to be used when a message is sent.
///
/// * [disableNotification]: Pass true to disable notification for the message.
/// * [fromBackground]: Pass true if the message is sent from the background.
/// * [protectContent]: Pass true if the content of the message must be protected from forwarding and saving; for bots only.
/// * [updateOrderOfInstalledStickerSets]: Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum.
/// * [schedulingState]: Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled *(optional)*.
/// * [sendingId]: Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates.
/// * [onlyPreview]: Pass true to get a fake message instead of actually sending them.
final class MessageSendOptions extends TdObject {
  /// **MessageSendOptions** *(messageSendOptions)* - basic class
  ///
  /// Options to be used when a message is sent.
  ///
  /// * [disableNotification]: Pass true to disable notification for the message.
  /// * [fromBackground]: Pass true if the message is sent from the background.
  /// * [protectContent]: Pass true if the content of the message must be protected from forwarding and saving; for bots only.
  /// * [updateOrderOfInstalledStickerSets]: Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum.
  /// * [schedulingState]: Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled *(optional)*.
  /// * [sendingId]: Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates.
  /// * [onlyPreview]: Pass true to get a fake message instead of actually sending them.
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    required this.protectContent,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
    required this.sendingId,
    required this.onlyPreview,
  });

  /// Pass true to disable notification for the message
  final bool disableNotification;

  /// Pass true if the message is sent from the background
  final bool fromBackground;

  /// Pass true if the content of the message must be protected from forwarding and saving; for bots only
  final bool protectContent;

  /// Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  /// Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
  final int sendingId;

  /// Pass true to get a fake message instead of actually sending them
  final bool onlyPreview;

  /// Parse from a json
  factory MessageSendOptions.fromJson(Map<String, dynamic> json) =>
      MessageSendOptions(
        disableNotification: json['disable_notification'],
        fromBackground: json['from_background'],
        protectContent: json['protect_content'],
        updateOrderOfInstalledStickerSets:
            json['update_order_of_installed_sticker_sets'],
        schedulingState: json['scheduling_state'] == null
            ? null
            : MessageSchedulingState.fromJson(json['scheduling_state']),
        sendingId: json['sending_id'],
        onlyPreview: json['only_preview'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "disable_notification": disableNotification,
      "from_background": fromBackground,
      "protect_content": protectContent,
      "update_order_of_installed_sticker_sets":
          updateOrderOfInstalledStickerSets,
      "scheduling_state": schedulingState?.toJson(),
      "sending_id": sendingId,
      "only_preview": onlyPreview,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [disable_notification]: Pass true to disable notification for the message
  /// * [from_background]: Pass true if the message is sent from the background
  /// * [protect_content]: Pass true if the content of the message must be protected from forwarding and saving; for bots only
  /// * [update_order_of_installed_sticker_sets]: Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum
  /// * [scheduling_state]: Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  /// * [sending_id]: Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
  /// * [only_preview]: Pass true to get a fake message instead of actually sending them
  MessageSendOptions copyWith({
    bool? disableNotification,
    bool? fromBackground,
    bool? protectContent,
    bool? updateOrderOfInstalledStickerSets,
    MessageSchedulingState? schedulingState,
    int? sendingId,
    bool? onlyPreview,
  }) =>
      MessageSendOptions(
        disableNotification: disableNotification ?? this.disableNotification,
        fromBackground: fromBackground ?? this.fromBackground,
        protectContent: protectContent ?? this.protectContent,
        updateOrderOfInstalledStickerSets: updateOrderOfInstalledStickerSets ??
            this.updateOrderOfInstalledStickerSets,
        schedulingState: schedulingState ?? this.schedulingState,
        sendingId: sendingId ?? this.sendingId,
        onlyPreview: onlyPreview ?? this.onlyPreview,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageSendOptions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
