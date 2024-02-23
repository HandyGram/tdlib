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
/// * [canBeEdited]: True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application.
/// * [canBeForwarded]: True, if the message can be forwarded.
/// * [canBeRepliedInAnotherChat]: True, if the message can be replied in another chat or topic.
/// * [canBeSaved]: True, if content of the message can be saved locally or copied.
/// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it.
/// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users.
/// * [canGetAddedReactions]: True, if the list of added reactions is available through getMessageAddedReactions.
/// * [canGetStatistics]: True, if the message statistics are available through getMessageStatistics.
/// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
/// * [canGetReadDate]: True, if read date of the message can be received through getMessageReadDate.
/// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
/// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink.
/// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
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
/// * [replyTo]: Information about the message or the story this message is replying to; may be null if none *(optional)*.
/// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
/// * [savedMessagesTopicId]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages.
/// * [selfDestructType]: The message's self-destruct type; may be null if none *(optional)*.
/// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet.
/// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never.
/// * [viaBotUserId]: If non-zero, the user identifier of the bot through which this message was sent.
/// * [senderBoostCount]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead.
/// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
/// * [mediaAlbumId]: Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums.
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
  /// * [canBeEdited]: True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application.
  /// * [canBeForwarded]: True, if the message can be forwarded.
  /// * [canBeRepliedInAnotherChat]: True, if the message can be replied in another chat or topic.
  /// * [canBeSaved]: True, if content of the message can be saved locally or copied.
  /// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it.
  /// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users.
  /// * [canGetAddedReactions]: True, if the list of added reactions is available through getMessageAddedReactions.
  /// * [canGetStatistics]: True, if the message statistics are available through getMessageStatistics.
  /// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
  /// * [canGetReadDate]: True, if read date of the message can be received through getMessageReadDate.
  /// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
  /// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink.
  /// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
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
  /// * [replyTo]: Information about the message or the story this message is replying to; may be null if none *(optional)*.
  /// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
  /// * [savedMessagesTopicId]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages.
  /// * [selfDestructType]: The message's self-destruct type; may be null if none *(optional)*.
  /// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet.
  /// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never.
  /// * [viaBotUserId]: If non-zero, the user identifier of the bot through which this message was sent.
  /// * [senderBoostCount]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead.
  /// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
  /// * [mediaAlbumId]: Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums.
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
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeRepliedInAnotherChat,
    required this.canBeSaved,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canGetAddedReactions,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.canGetReadDate,
    required this.canGetViewers,
    required this.canGetMediaTimestampLinks,
    required this.canReportReactions,
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
    this.replyTo,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
    this.selfDestructType,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.senderBoostCount,
    required this.authorSignature,
    required this.mediaAlbumId,
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

  /// True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  final bool canBeEdited;

  /// True, if the message can be forwarded
  final bool canBeForwarded;

  /// True, if the message can be replied in another chat or topic
  final bool canBeRepliedInAnotherChat;

  /// True, if content of the message can be saved locally or copied
  final bool canBeSaved;

  /// True, if the message can be deleted only for the current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;

  /// True, if the message can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// True, if the list of added reactions is available through getMessageAddedReactions
  final bool canGetAddedReactions;

  /// True, if the message statistics are available through getMessageStatistics
  final bool canGetStatistics;

  /// True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// True, if read date of the message can be received through getMessageReadDate
  final bool canGetReadDate;

  /// True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
  final bool canGetMediaTimestampLinks;

  /// True, if reactions on the message can be reported through reportMessageReactions
  final bool canReportReactions;

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

  /// If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;

  /// Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
  final int senderBoostCount;

  /// For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

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
    sendingState: json['sending_state'] == null ? null : MessageSendingState.fromJson(json['sending_state']),
    schedulingState: json['scheduling_state'] == null ? null : MessageSchedulingState.fromJson(json['scheduling_state']),
    isOutgoing: json['is_outgoing'],
    isPinned: json['is_pinned'],
    canBeEdited: json['can_be_edited'],
    canBeForwarded: json['can_be_forwarded'],
    canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'],
    canBeSaved: json['can_be_saved'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canGetAddedReactions: json['can_get_added_reactions'],
    canGetStatistics: json['can_get_statistics'],
    canGetMessageThread: json['can_get_message_thread'],
    canGetReadDate: json['can_get_read_date'],
    canGetViewers: json['can_get_viewers'],
    canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
    canReportReactions: json['can_report_reactions'],
    hasTimestampedMedia: json['has_timestamped_media'],
    isChannelPost: json['is_channel_post'],
    isTopicMessage: json['is_topic_message'],
    containsUnreadMention: json['contains_unread_mention'],
    date: json['date'],
    editDate: json['edit_date'],
    forwardInfo: json['forward_info'] == null ? null : MessageForwardInfo.fromJson(json['forward_info']),
    importInfo: json['import_info'] == null ? null : MessageImportInfo.fromJson(json['import_info']),
    interactionInfo: json['interaction_info'] == null ? null : MessageInteractionInfo.fromJson(json['interaction_info']),
    unreadReactions: List<UnreadReaction>.from((json['unread_reactions'] ?? []).map((item) => UnreadReaction.fromJson(item)).toList()),
    replyTo: json['reply_to'] == null ? null : MessageReplyTo.fromJson(json['reply_to']),
    messageThreadId: json['message_thread_id'],
    savedMessagesTopicId: json['saved_messages_topic_id'],
    selfDestructType: json['self_destruct_type'] == null ? null : MessageSelfDestructType.fromJson(json['self_destruct_type']),
    selfDestructIn: json['self_destruct_in'],
    autoDeleteIn: json['auto_delete_in'],
    viaBotUserId: json['via_bot_user_id'],
    senderBoostCount: json['sender_boost_count'] ?? 0,
    authorSignature: json['author_signature'],
    mediaAlbumId: int.parse(json['media_album_id']),
    restrictionReason: json['restriction_reason'],
    content: MessageContent.fromJson(json['content']),
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_id": senderId.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_replied_in_another_chat": canBeRepliedInAnotherChat,
      "can_be_saved": canBeSaved,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_get_added_reactions": canGetAddedReactions,
      "can_get_statistics": canGetStatistics,
      "can_get_message_thread": canGetMessageThread,
      "can_get_read_date": canGetReadDate,
      "can_get_viewers": canGetViewers,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "can_report_reactions": canReportReactions,
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
      "reply_to": replyTo?.toJson(),
      "message_thread_id": messageThreadId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "self_destruct_type": selfDestructType?.toJson(),
      "self_destruct_in": selfDestructIn,
      "auto_delete_in": autoDeleteIn,
      "via_bot_user_id": viaBotUserId,
      "sender_boost_count": senderBoostCount,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
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
  /// * [can_be_edited]: True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  /// * [can_be_forwarded]: True, if the message can be forwarded
  /// * [can_be_replied_in_another_chat]: True, if the message can be replied in another chat or topic
  /// * [can_be_saved]: True, if content of the message can be saved locally or copied
  /// * [can_be_deleted_only_for_self]: True, if the message can be deleted only for the current user while other users will continue to see it
  /// * [can_be_deleted_for_all_users]: True, if the message can be deleted for all users
  /// * [can_get_added_reactions]: True, if the list of added reactions is available through getMessageAddedReactions
  /// * [can_get_statistics]: True, if the message statistics are available through getMessageStatistics
  /// * [can_get_message_thread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  /// * [can_get_read_date]: True, if read date of the message can be received through getMessageReadDate
  /// * [can_get_viewers]: True, if chat members already viewed the message can be received through getMessageViewers
  /// * [can_get_media_timestamp_links]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
  /// * [can_report_reactions]: True, if reactions on the message can be reported through reportMessageReactions
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
  /// * [reply_to]: Information about the message or the story this message is replying to; may be null if none
  /// * [message_thread_id]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  /// * [saved_messages_topic_id]: Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages
  /// * [self_destruct_type]: The message's self-destruct type; may be null if none
  /// * [self_destruct_in]: Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet
  /// * [auto_delete_in]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never
  /// * [via_bot_user_id]: If non-zero, the user identifier of the bot through which this message was sent
  /// * [sender_boost_count]: Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
  /// * [author_signature]: For channel posts and anonymous group messages, optional author signature
  /// * [media_album_id]: Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
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
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBeRepliedInAnotherChat,
    bool? canBeSaved,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canGetAddedReactions,
    bool? canGetStatistics,
    bool? canGetMessageThread,
    bool? canGetReadDate,
    bool? canGetViewers,
    bool? canGetMediaTimestampLinks,
    bool? canReportReactions,
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
    MessageReplyTo? replyTo,
    int? messageThreadId,
    int? savedMessagesTopicId,
    MessageSelfDestructType? selfDestructType,
    double? selfDestructIn,
    double? autoDeleteIn,
    int? viaBotUserId,
    int? senderBoostCount,
    String? authorSignature,
    int? mediaAlbumId,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => Message(
    id: id ?? this.id,
    senderId: senderId ?? this.senderId,
    chatId: chatId ?? this.chatId,
    sendingState: sendingState ?? this.sendingState,
    schedulingState: schedulingState ?? this.schedulingState,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isPinned: isPinned ?? this.isPinned,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBeRepliedInAnotherChat: canBeRepliedInAnotherChat ?? this.canBeRepliedInAnotherChat,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canGetAddedReactions: canGetAddedReactions ?? this.canGetAddedReactions,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
    canGetReadDate: canGetReadDate ?? this.canGetReadDate,
    canGetViewers: canGetViewers ?? this.canGetViewers,
    canGetMediaTimestampLinks: canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
    canReportReactions: canReportReactions ?? this.canReportReactions,
    hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
    isChannelPost: isChannelPost ?? this.isChannelPost,
    isTopicMessage: isTopicMessage ?? this.isTopicMessage,
    containsUnreadMention: containsUnreadMention ?? this.containsUnreadMention,
    date: date ?? this.date,
    editDate: editDate ?? this.editDate,
    forwardInfo: forwardInfo ?? this.forwardInfo,
    importInfo: importInfo ?? this.importInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    unreadReactions: unreadReactions ?? this.unreadReactions,
    replyTo: replyTo ?? this.replyTo,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    selfDestructType: selfDestructType ?? this.selfDestructType,
    selfDestructIn: selfDestructIn ?? this.selfDestructIn,
    autoDeleteIn: autoDeleteIn ?? this.autoDeleteIn,
    viaBotUserId: viaBotUserId ?? this.viaBotUserId,
    senderBoostCount: senderBoostCount ?? this.senderBoostCount,
    authorSignature: authorSignature ?? this.authorSignature,
    mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    content: content ?? this.content,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'message';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
