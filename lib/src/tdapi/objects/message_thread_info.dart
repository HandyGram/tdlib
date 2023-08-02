part of '../tdapi.dart';

/// **MessageThreadInfo** *(messageThreadInfo)* - basic class
///
/// Contains information about a message thread.
///
/// * [chatId]: Identifier of the chat to which the message thread belongs.
/// * [messageThreadId]: Message thread identifier, unique within the chat.
/// * [replyInfo]: Information about the message thread; may be null for forum topic threads *(optional)*.
/// * [unreadMessageCount]: Approximate number of unread messages in the message thread.
/// * [messages]: The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
/// * [draftMessage]: A draft of a message in the message thread; may be null *(optional)*.
final class MessageThreadInfo extends TdObject {
  
  /// **MessageThreadInfo** *(messageThreadInfo)* - basic class
  ///
  /// Contains information about a message thread.
  ///
  /// * [chatId]: Identifier of the chat to which the message thread belongs.
  /// * [messageThreadId]: Message thread identifier, unique within the chat.
  /// * [replyInfo]: Information about the message thread; may be null for forum topic threads *(optional)*.
  /// * [unreadMessageCount]: Approximate number of unread messages in the message thread.
  /// * [messages]: The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  /// * [draftMessage]: A draft of a message in the message thread; may be null *(optional)*.
  const MessageThreadInfo({
    required this.chatId,
    required this.messageThreadId,
    this.replyInfo,
    required this.unreadMessageCount,
    required this.messages,
    this.draftMessage,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the chat to which the message thread belongs
  final int chatId;

  /// Message thread identifier, unique within the chat
  final int messageThreadId;

  /// Information about the message thread; may be null for forum topic threads
  final MessageReplyInfo? replyInfo;

  /// Approximate number of unread messages in the message thread
  final int unreadMessageCount;

  /// The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  final List<Message> messages;

  /// A draft of a message in the message thread; may be null
  final DraftMessage? draftMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageThreadInfo.fromJson(Map<String, dynamic> json) => MessageThreadInfo(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    replyInfo: json['reply_info'] == null ? null : MessageReplyInfo.fromJson(json['reply_info']),
    unreadMessageCount: json['unread_message_count'],
    messages: List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item)).toList()),
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_info": replyInfo?.toJson(),
      "unread_message_count": unreadMessageCount,
      "messages": messages.map((i) => i.toJson()).toList(),
      "draft_message": draftMessage?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to which the message thread belongs
  /// * [message_thread_id]: Message thread identifier, unique within the chat
  /// * [reply_info]: Information about the message thread; may be null for forum topic threads
  /// * [unread_message_count]: Approximate number of unread messages in the message thread
  /// * [messages]: The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  /// * [draft_message]: A draft of a message in the message thread; may be null
  MessageThreadInfo copyWith({
    int? chatId,
    int? messageThreadId,
    MessageReplyInfo? replyInfo,
    int? unreadMessageCount,
    List<Message>? messages,
    DraftMessage? draftMessage,
    dynamic extra,
    int? clientId,
  }) => MessageThreadInfo(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyInfo: replyInfo ?? this.replyInfo,
    unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    messages: messages ?? this.messages,
    draftMessage: draftMessage ?? this.draftMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageThreadInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
