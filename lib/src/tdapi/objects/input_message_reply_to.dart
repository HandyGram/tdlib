part of '../tdapi.dart';

/// **InputMessageReplyTo** *(inputMessageReplyTo)* - parent
///
/// Contains information about the message or the story to be replied.
sealed class InputMessageReplyTo extends TdObject {
  /// **InputMessageReplyTo** *(inputMessageReplyTo)* - parent
  ///
  /// Contains information about the message or the story to be replied.
  const InputMessageReplyTo();

  /// a InputMessageReplyTo return type can be :
  /// * [InputMessageReplyToMessage]
  /// * [InputMessageReplyToExternalMessage]
  /// * [InputMessageReplyToStory]
  factory InputMessageReplyTo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageReplyToMessage.defaultObjectId:
        return InputMessageReplyToMessage.fromJson(json);
      case InputMessageReplyToExternalMessage.defaultObjectId:
        return InputMessageReplyToExternalMessage.fromJson(json);
      case InputMessageReplyToStory.defaultObjectId:
        return InputMessageReplyToStory.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputMessageReplyTo)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputMessageReplyTo copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageReplyTo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageReplyToMessage** *(inputMessageReplyToMessage)* - child of InputMessageReplyTo
///
/// Describes a message to be replied in the same chat and forum topic.
///
/// * [messageId]: The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied.
/// * [quote]: Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats *(optional)*.
final class InputMessageReplyToMessage extends InputMessageReplyTo {
  /// **InputMessageReplyToMessage** *(inputMessageReplyToMessage)* - child of InputMessageReplyTo
  ///
  /// Describes a message to be replied in the same chat and forum topic.
  ///
  /// * [messageId]: The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied.
  /// * [quote]: Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats *(optional)*.
  const InputMessageReplyToMessage({
    required this.messageId,
    this.quote,
  });

  /// The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied
  final int messageId;

  /// Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats
  final InputTextQuote? quote;

  /// Parse from a json
  factory InputMessageReplyToMessage.fromJson(Map<String, dynamic> json) =>
      InputMessageReplyToMessage(
        messageId: json['message_id'],
        quote: json['quote'] == null
            ? null
            : InputTextQuote.fromJson(json['quote']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message_id": messageId,
      "quote": quote?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_id]: The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied
  /// * [quote]: Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats
  @override
  InputMessageReplyToMessage copyWith({
    int? messageId,
    InputTextQuote? quote,
  }) =>
      InputMessageReplyToMessage(
        messageId: messageId ?? this.messageId,
        quote: quote ?? this.quote,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageReplyToMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageReplyToExternalMessage** *(inputMessageReplyToExternalMessage)* - child of InputMessageReplyTo
///
/// Describes a message to be replied that is from a different chat or a forum topic; not supported in secret chats.
///
/// * [chatId]: The identifier of the chat to which the message to be replied belongs.
/// * [messageId]: The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat.
/// * [quote]: Quote from the message to be replied; pass null if none *(optional)*.
final class InputMessageReplyToExternalMessage extends InputMessageReplyTo {
  /// **InputMessageReplyToExternalMessage** *(inputMessageReplyToExternalMessage)* - child of InputMessageReplyTo
  ///
  /// Describes a message to be replied that is from a different chat or a forum topic; not supported in secret chats.
  ///
  /// * [chatId]: The identifier of the chat to which the message to be replied belongs.
  /// * [messageId]: The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat.
  /// * [quote]: Quote from the message to be replied; pass null if none *(optional)*.
  const InputMessageReplyToExternalMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
  });

  /// The identifier of the chat to which the message to be replied belongs
  final int chatId;

  /// The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat
  final int messageId;

  /// Quote from the message to be replied; pass null if none
  final InputTextQuote? quote;

  /// Parse from a json
  factory InputMessageReplyToExternalMessage.fromJson(
          Map<String, dynamic> json) =>
      InputMessageReplyToExternalMessage(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        quote: json['quote'] == null
            ? null
            : InputTextQuote.fromJson(json['quote']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "quote": quote?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: The identifier of the chat to which the message to be replied belongs
  /// * [message_id]: The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat
  /// * [quote]: Quote from the message to be replied; pass null if none
  @override
  InputMessageReplyToExternalMessage copyWith({
    int? chatId,
    int? messageId,
    InputTextQuote? quote,
  }) =>
      InputMessageReplyToExternalMessage(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        quote: quote ?? this.quote,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageReplyToExternalMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputMessageReplyToStory** *(inputMessageReplyToStory)* - child of InputMessageReplyTo
///
/// Describes a story to be replied.
///
/// * [storySenderChatId]: The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat and channel stories can't be replied.
/// * [storyId]: The identifier of the story.
final class InputMessageReplyToStory extends InputMessageReplyTo {
  /// **InputMessageReplyToStory** *(inputMessageReplyToStory)* - child of InputMessageReplyTo
  ///
  /// Describes a story to be replied.
  ///
  /// * [storySenderChatId]: The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat and channel stories can't be replied.
  /// * [storyId]: The identifier of the story.
  const InputMessageReplyToStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat and channel stories can't be replied
  final int storySenderChatId;

  /// The identifier of the story
  final int storyId;

  /// Parse from a json
  factory InputMessageReplyToStory.fromJson(Map<String, dynamic> json) =>
      InputMessageReplyToStory(
        storySenderChatId: json['story_sender_chat_id'],
        storyId: json['story_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat and channel stories can't be replied
  /// * [story_id]: The identifier of the story
  @override
  InputMessageReplyToStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) =>
      InputMessageReplyToStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputMessageReplyToStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
