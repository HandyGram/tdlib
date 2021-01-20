part of '../tdapi.dart';

class MessageReplyInfo extends TdObject {
  /// Contains information about replies to a message
  MessageReplyInfo(
      {this.replyCount,
      this.recentRepliers,
      this.lastReadInboxMessageId,
      this.lastReadOutboxMessageId,
      this.lastMessageId});

  /// [replyCount] Number of times the message was directly or indirectly replied
  int replyCount;

  /// [recentRepliers] Recent repliers to the message; available in channels with a discussion supergroup
  List<MessageSender> recentRepliers;

  /// [lastReadInboxMessageId] Identifier of the last read incoming reply to the message
  int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing reply to the message
  int lastReadOutboxMessageId;

  /// [lastMessageId] Identifier of the last reply to the message
  int lastMessageId;

  /// Parse from a json
  MessageReplyInfo.fromJson(Map<String, dynamic> json) {
    this.replyCount = json['reply_count'];
    this.recentRepliers = List<MessageSender>.from(
        (json['recent_repliers'] ?? [])
            .map((item) => MessageSender.fromJson(item ?? <String, dynamic>{}))
            .toList());
    this.lastReadInboxMessageId = json['last_read_inbox_message_id'];
    this.lastReadOutboxMessageId = json['last_read_outbox_message_id'];
    this.lastMessageId = json['last_message_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_count": this.replyCount,
      "recent_repliers": this.recentRepliers.map((i) => i.toJson()).toList(),
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
      "last_message_id": this.lastMessageId,
    };
  }

  static const CONSTRUCTOR = 'messageReplyInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
