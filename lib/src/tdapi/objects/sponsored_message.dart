part of '../tdapi.dart';

/// **SponsoredMessage** *(sponsoredMessage)* - basic class
///
/// Describes a sponsored message.
///
/// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
/// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
/// * [canBeReported]: True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage.
/// * [content]: Content of the message. Currently, can be only of the type messageText.
/// * [sponsor]: Information about the sponsor of the message.
/// * [buttonText]: If non-empty, text for the message action button.
/// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
final class SponsoredMessage extends TdObject {
  /// **SponsoredMessage** *(sponsoredMessage)* - basic class
  ///
  /// Describes a sponsored message.
  ///
  /// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
  /// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
  /// * [canBeReported]: True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage.
  /// * [content]: Content of the message. Currently, can be only of the type messageText.
  /// * [sponsor]: Information about the sponsor of the message.
  /// * [buttonText]: If non-empty, text for the message action button.
  /// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.canBeReported,
    required this.content,
    required this.sponsor,
    required this.buttonText,
    required this.additionalInfo,
  });

  /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage
  final bool canBeReported;

  /// Content of the message. Currently, can be only of the type messageText
  final MessageContent content;

  /// Information about the sponsor of the message
  final MessageSponsor sponsor;

  /// If non-empty, text for the message action button
  final String buttonText;

  /// If non-empty, additional information about the sponsored message to be shown along with the message
  final String additionalInfo;

  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) =>
      SponsoredMessage(
        messageId: json['message_id'],
        isRecommended: json['is_recommended'],
        canBeReported: json['can_be_reported'],
        content: MessageContent.fromJson(json['content']),
        sponsor: MessageSponsor.fromJson(json['sponsor']),
        buttonText: json['button_text'],
        additionalInfo: json['additional_info'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message_id": messageId,
      "is_recommended": isRecommended,
      "can_be_reported": canBeReported,
      "content": content.toJson(),
      "sponsor": sponsor.toJson(),
      "button_text": buttonText,
      "additional_info": additionalInfo,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_id]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  /// * [is_recommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored"
  /// * [can_be_reported]: True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage
  /// * [content]: Content of the message. Currently, can be only of the type messageText
  /// * [sponsor]: Information about the sponsor of the message
  /// * [button_text]: If non-empty, text for the message action button
  /// * [additional_info]: If non-empty, additional information about the sponsored message to be shown along with the message
  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    bool? canBeReported,
    MessageContent? content,
    MessageSponsor? sponsor,
    String? buttonText,
    String? additionalInfo,
  }) =>
      SponsoredMessage(
        messageId: messageId ?? this.messageId,
        isRecommended: isRecommended ?? this.isRecommended,
        canBeReported: canBeReported ?? this.canBeReported,
        content: content ?? this.content,
        sponsor: sponsor ?? this.sponsor,
        buttonText: buttonText ?? this.buttonText,
        additionalInfo: additionalInfo ?? this.additionalInfo,
      );

  /// TDLib object type
  static const String defaultObjectId = 'sponsoredMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
