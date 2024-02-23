part of '../tdapi.dart';

/// **SavedMessagesTopicType** *(savedMessagesTopicType)* - parent
///
/// Describes type of a Saved Messages topic.
sealed class SavedMessagesTopicType extends TdObject {
  
  /// **SavedMessagesTopicType** *(savedMessagesTopicType)* - parent
  ///
  /// Describes type of a Saved Messages topic.
  const SavedMessagesTopicType();
  
  /// a SavedMessagesTopicType return type can be :
  /// * [SavedMessagesTopicTypeMyNotes]
  /// * [SavedMessagesTopicTypeAuthorHidden]
  /// * [SavedMessagesTopicTypeSavedFromChat]
  factory SavedMessagesTopicType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SavedMessagesTopicTypeMyNotes.objectType:
        return SavedMessagesTopicTypeMyNotes.fromJson(json);
      case SavedMessagesTopicTypeAuthorHidden.objectType:
        return SavedMessagesTopicTypeAuthorHidden.fromJson(json);
      case SavedMessagesTopicTypeSavedFromChat.objectType:
        return SavedMessagesTopicTypeSavedFromChat.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SavedMessagesTopicType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  SavedMessagesTopicType copyWith();

  /// TDLib object type
  static const String objectType = 'savedMessagesTopicType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SavedMessagesTopicTypeMyNotes** *(savedMessagesTopicTypeMyNotes)* - child of SavedMessagesTopicType
///
/// Topic containing messages sent by the current user of forwarded from an unknown chat.
final class SavedMessagesTopicTypeMyNotes extends SavedMessagesTopicType {
  
  /// **SavedMessagesTopicTypeMyNotes** *(savedMessagesTopicTypeMyNotes)* - child of SavedMessagesTopicType
  ///
  /// Topic containing messages sent by the current user of forwarded from an unknown chat.
  const SavedMessagesTopicTypeMyNotes();
  
  /// Parse from a json
  factory SavedMessagesTopicTypeMyNotes.fromJson(Map<String, dynamic> json) => const SavedMessagesTopicTypeMyNotes();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SavedMessagesTopicTypeMyNotes copyWith() => const SavedMessagesTopicTypeMyNotes();

  /// TDLib object type
  static const String objectType = 'savedMessagesTopicTypeMyNotes';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SavedMessagesTopicTypeAuthorHidden** *(savedMessagesTopicTypeAuthorHidden)* - child of SavedMessagesTopicType
///
/// Topic containing messages forwarded from a user with hidden privacy.
final class SavedMessagesTopicTypeAuthorHidden extends SavedMessagesTopicType {
  
  /// **SavedMessagesTopicTypeAuthorHidden** *(savedMessagesTopicTypeAuthorHidden)* - child of SavedMessagesTopicType
  ///
  /// Topic containing messages forwarded from a user with hidden privacy.
  const SavedMessagesTopicTypeAuthorHidden();
  
  /// Parse from a json
  factory SavedMessagesTopicTypeAuthorHidden.fromJson(Map<String, dynamic> json) => const SavedMessagesTopicTypeAuthorHidden();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SavedMessagesTopicTypeAuthorHidden copyWith() => const SavedMessagesTopicTypeAuthorHidden();

  /// TDLib object type
  static const String objectType = 'savedMessagesTopicTypeAuthorHidden';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SavedMessagesTopicTypeSavedFromChat** *(savedMessagesTopicTypeSavedFromChat)* - child of SavedMessagesTopicType
///
/// Topic containing messages forwarded from a specific chat.
///
/// * [chatId]: Identifier of the chat.
final class SavedMessagesTopicTypeSavedFromChat extends SavedMessagesTopicType {
  
  /// **SavedMessagesTopicTypeSavedFromChat** *(savedMessagesTopicTypeSavedFromChat)* - child of SavedMessagesTopicType
  ///
  /// Topic containing messages forwarded from a specific chat.
  ///
  /// * [chatId]: Identifier of the chat.
  const SavedMessagesTopicTypeSavedFromChat({
    required this.chatId,
  });
  
  /// Identifier of the chat
  final int chatId;
  
  /// Parse from a json
  factory SavedMessagesTopicTypeSavedFromChat.fromJson(Map<String, dynamic> json) => SavedMessagesTopicTypeSavedFromChat(
    chatId: json['chat_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  @override
  SavedMessagesTopicTypeSavedFromChat copyWith({
    int? chatId,
  }) => SavedMessagesTopicTypeSavedFromChat(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'savedMessagesTopicTypeSavedFromChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
