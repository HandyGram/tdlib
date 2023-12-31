part of '../tdapi.dart';

/// **MessageInteractionInfo** *(messageInteractionInfo)* - basic class
///
/// Contains information about interactions with a message.
///
/// * [viewCount]: Number of times the message was viewed.
/// * [forwardCount]: Number of times the message was forwarded.
/// * [replyInfo]: Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself *(optional)*.
/// * [reactions]: The list of reactions added to the message.
final class MessageInteractionInfo extends TdObject {
  
  /// **MessageInteractionInfo** *(messageInteractionInfo)* - basic class
  ///
  /// Contains information about interactions with a message.
  ///
  /// * [viewCount]: Number of times the message was viewed.
  /// * [forwardCount]: Number of times the message was forwarded.
  /// * [replyInfo]: Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself *(optional)*.
  /// * [reactions]: The list of reactions added to the message.
  const MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    this.replyInfo,
    required this.reactions,
  });
  
  /// Number of times the message was viewed
  final int viewCount;

  /// Number of times the message was forwarded
  final int forwardCount;

  /// Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  final MessageReplyInfo? replyInfo;

  /// The list of reactions added to the message
  final List<MessageReaction> reactions;
  
  /// Parse from a json
  factory MessageInteractionInfo.fromJson(Map<String, dynamic> json) => MessageInteractionInfo(
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
    replyInfo: json['reply_info'] == null ? null : MessageReplyInfo.fromJson(json['reply_info']),
    reactions: List<MessageReaction>.from((json['reactions'] ?? []).map((item) => MessageReaction.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "view_count": viewCount,
      "forward_count": forwardCount,
      "reply_info": replyInfo?.toJson(),
      "reactions": reactions.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [view_count]: Number of times the message was viewed
  /// * [forward_count]: Number of times the message was forwarded
  /// * [reply_info]: Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  /// * [reactions]: The list of reactions added to the message
  MessageInteractionInfo copyWith({
    int? viewCount,
    int? forwardCount,
    MessageReplyInfo? replyInfo,
    List<MessageReaction>? reactions,
  }) => MessageInteractionInfo(
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
    replyInfo: replyInfo ?? this.replyInfo,
    reactions: reactions ?? this.reactions,
  );

  /// TDLib object type
  static const String objectType = 'messageInteractionInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
