part of '../tdapi.dart';

/// **EditInlineMessageCaption** *(editInlineMessageCaption)* - TDLib function
///
/// Edits the caption of an inline message sent via a bot; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
/// * [caption]: New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters *(optional)*.
///
/// [Ok] is returned on completion.
final class EditInlineMessageCaption extends TdFunction {
  /// **EditInlineMessageCaption** *(editInlineMessageCaption)* - TDLib function
  ///
  /// Edits the caption of an inline message sent via a bot; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
  /// * [caption]: New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const EditInlineMessageCaption({
    required this.inlineMessageId,
    this.replyMarkup,
    this.caption,
  });

  /// Inline message identifier
  final String inlineMessageId;

  /// The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [inline_message_id]: Inline message identifier
  /// * [reply_markup]: The new message reply markup; pass null if none
  /// * [caption]: New message content caption; pass null to remove caption; 0-getOption("message_caption_length_max") characters
  EditInlineMessageCaption copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
  }) =>
      EditInlineMessageCaption(
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        replyMarkup: replyMarkup ?? this.replyMarkup,
        caption: caption ?? this.caption,
      );

  /// TDLib object type
  static const String defaultObjectId = 'editInlineMessageCaption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
