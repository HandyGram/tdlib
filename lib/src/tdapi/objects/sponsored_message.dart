part of '../tdapi.dart';

/// **SponsoredMessage** *(sponsoredMessage)* - basic class
///
/// Describes a sponsored message.
///
/// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
/// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
/// * [sponsorChatId]: Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link.
/// * [sponsorChatInfo]: Information about the sponsor chat; may be null unless sponsor_chat_id == 0 *(optional)*.
/// * [showChatPhoto]: True, if the sponsor's chat photo must be shown.
/// * [link]: An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead *(optional)*.
/// * [content]: Content of the message. Currently, can be only of the type messageText.
/// * [sponsorInfo]: If non-empty, information about the sponsor to be shown along with the message.
/// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
final class SponsoredMessage extends TdObject {
  
  /// **SponsoredMessage** *(sponsoredMessage)* - basic class
  ///
  /// Describes a sponsored message.
  ///
  /// * [messageId]: Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages.
  /// * [isRecommended]: True, if the message needs to be labeled as "recommended" instead of "sponsored".
  /// * [sponsorChatId]: Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link.
  /// * [sponsorChatInfo]: Information about the sponsor chat; may be null unless sponsor_chat_id == 0 *(optional)*.
  /// * [showChatPhoto]: True, if the sponsor's chat photo must be shown.
  /// * [link]: An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead *(optional)*.
  /// * [content]: Content of the message. Currently, can be only of the type messageText.
  /// * [sponsorInfo]: If non-empty, information about the sponsor to be shown along with the message.
  /// * [additionalInfo]: If non-empty, additional information about the sponsored message to be shown along with the message.
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.sponsorChatId,
    this.sponsorChatInfo,
    required this.showChatPhoto,
    this.link,
    required this.content,
    required this.sponsorInfo,
    required this.additionalInfo,
  });
  
  /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link
  final int sponsorChatId;

  /// Information about the sponsor chat; may be null unless sponsor_chat_id == 0
  final ChatInviteLinkInfo? sponsorChatInfo;

  /// True, if the sponsor's chat photo must be shown
  final bool showChatPhoto;

  /// An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// Content of the message. Currently, can be only of the type messageText
  final MessageContent content;

  /// If non-empty, information about the sponsor to be shown along with the message
  final String sponsorInfo;

  /// If non-empty, additional information about the sponsored message to be shown along with the message
  final String additionalInfo;
  
  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) => SponsoredMessage(
    messageId: json['message_id'],
    isRecommended: json['is_recommended'],
    sponsorChatId: json['sponsor_chat_id'],
    sponsorChatInfo: json['sponsor_chat_info'] == null ? null : ChatInviteLinkInfo.fromJson(json['sponsor_chat_info']),
    showChatPhoto: json['show_chat_photo'],
    link: json['link'] == null ? null : InternalLinkType.fromJson(json['link']),
    content: MessageContent.fromJson(json['content']),
    sponsorInfo: json['sponsor_info'],
    additionalInfo: json['additional_info'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_id": messageId,
      "is_recommended": isRecommended,
      "sponsor_chat_id": sponsorChatId,
      "sponsor_chat_info": sponsorChatInfo?.toJson(),
      "show_chat_photo": showChatPhoto,
      "link": link?.toJson(),
      "content": content.toJson(),
      "sponsor_info": sponsorInfo,
      "additional_info": additionalInfo,
		};
	}

  
  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    int? sponsorChatId,
    ChatInviteLinkInfo? sponsorChatInfo,
    bool? showChatPhoto,
    InternalLinkType? link,
    MessageContent? content,
    String? sponsorInfo,
    String? additionalInfo,
  }) => SponsoredMessage(
    messageId: messageId ?? this.messageId,
    isRecommended: isRecommended ?? this.isRecommended,
    sponsorChatId: sponsorChatId ?? this.sponsorChatId,
    sponsorChatInfo: sponsorChatInfo ?? this.sponsorChatInfo,
    showChatPhoto: showChatPhoto ?? this.showChatPhoto,
    link: link ?? this.link,
    content: content ?? this.content,
    sponsorInfo: sponsorInfo ?? this.sponsorInfo,
    additionalInfo: additionalInfo ?? this.additionalInfo,
  );

  static const String objectType = 'sponsoredMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
