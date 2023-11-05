part of '../tdapi.dart';

/// **SponsoredMessage** *(sponsoredMessage)* - basic class
///
/// Describes a sponsored message.
///
/// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
/// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
/// * [content]: Content of the message. Currently, can be only of the type messageText.
/// * [sponsor]: Information about the sponsor of the message.
/// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
final class SponsoredMessage extends TdObject {
  
  /// **SponsoredMessage** *(sponsoredMessage)* - basic class
  ///
  /// Describes a sponsored message.
  ///
  /// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
  /// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
  /// * [content]: Content of the message. Currently, can be only of the type messageText.
  /// * [sponsor]: Information about the sponsor of the message.
  /// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.content,
    required this.sponsor,
    required this.additionalInfo,
  });
  
  /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// Content of the message. Currently, can be only of the type messageText
  final MessageContent content;

  /// Information about the sponsor of the message
  final MessageSponsor sponsor;

  /// If non-empty, additional information about the sponsored message to be shown along with the message
  final String additionalInfo;
  
  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) => SponsoredMessage(
    messageId: json['message_id'],
    isRecommended: json['is_recommended'],
    content: MessageContent.fromJson(json['content']),
    sponsor: MessageSponsor.fromJson(json['sponsor']),
    additionalInfo: json['additional_info'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_id": messageId,
      "is_recommended": isRecommended,
      "content": content.toJson(),
      "sponsor": sponsor.toJson(),
      "additional_info": additionalInfo,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_id]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  /// * [is_recommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored"
  /// * [content]: Content of the message. Currently, can be only of the type messageText
  /// * [sponsor]: Information about the sponsor of the message
  /// * [additional_info]: If non-empty, additional information about the sponsored message to be shown along with the message
  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    MessageContent? content,
    MessageSponsor? sponsor,
    String? additionalInfo,
  }) => SponsoredMessage(
    messageId: messageId ?? this.messageId,
    isRecommended: isRecommended ?? this.isRecommended,
    content: content ?? this.content,
    sponsor: sponsor ?? this.sponsor,
    additionalInfo: additionalInfo ?? this.additionalInfo,
  );

  /// TDLib object type
  static const String objectType = 'sponsoredMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
