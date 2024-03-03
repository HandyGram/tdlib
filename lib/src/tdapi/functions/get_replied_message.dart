part of '../tdapi.dart';

/// **GetRepliedMessage** *(getRepliedMessage)* - TDLib function
///
/// Returns information about a non-bundled message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message,. the message with a previously set same background, the giveaway message, and the topic creation message for messages of the types. messagePinMessage, messageGameScore, messagePaymentSuccessful, messageChatSetBackground, messagePremiumGiveawayCompleted and topic messages without non-bundled replied message respectively.
///
/// * [chatId]: Identifier of the chat the message belongs to.
/// * [messageId]: Identifier of the reply message.
///
/// [Message] is returned on completion.
final class GetRepliedMessage extends TdFunction {
  /// **GetRepliedMessage** *(getRepliedMessage)* - TDLib function
  ///
  /// Returns information about a non-bundled message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message,. the message with a previously set same background, the giveaway message, and the topic creation message for messages of the types. messagePinMessage, messageGameScore, messagePaymentSuccessful, messageChatSetBackground, messagePremiumGiveawayCompleted and topic messages without non-bundled replied message respectively.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Identifier of the reply message.
  ///
  /// [Message] is returned on completion.
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });

  /// Identifier of the chat the message belongs to
  final int chatId;

  /// Identifier of the reply message
  final int messageId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat the message belongs to
  /// * [message_id]: Identifier of the reply message
  GetRepliedMessage copyWith({
    int? chatId,
    int? messageId,
  }) =>
      GetRepliedMessage(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getRepliedMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
