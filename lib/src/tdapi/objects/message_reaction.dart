part of '../tdapi.dart';

/// **MessageReaction** *(messageReaction)* - basic class
///
/// Contains information about a reaction to a message.
///
/// * [type]: Type of the reaction.
/// * [totalCount]: Number of times the reaction was added.
/// * [isChosen]: True, if the reaction is chosen by the current user.
/// * [recentSenderIds]: Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats.
final class MessageReaction extends TdObject {
  
  /// **MessageReaction** *(messageReaction)* - basic class
  ///
  /// Contains information about a reaction to a message.
  ///
  /// * [type]: Type of the reaction.
  /// * [totalCount]: Number of times the reaction was added.
  /// * [isChosen]: True, if the reaction is chosen by the current user.
  /// * [recentSenderIds]: Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats.
  const MessageReaction({
    required this.type,
    required this.totalCount,
    required this.isChosen,
    required this.recentSenderIds,
  });
  
  /// Type of the reaction
  final ReactionType type;

  /// Number of times the reaction was added
  final int totalCount;

  /// True, if the reaction is chosen by the current user
  final bool isChosen;

  /// Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats
  final List<MessageSender> recentSenderIds;
  
  /// Parse from a json
  factory MessageReaction.fromJson(Map<String, dynamic> json) => MessageReaction(
    type: ReactionType.fromJson(json['type']),
    totalCount: json['total_count'],
    isChosen: json['is_chosen'],
    recentSenderIds: List<MessageSender>.from((json['recent_sender_ids'] ?? []).map((item) => MessageSender.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "total_count": totalCount,
      "is_chosen": isChosen,
      "recent_sender_ids": recentSenderIds.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [type]: Type of the reaction
  /// * [total_count]: Number of times the reaction was added
  /// * [is_chosen]: True, if the reaction is chosen by the current user
  /// * [recent_sender_ids]: Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats
  MessageReaction copyWith({
    ReactionType? type,
    int? totalCount,
    bool? isChosen,
    List<MessageSender>? recentSenderIds,
  }) => MessageReaction(
    type: type ?? this.type,
    totalCount: totalCount ?? this.totalCount,
    isChosen: isChosen ?? this.isChosen,
    recentSenderIds: recentSenderIds ?? this.recentSenderIds,
  );

  /// TDLib object type
  static const String objectType = 'messageReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
