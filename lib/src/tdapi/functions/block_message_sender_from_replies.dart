part of '../tdapi.dart';

class BlockMessageSenderFromReplies extends TdFunction {
  /// Blocks an original sender of a message in the Replies chat
  BlockMessageSenderFromReplies(
      {this.messageId,
      this.deleteMessage,
      this.deleteAllMessages,
      this.reportSpam});

  /// [messageId] The identifier of an incoming message in the Replies chat
  int messageId;

  /// [deleteMessage] Pass true if the message must be deleted
  bool deleteMessage;

  /// [deleteAllMessages] Pass true if all messages from the same sender must be deleted
  bool deleteAllMessages;

  /// [reportSpam] Pass true if the sender must be reported to the Telegram moderators
  bool reportSpam;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  BlockMessageSenderFromReplies.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
      "delete_message": this.deleteMessage,
      "delete_all_messages": this.deleteAllMessages,
      "report_spam": this.reportSpam,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'blockMessageSenderFromReplies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
