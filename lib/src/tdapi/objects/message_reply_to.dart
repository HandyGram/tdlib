part of '../tdapi.dart';

/// **MessageReplyTo** *(messageReplyTo)* - parent
///
/// Contains information about the message or the story a message is replying to.
sealed class MessageReplyTo extends TdObject {
  
  /// **MessageReplyTo** *(messageReplyTo)* - parent
  ///
  /// Contains information about the message or the story a message is replying to.
  const MessageReplyTo();
  
  /// a MessageReplyTo return type can be :
  /// * [MessageReplyToMessage]
  /// * [MessageReplyToStory]
  factory MessageReplyTo.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageReplyToMessage.objectType:
        return MessageReplyToMessage.fromJson(json);
      case MessageReplyToStory.objectType:
        return MessageReplyToStory.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageReplyTo)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageReplyTo copyWith();

  /// TDLib object type
  static const String objectType = 'messageReplyTo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReplyToMessage** *(messageReplyToMessage)* - child of MessageReplyTo
///
/// Describes a replied message.
///
/// * [chatId]: The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats.
/// * [messageId]: The identifier of the replied message.
final class MessageReplyToMessage extends MessageReplyTo {
  
  /// **MessageReplyToMessage** *(messageReplyToMessage)* - child of MessageReplyTo
  ///
  /// Describes a replied message.
  ///
  /// * [chatId]: The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats.
  /// * [messageId]: The identifier of the replied message.
  const MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats
  final int chatId;

  /// The identifier of the replied message
  final int messageId;
  
  /// Parse from a json
  factory MessageReplyToMessage.fromJson(Map<String, dynamic> json) => MessageReplyToMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats
  /// * [message_id]: The identifier of the replied message
  @override
  MessageReplyToMessage copyWith({
    int? chatId,
    int? messageId,
  }) => MessageReplyToMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  /// TDLib object type
  static const String objectType = 'messageReplyToMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReplyToStory** *(messageReplyToStory)* - child of MessageReplyTo
///
/// Describes a replied story.
///
/// * [storySenderChatId]: The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat.
/// * [storyId]: The identifier of the replied story.
final class MessageReplyToStory extends MessageReplyTo {
  
  /// **MessageReplyToStory** *(messageReplyToStory)* - child of MessageReplyTo
  ///
  /// Describes a replied story.
  ///
  /// * [storySenderChatId]: The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat.
  /// * [storyId]: The identifier of the replied story.
  const MessageReplyToStory({
    required this.storySenderChatId,
    required this.storyId,
  });
  
  /// The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat 
  final int storySenderChatId;

  /// The identifier of the replied story
  final int storyId;
  
  /// Parse from a json
  factory MessageReplyToStory.fromJson(Map<String, dynamic> json) => MessageReplyToStory(
    storySenderChatId: json['story_sender_chat_id'],
    storyId: json['story_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat 
  /// * [story_id]: The identifier of the replied story
  @override
  MessageReplyToStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) => MessageReplyToStory(
    storySenderChatId: storySenderChatId ?? this.storySenderChatId,
    storyId: storyId ?? this.storyId,
  );

  /// TDLib object type
  static const String objectType = 'messageReplyToStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
