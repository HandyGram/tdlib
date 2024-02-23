part of '../tdapi.dart';

/// **MessageReactions** *(messageReactions)* - basic class
///
/// Contains a list of reactions added to a message.
///
/// * [reactions]: List of added reactions.
/// * [areTags]: True, if the reactions are tags and Telegram Premium users can filter messages by them.
final class MessageReactions extends TdObject {
  
  /// **MessageReactions** *(messageReactions)* - basic class
  ///
  /// Contains a list of reactions added to a message.
  ///
  /// * [reactions]: List of added reactions.
  /// * [areTags]: True, if the reactions are tags and Telegram Premium users can filter messages by them.
  const MessageReactions({
    required this.reactions,
    required this.areTags,
  });
  
  /// List of added reactions 
  final List<MessageReaction> reactions;

  /// True, if the reactions are tags and Telegram Premium users can filter messages by them
  final bool areTags;
  
  /// Parse from a json
  factory MessageReactions.fromJson(Map<String, dynamic> json) => MessageReactions(
    reactions: List<MessageReaction>.from((json['reactions'] ?? []).map((item) => MessageReaction.fromJson(item)).toList()),
    areTags: json['are_tags'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "reactions": reactions.map((i) => i.toJson()).toList(),
      "are_tags": areTags,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reactions]: List of added reactions 
  /// * [are_tags]: True, if the reactions are tags and Telegram Premium users can filter messages by them
  MessageReactions copyWith({
    List<MessageReaction>? reactions,
    bool? areTags,
  }) => MessageReactions(
    reactions: reactions ?? this.reactions,
    areTags: areTags ?? this.areTags,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
