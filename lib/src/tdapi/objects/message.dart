part of '../tdapi.dart';

/// **Message** *(message)* - basic class
///
/// Describes a message.
///
/// * [id]: Message identifier; unique for the chat to which the message belongs.
/// * [senderId]: Identifier of the sender of the message.
/// * [chatId]: Chat identifier.
/// * [sendingState]: The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent *(optional)*.
/// * [schedulingState]: The scheduling state of the message; may be null if the message isn't scheduled *(optional)*.
/// * [isOutgoing]: True, if the message is outgoing.
/// * [isPinned]: True, if the message is pinned.
/// * [isFromOffline]: True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message.
/// * [canBeSaved]: True, if content of the message can be saved locally or copied.
/// * [hasTimestampedMedia]: True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message.
/// * [isChannelPost]: True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts.
/// * [isTopicMessage]: True, if the message is a forum topic message.
/// * [containsUnreadMention]: True, if the message contains an unread mention for the current user.
/// * [date]: Point in time (Unix timestamp) when the message was sent.
/// * [editDate]: Point in time (Unix timestamp) when the message was last edited.
/// * [forwardInfo]: Information about the initial message sender; may be null if none or unknown *(optional)*.
/// * [importInfo]: Information about the initial message for messages created with importMessages; may be null if the message isn't imported *(optional)*.
/// * [interactionInfo]: Information about interactions with the message; may be null if none *(optional)*.
/// * [unreadReactions]: Information about unread reactions added to the message.
/// * [factCheck]: Information about fact-check added to the message; may be null if none *(optional)*.
/// * [replyTo]: Information about the message or the story this message is replying to; may be null if none *(optional)*.
/// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
/// * [savedMessagesTopicId]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages.
/// * [selfDestructType]: The message's self-destruct type; may be null if none *(optional)*.
/// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet.
/// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never.
/// * [viaBotUserId]: If non-zero, the user identifier of the inline bot through which this message was sent.
/// * [senderBusinessBotUserId]: If non-zero, the user identifier of the business bot that sent this message.
/// * [senderBoostCount]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead.
/// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
/// * [mediaAlbumId]: Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums.
/// * [effectId]: Unique identifier of the effect added to the message; 0 if none.
/// * [hasSensitiveContent]: True, if media content of the message must be hidden with 18+ spoiler.
/// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this message must be restricted.
/// * [content]: Content of the message.
/// * [replyMarkup]: Reply markup for the message; may be null if none *(optional)*.
final class Message extends TdObject {
  /// **Message** *(message)* - basic class
  ///
  /// Describes a message.
  ///
  /// * [id]: Message identifier; unique for the chat to which the message belongs.
  /// * [senderId]: Identifier of the sender of the message.
  /// * [chatId]: Chat identifier.
  /// * [sendingState]: The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent *(optional)*.
  /// * [schedulingState]: The scheduling state of the message; may be null if the message isn't scheduled *(optional)*.
  /// * [isOutgoing]: True, if the message is outgoing.
  /// * [isPinned]: True, if the message is pinned.
  /// * [isFromOffline]: True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message.
  /// * [canBeSaved]: True, if content of the message can be saved locally or copied.
  /// * [hasTimestampedMedia]: True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message.
  /// * [isChannelPost]: True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts.
  /// * [isTopicMessage]: True, if the message is a forum topic message.
  /// * [containsUnreadMention]: True, if the message contains an unread mention for the current user.
  /// * [date]: Point in time (Unix timestamp) when the message was sent.
  /// * [editDate]: Point in time (Unix timestamp) when the message was last edited.
  /// * [forwardInfo]: Information about the initial message sender; may be null if none or unknown *(optional)*.
  /// * [importInfo]: Information about the initial message for messages created with importMessages; may be null if the message isn't imported *(optional)*.
  /// * [interactionInfo]: Information about interactions with the message; may be null if none *(optional)*.
  /// * [unreadReactions]: Information about unread reactions added to the message.
  /// * [factCheck]: Information about fact-check added to the message; may be null if none *(optional)*.
  /// * [replyTo]: Information about the message or the story this message is replying to; may be null if none *(optional)*.
  /// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
  /// * [savedMessagesTopicId]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages.
  /// * [selfDestructType]: The message's self-destruct type; may be null if none *(optional)*.
  /// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet.
  /// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never.
  /// * [viaBotUserId]: If non-zero, the user identifier of the inline bot through which this message was sent.
  /// * [senderBusinessBotUserId]: If non-zero, the user identifier of the business bot that sent this message.
  /// * [senderBoostCount]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead.
  /// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
  /// * [mediaAlbumId]: Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums.
  /// * [effectId]: Unique identifier of the effect added to the message; 0 if none.
  /// * [hasSensitiveContent]: True, if media content of the message must be hidden with 18+ spoiler.
  /// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this message must be restricted.
  /// * [content]: Content of the message.
  /// * [replyMarkup]: Reply markup for the message; may be null if none *(optional)*.
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.isFromOffline,
    required this.canBeSaved,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.importInfo,
    this.interactionInfo,
    required this.unreadReactions,
    this.factCheck,
    this.replyTo,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
    this.selfDestructType,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.senderBusinessBotUserId,
    required this.senderBoostCount,
    required this.authorSignature,
    required this.mediaAlbumId,
    required this.effectId,
    required this.hasSensitiveContent,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });

  /// Message identifier; unique for the chat to which the message belongs
  final int id;

  /// Identifier of the sender of the message
  final MessageSender senderId;

  /// Chat identifier
  final int chatId;

  /// The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// The scheduling state of the message; may be null if the message isn't scheduled
  final MessageSchedulingState? schedulingState;

  /// True, if the message is outgoing
  final bool isOutgoing;

  /// True, if the message is pinned
  final bool isPinned;

  /// True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message
  final bool isFromOffline;

  /// True, if content of the message can be saved locally or copied
  final bool canBeSaved;

  /// True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// True, if the message is a forum topic message
  final bool isTopicMessage;

  /// True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// Point in time (Unix timestamp) when the message was sent
  final int date;

  /// Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// Information about the initial message sender; may be null if none or unknown
  final MessageForwardInfo? forwardInfo;

  /// Information about the initial message for messages created with importMessages; may be null if the message isn't imported
  final MessageImportInfo? importInfo;

  /// Information about interactions with the message; may be null if none
  final MessageInteractionInfo? interactionInfo;

  /// Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// Information about fact-check added to the message; may be null if none
  final FactCheck? factCheck;

  /// Information about the message or the story this message is replying to; may be null if none
  final MessageReplyTo? replyTo;

  /// If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages
  final int savedMessagesTopicId;

  /// The message's self-destruct type; may be null if none
  final MessageSelfDestructType? selfDestructType;

  /// Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet
  final double selfDestructIn;

  /// Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never
  final double autoDeleteIn;

  /// If non-zero, the user identifier of the inline bot through which this message was sent
  final int viaBotUserId;

  /// If non-zero, the user identifier of the business bot that sent this message
  final int senderBusinessBotUserId;

  /// Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
  final int senderBoostCount;

  /// For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// Unique identifier of the effect added to the message; 0 if none
  final int effectId;

  /// True, if media content of the message must be hidden with 18+ spoiler
  final bool hasSensitiveContent;

  /// If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;

  /// Content of the message
  final MessageContent content;

  /// Reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json['id'],
        senderId: MessageSender.fromJson(json['sender_id']),
        chatId: json['chat_id'],
        sendingState: json['sending_state'] == null
            ? null
            : MessageSendingState.fromJson(json['sending_state']),
        schedulingState: json['scheduling_state'] == null
            ? null
            : MessageSchedulingState.fromJson(json['scheduling_state']),
        isOutgoing: json['is_outgoing'],
        isPinned: json['is_pinned'],
        isFromOffline: json['is_from_offline'],
        canBeSaved: json['can_be_saved'],
        hasTimestampedMedia: json['has_timestamped_media'],
        isChannelPost: json['is_channel_post'],
        isTopicMessage: json['is_topic_message'],
        containsUnreadMention: json['contains_unread_mention'],
        date: json['date'],
        editDate: json['edit_date'],
        forwardInfo: json['forward_info'] == null
            ? null
            : MessageForwardInfo.fromJson(json['forward_info']),
        importInfo: json['import_info'] == null
            ? null
            : MessageImportInfo.fromJson(json['import_info']),
        interactionInfo: json['interaction_info'] == null
            ? null
            : MessageInteractionInfo.fromJson(json['interaction_info']),
        unreadReactions: List<UnreadReaction>.from(
            (json['unread_reactions'] ?? [])
                .map((item) => UnreadReaction.fromJson(item))
                .toList()),
        factCheck: json['fact_check'] == null
            ? null
            : FactCheck.fromJson(json['fact_check']),
        replyTo: json['reply_to'] == null
            ? null
            : MessageReplyTo.fromJson(json['reply_to']),
        messageThreadId: json['message_thread_id'],
        savedMessagesTopicId: json['saved_messages_topic_id'],
        selfDestructType: json['self_destruct_type'] == null
            ? null
            : MessageSelfDestructType.fromJson(json['self_destruct_type']),
        selfDestructIn: json['self_destruct_in'],
        autoDeleteIn: json['auto_delete_in'],
        viaBotUserId: json['via_bot_user_id'],
        senderBusinessBotUserId: json['sender_business_bot_user_id'],
        senderBoostCount: json['sender_boost_count'] ?? 0,
        authorSignature: json['author_signature'],
        mediaAlbumId: json['media_album_id'] is int
            ? json['media_album_id']
            : int.tryParse(json['media_album_id'] ?? "") ?? 0,
        effectId: json['effect_id'] is int
            ? json['effect_id']
            : int.tryParse(json['effect_id'] ?? "") ?? 0,
        hasSensitiveContent: json['has_sensitive_content'],
        restrictionReason: json['restriction_reason'],
        content: MessageContent.fromJson(json['content']),
        replyMarkup: json['reply_markup'] == null
            ? null
            : ReplyMarkup.fromJson(json['reply_markup']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_id": senderId.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "is_from_offline": isFromOffline,
      "can_be_saved": canBeSaved,
      "has_timestamped_media": hasTimestampedMedia,
      "is_channel_post": isChannelPost,
      "is_topic_message": isTopicMessage,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "import_info": importInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "unread_reactions": unreadReactions.map((i) => i.toJson()).toList(),
      "fact_check": factCheck?.toJson(),
      "reply_to": replyTo?.toJson(),
      "message_thread_id": messageThreadId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "self_destruct_type": selfDestructType?.toJson(),
      "self_destruct_in": selfDestructIn,
      "auto_delete_in": autoDeleteIn,
      "via_bot_user_id": viaBotUserId,
      "sender_business_bot_user_id": senderBusinessBotUserId,
      "sender_boost_count": senderBoostCount,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
      "effect_id": effectId,
      "has_sensitive_content": hasSensitiveContent,
      "restriction_reason": restrictionReason,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Message identifier; unique for the chat to which the message belongs
  /// * [sender_id]: Identifier of the sender of the message
  /// * [chat_id]: Chat identifier
  /// * [sending_state]: The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
  /// * [scheduling_state]: The scheduling state of the message; may be null if the message isn't scheduled
  /// * [is_outgoing]: True, if the message is outgoing
  /// * [is_pinned]: True, if the message is pinned
  /// * [is_from_offline]: True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message
  /// * [can_be_saved]: True, if content of the message can be saved locally or copied
  /// * [has_timestamped_media]: True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  /// * [is_channel_post]: True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  /// * [is_topic_message]: True, if the message is a forum topic message
  /// * [contains_unread_mention]: True, if the message contains an unread mention for the current user
  /// * [date]: Point in time (Unix timestamp) when the message was sent
  /// * [edit_date]: Point in time (Unix timestamp) when the message was last edited
  /// * [forward_info]: Information about the initial message sender; may be null if none or unknown
  /// * [import_info]: Information about the initial message for messages created with importMessages; may be null if the message isn't imported
  /// * [interaction_info]: Information about interactions with the message; may be null if none
  /// * [unread_reactions]: Information about unread reactions added to the message
  /// * [fact_check]: Information about fact-check added to the message; may be null if none
  /// * [reply_to]: Information about the message or the story this message is replying to; may be null if none
  /// * [message_thread_id]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  /// * [saved_messages_topic_id]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages
  /// * [self_destruct_type]: The message's self-destruct type; may be null if none
  /// * [self_destruct_in]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet
  /// * [auto_delete_in]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never
  /// * [via_bot_user_id]: If non-zero, the user identifier of the inline bot through which this message was sent
  /// * [sender_business_bot_user_id]: If non-zero, the user identifier of the business bot that sent this message
  /// * [sender_boost_count]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
  /// * [author_signature]: For channel posts and anonymous group messages, optional author signature
  /// * [media_album_id]: Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
  /// * [effect_id]: Unique identifier of the effect added to the message; 0 if none
  /// * [has_sensitive_content]: True, if media content of the message must be hidden with 18+ spoiler
  /// * [restriction_reason]: If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  /// * [content]: Content of the message
  /// * [reply_markup]: Reply markup for the message; may be null if none
  Message copyWith({
    int? id,
    MessageSender? senderId,
    int? chatId,
    MessageSendingState? sendingState,
    MessageSchedulingState? schedulingState,
    bool? isOutgoing,
    bool? isPinned,
    bool? isFromOffline,
    bool? canBeSaved,
    bool? hasTimestampedMedia,
    bool? isChannelPost,
    bool? isTopicMessage,
    bool? containsUnreadMention,
    int? date,
    int? editDate,
    MessageForwardInfo? forwardInfo,
    MessageImportInfo? importInfo,
    MessageInteractionInfo? interactionInfo,
    List<UnreadReaction>? unreadReactions,
    FactCheck? factCheck,
    MessageReplyTo? replyTo,
    int? messageThreadId,
    int? savedMessagesTopicId,
    MessageSelfDestructType? selfDestructType,
    double? selfDestructIn,
    double? autoDeleteIn,
    int? viaBotUserId,
    int? senderBusinessBotUserId,
    int? senderBoostCount,
    String? authorSignature,
    int? mediaAlbumId,
    int? effectId,
    bool? hasSensitiveContent,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) =>
      Message(
        id: id ?? this.id,
        senderId: senderId ?? this.senderId,
        chatId: chatId ?? this.chatId,
        sendingState: sendingState ?? this.sendingState,
        schedulingState: schedulingState ?? this.schedulingState,
        isOutgoing: isOutgoing ?? this.isOutgoing,
        isPinned: isPinned ?? this.isPinned,
        isFromOffline: isFromOffline ?? this.isFromOffline,
        canBeSaved: canBeSaved ?? this.canBeSaved,
        hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
        isChannelPost: isChannelPost ?? this.isChannelPost,
        isTopicMessage: isTopicMessage ?? this.isTopicMessage,
        containsUnreadMention:
            containsUnreadMention ?? this.containsUnreadMention,
        date: date ?? this.date,
        editDate: editDate ?? this.editDate,
        forwardInfo: forwardInfo ?? this.forwardInfo,
        importInfo: importInfo ?? this.importInfo,
        interactionInfo: interactionInfo ?? this.interactionInfo,
        unreadReactions: unreadReactions ?? this.unreadReactions,
        factCheck: factCheck ?? this.factCheck,
        replyTo: replyTo ?? this.replyTo,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
        selfDestructType: selfDestructType ?? this.selfDestructType,
        selfDestructIn: selfDestructIn ?? this.selfDestructIn,
        autoDeleteIn: autoDeleteIn ?? this.autoDeleteIn,
        viaBotUserId: viaBotUserId ?? this.viaBotUserId,
        senderBusinessBotUserId:
            senderBusinessBotUserId ?? this.senderBusinessBotUserId,
        senderBoostCount: senderBoostCount ?? this.senderBoostCount,
        authorSignature: authorSignature ?? this.authorSignature,
        mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
        effectId: effectId ?? this.effectId,
        hasSensitiveContent: hasSensitiveContent ?? this.hasSensitiveContent,
        restrictionReason: restrictionReason ?? this.restrictionReason,
        content: content ?? this.content,
        replyMarkup: replyMarkup ?? this.replyMarkup,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'message';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
