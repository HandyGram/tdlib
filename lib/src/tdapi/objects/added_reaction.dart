part of '../tdapi.dart';

/// **AddedReaction** *(addedReaction)* - basic class
///
/// Represents a reaction applied to a message.
///
/// * [type]: Type of the reaction.
/// * [senderId]: Identifier of the chat member, applied the reaction.
/// * [date]: Point in time (Unix timestamp) when the reaction was added.
final class AddedReaction extends TdObject {
  
  /// **AddedReaction** *(addedReaction)* - basic class
  ///
  /// Represents a reaction applied to a message.
  ///
  /// * [type]: Type of the reaction.
  /// * [senderId]: Identifier of the chat member, applied the reaction.
  /// * [date]: Point in time (Unix timestamp) when the reaction was added.
  const AddedReaction({
    required this.type,
    required this.senderId,
    required this.date,
  });
  
  /// Type of the reaction 
  final ReactionType type;

  /// Identifier of the chat member, applied the reaction 
  final MessageSender senderId;

  /// Point in time (Unix timestamp) when the reaction was added
  final int date;
  
  /// Parse from a json
  factory AddedReaction.fromJson(Map<String, dynamic> json) => AddedReaction(
    type: ReactionType.fromJson(json['type']),
    senderId: MessageSender.fromJson(json['sender_id']),
    date: json['date'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
      "date": date,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [type]: Type of the reaction 
  /// * [sender_id]: Identifier of the chat member, applied the reaction 
  /// * [date]: Point in time (Unix timestamp) when the reaction was added
  AddedReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
    int? date,
  }) => AddedReaction(
    type: type ?? this.type,
    senderId: senderId ?? this.senderId,
    date: date ?? this.date,
  );

  /// TDLib object type
  static const String objectType = 'addedReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
