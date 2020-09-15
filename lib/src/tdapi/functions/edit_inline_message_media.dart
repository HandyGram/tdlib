part of '../tdapi.dart';

class EditInlineMessageMedia extends TdFunction {
  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;
  dynamic extra;

  /// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only. 
  /// [inlineMessageId] Inline message identifier. 
  /// [replyMarkup] The new message reply markup; for bots only. 
  /// [inputMessageContent] New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo
  EditInlineMessageMedia({this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  EditInlineMessageMedia.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null ? null : this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageMedia';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}