part of '../tdapi.dart';

/// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
///
/// Describes reactions available in the chat.
sealed class ChatAvailableReactions extends TdObject {
  
  /// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
  ///
  /// Describes reactions available in the chat.
  const ChatAvailableReactions();
  
  /// a ChatAvailableReactions return type can be :
  /// * [ChatAvailableReactionsAll]
  /// * [ChatAvailableReactionsSome]
  factory ChatAvailableReactions.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatAvailableReactionsAll.defaultObjectId:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.defaultObjectId:
        return ChatAvailableReactionsSome.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatAvailableReactions)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatAvailableReactions copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'chatAvailableReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
///
/// All reactions are available in the chat.
final class ChatAvailableReactionsAll extends ChatAvailableReactions {
  
  /// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
  ///
  /// All reactions are available in the chat.
  const ChatAvailableReactionsAll();
  
  /// Parse from a json
  factory ChatAvailableReactionsAll.fromJson(Map<String, dynamic> json) => const ChatAvailableReactionsAll();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatAvailableReactionsAll copyWith() => const ChatAvailableReactionsAll();

  /// TDLib object type
  static const String defaultObjectId = 'chatAvailableReactionsAll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **ChatAvailableReactionsSome** *(chatAvailableReactionsSome)* - child of ChatAvailableReactions
///
/// Only specific reactions are available in the chat.
///
/// * [reactions]: The list of reactions.
final class ChatAvailableReactionsSome extends ChatAvailableReactions {
  
  /// **ChatAvailableReactionsSome** *(chatAvailableReactionsSome)* - child of ChatAvailableReactions
  ///
  /// Only specific reactions are available in the chat.
  ///
  /// * [reactions]: The list of reactions.
  const ChatAvailableReactionsSome({
    required this.reactions,
  });
  
  /// The list of reactions
  final List<ReactionType> reactions;
  
  /// Parse from a json
  factory ChatAvailableReactionsSome.fromJson(Map<String, dynamic> json) => ChatAvailableReactionsSome(
    reactions: List<ReactionType>.from((json['reactions'] ?? []).map((item) => ReactionType.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "reactions": reactions.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reactions]: The list of reactions
  @override
  ChatAvailableReactionsSome copyWith({
    List<ReactionType>? reactions,
  }) => ChatAvailableReactionsSome(
    reactions: reactions ?? this.reactions,
  );

  /// TDLib object type
  static const String defaultObjectId = 'chatAvailableReactionsSome';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
