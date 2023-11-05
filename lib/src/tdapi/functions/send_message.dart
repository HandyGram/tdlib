part of '../tdapi.dart';

/// **SendMessage** *(sendMessage)* - TDLib function
///
/// Sends a message. Returns the sent message.
///
/// * [chatId]: Target chat.
/// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
/// * [replyTo]: Identifier of the replied message or story; pass null if none *(optional)*.
/// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
/// * [replyMarkup]: Markup for replying to the message; pass null if none; for bots only *(optional)*.
/// * [inputMessageContent]: The content of the message to be sent.
///
/// [Message] is returned on completion.
final class SendMessage extends TdFunction {
  
  /// **SendMessage** *(sendMessage)* - TDLib function
  ///
  /// Sends a message. Returns the sent message.
  ///
  /// * [chatId]: Target chat.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
  /// * [replyTo]: Identifier of the replied message or story; pass null if none *(optional)*.
  /// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
  /// * [replyMarkup]: Markup for replying to the message; pass null if none; for bots only *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent.
  ///
  /// [Message] is returned on completion.
  const SendMessage({
    required this.chatId,
    required this.messageThreadId,
    this.replyTo,
    this.options,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Target chat
  final int chatId;

  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// Identifier of the replied message or story; pass null if none
  final MessageReplyTo? replyTo;

  /// Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// Markup for replying to the message; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent
  final InputMessageContent inputMessageContent;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
      "options": options?.toJson(),
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Target chat
  /// * [message_thread_id]: If not 0, a message thread identifier in which the message will be sent
  /// * [reply_to]: Identifier of the replied message or story; pass null if none
  /// * [options]: Options to be used to send the message; pass null to use default options
  /// * [reply_markup]: Markup for replying to the message; pass null if none; for bots only
  /// * [input_message_content]: The content of the message to be sent
  SendMessage copyWith({
    int? chatId,
    int? messageThreadId,
    MessageReplyTo? replyTo,
    MessageSendOptions? options,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => SendMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyTo: replyTo ?? this.replyTo,
    options: options ?? this.options,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  /// TDLib object type
  static const String objectType = 'sendMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
