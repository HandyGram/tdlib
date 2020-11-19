part of '../tdapi.dart';

class MessageCopyOptions extends TdObject {
  /// Options to be used when a message content is copied without a link to the original message
  MessageCopyOptions({this.sendCopy, this.replaceCaption, this.newCaption});

  /// [sendCopy] True, if content of the message needs to be copied without a link to the original message. Always true if the message is forwarded to a secret chat
  bool sendCopy;

  /// [replaceCaption] True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false
  bool replaceCaption;

  /// [newCaption] New message caption. Ignored if replace_caption is false
  FormattedText newCaption;

  /// Parse from a json
  MessageCopyOptions.fromJson(Map<String, dynamic> json) {
    this.sendCopy = json['send_copy'];
    this.replaceCaption = json['replace_caption'];
    this.newCaption =
        FormattedText.fromJson(json['new_caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "send_copy": this.sendCopy,
      "replace_caption": this.replaceCaption,
      "new_caption": this.newCaption == null ? null : this.newCaption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageCopyOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
