part of '../tdapi.dart';

/// **EditMessageCaption** *(editMessageCaption)* - TDLib function
///
/// Edits the message content caption. Returns the edited message after the edit is completed on the server side.
///
/// * [chatId]: The chat the message belongs to.
/// * [messageId]: Identifier of the message.
/// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
/// * [caption]: New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption *(optional)*.
///
/// [Message] is returned on completion.
final class EditMessageCaption extends TdFunction {
  
  /// **EditMessageCaption** *(editMessageCaption)* - TDLib function
  ///
  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side.
  ///
  /// * [chatId]: The chat the message belongs to.
  /// * [messageId]: Identifier of the message.
  /// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
  /// * [caption]: New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption *(optional)*.
  ///
  /// [Message] is returned on completion.
  const EditMessageCaption({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.caption,
  });
  
  /// The chat the message belongs to
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
  final FormattedText? caption;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: The chat the message belongs to
  /// * [message_id]: Identifier of the message
  /// * [reply_markup]: The new message reply markup; pass null if none; for bots only
  /// * [caption]: New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
  EditMessageCaption copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
  }) => EditMessageCaption(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String objectType = 'editMessageCaption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
