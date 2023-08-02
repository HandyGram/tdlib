part of '../tdapi.dart';

/// **ChatEventAction** *(chatEventAction)* - parent
///
/// Represents a chat event.
sealed class ChatEventAction extends TdObject {
  
  /// **ChatEventAction** *(chatEventAction)* - parent
  ///
  /// Represents a chat event.
  const ChatEventAction();
  
  /// a ChatEventAction return type can be :
  /// * [ChatEventMessageEdited]
  /// * [ChatEventMessageDeleted]
  /// * [ChatEventMessagePinned]
  /// * [ChatEventMessageUnpinned]
  /// * [ChatEventPollStopped]
  /// * [ChatEventMemberJoined]
  /// * [ChatEventMemberJoinedByInviteLink]
  /// * [ChatEventMemberJoinedByRequest]
  /// * [ChatEventMemberInvited]
  /// * [ChatEventMemberLeft]
  /// * [ChatEventMemberPromoted]
  /// * [ChatEventMemberRestricted]
  /// * [ChatEventAvailableReactionsChanged]
  /// * [ChatEventDescriptionChanged]
  /// * [ChatEventLinkedChatChanged]
  /// * [ChatEventLocationChanged]
  /// * [ChatEventMessageAutoDeleteTimeChanged]
  /// * [ChatEventPermissionsChanged]
  /// * [ChatEventPhotoChanged]
  /// * [ChatEventSlowModeDelayChanged]
  /// * [ChatEventStickerSetChanged]
  /// * [ChatEventTitleChanged]
  /// * [ChatEventUsernameChanged]
  /// * [ChatEventActiveUsernamesChanged]
  /// * [ChatEventHasProtectedContentToggled]
  /// * [ChatEventInvitesToggled]
  /// * [ChatEventIsAllHistoryAvailableToggled]
  /// * [ChatEventHasAggressiveAntiSpamEnabledToggled]
  /// * [ChatEventSignMessagesToggled]
  /// * [ChatEventInviteLinkEdited]
  /// * [ChatEventInviteLinkRevoked]
  /// * [ChatEventInviteLinkDeleted]
  /// * [ChatEventVideoChatCreated]
  /// * [ChatEventVideoChatEnded]
  /// * [ChatEventVideoChatMuteNewParticipantsToggled]
  /// * [ChatEventVideoChatParticipantIsMutedToggled]
  /// * [ChatEventVideoChatParticipantVolumeLevelChanged]
  /// * [ChatEventIsForumToggled]
  /// * [ChatEventForumTopicCreated]
  /// * [ChatEventForumTopicEdited]
  /// * [ChatEventForumTopicToggleIsClosed]
  /// * [ChatEventForumTopicToggleIsHidden]
  /// * [ChatEventForumTopicDeleted]
  /// * [ChatEventForumTopicPinned]
  factory ChatEventAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatEventMessageEdited.objectType:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.objectType:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventMessagePinned.objectType:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.objectType:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventPollStopped.objectType:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMemberJoined.objectType:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.objectType:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberJoinedByRequest.objectType:
        return ChatEventMemberJoinedByRequest.fromJson(json);
      case ChatEventMemberInvited.objectType:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberLeft.objectType:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberPromoted.objectType:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.objectType:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventAvailableReactionsChanged.objectType:
        return ChatEventAvailableReactionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.objectType:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventLinkedChatChanged.objectType:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventLocationChanged.objectType:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventMessageAutoDeleteTimeChanged.objectType:
        return ChatEventMessageAutoDeleteTimeChanged.fromJson(json);
      case ChatEventPermissionsChanged.objectType:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventPhotoChanged.objectType:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.objectType:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventStickerSetChanged.objectType:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventTitleChanged.objectType:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventUsernameChanged.objectType:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventActiveUsernamesChanged.objectType:
        return ChatEventActiveUsernamesChanged.fromJson(json);
      case ChatEventHasProtectedContentToggled.objectType:
        return ChatEventHasProtectedContentToggled.fromJson(json);
      case ChatEventInvitesToggled.objectType:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.objectType:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventHasAggressiveAntiSpamEnabledToggled.objectType:
        return ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(json);
      case ChatEventSignMessagesToggled.objectType:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventInviteLinkEdited.objectType:
        return ChatEventInviteLinkEdited.fromJson(json);
      case ChatEventInviteLinkRevoked.objectType:
        return ChatEventInviteLinkRevoked.fromJson(json);
      case ChatEventInviteLinkDeleted.objectType:
        return ChatEventInviteLinkDeleted.fromJson(json);
      case ChatEventVideoChatCreated.objectType:
        return ChatEventVideoChatCreated.fromJson(json);
      case ChatEventVideoChatEnded.objectType:
        return ChatEventVideoChatEnded.fromJson(json);
      case ChatEventVideoChatMuteNewParticipantsToggled.objectType:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);
      case ChatEventVideoChatParticipantIsMutedToggled.objectType:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVideoChatParticipantVolumeLevelChanged.objectType:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);
      case ChatEventIsForumToggled.objectType:
        return ChatEventIsForumToggled.fromJson(json);
      case ChatEventForumTopicCreated.objectType:
        return ChatEventForumTopicCreated.fromJson(json);
      case ChatEventForumTopicEdited.objectType:
        return ChatEventForumTopicEdited.fromJson(json);
      case ChatEventForumTopicToggleIsClosed.objectType:
        return ChatEventForumTopicToggleIsClosed.fromJson(json);
      case ChatEventForumTopicToggleIsHidden.objectType:
        return ChatEventForumTopicToggleIsHidden.fromJson(json);
      case ChatEventForumTopicDeleted.objectType:
        return ChatEventForumTopicDeleted.fromJson(json);
      case ChatEventForumTopicPinned.objectType:
        return ChatEventForumTopicPinned.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatEventAction)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatEventAction copyWith();

  /// TDLib object type
  static const String objectType = 'chatEventAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMessageEdited** *(chatEventMessageEdited)* - child of ChatEventAction
///
/// A message was edited.
///
/// * [oldMessage]: The original message before the edit.
/// * [newMessage]: The message after it was edited.
final class ChatEventMessageEdited extends ChatEventAction {
  
  /// **ChatEventMessageEdited** *(chatEventMessageEdited)* - child of ChatEventAction
  ///
  /// A message was edited.
  ///
  /// * [oldMessage]: The original message before the edit.
  /// * [newMessage]: The message after it was edited.
  const ChatEventMessageEdited({
    required this.oldMessage,
    required this.newMessage,
  });
  
  /// The original message before the edit 
  final Message oldMessage;

  /// The message after it was edited
  final Message newMessage;
  
  /// Parse from a json
  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) => ChatEventMessageEdited(
    oldMessage: Message.fromJson(json['old_message']),
    newMessage: Message.fromJson(json['new_message']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_message": oldMessage.toJson(),
      "new_message": newMessage.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_message]: The original message before the edit 
  /// * [new_message]: The message after it was edited
  @override
  ChatEventMessageEdited copyWith({
    Message? oldMessage,
    Message? newMessage,
  }) => ChatEventMessageEdited(
    oldMessage: oldMessage ?? this.oldMessage,
    newMessage: newMessage ?? this.newMessage,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMessageEdited';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMessageDeleted** *(chatEventMessageDeleted)* - child of ChatEventAction
///
/// A message was deleted.
///
/// * [message]: Deleted message.
/// * [canReportAntiSpamFalsePositive]: True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive.
final class ChatEventMessageDeleted extends ChatEventAction {
  
  /// **ChatEventMessageDeleted** *(chatEventMessageDeleted)* - child of ChatEventAction
  ///
  /// A message was deleted.
  ///
  /// * [message]: Deleted message.
  /// * [canReportAntiSpamFalsePositive]: True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive.
  const ChatEventMessageDeleted({
    required this.message,
    required this.canReportAntiSpamFalsePositive,
  });
  
  /// Deleted message 
  final Message message;

  /// True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive
  final bool canReportAntiSpamFalsePositive;
  
  /// Parse from a json
  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) => ChatEventMessageDeleted(
    message: Message.fromJson(json['message']),
    canReportAntiSpamFalsePositive: json['can_report_anti_spam_false_positive'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
      "can_report_anti_spam_false_positive": canReportAntiSpamFalsePositive,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: Deleted message 
  /// * [can_report_anti_spam_false_positive]: True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive
  @override
  ChatEventMessageDeleted copyWith({
    Message? message,
    bool? canReportAntiSpamFalsePositive,
  }) => ChatEventMessageDeleted(
    message: message ?? this.message,
    canReportAntiSpamFalsePositive: canReportAntiSpamFalsePositive ?? this.canReportAntiSpamFalsePositive,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMessageDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMessagePinned** *(chatEventMessagePinned)* - child of ChatEventAction
///
/// A message was pinned.
///
/// * [message]: Pinned message.
final class ChatEventMessagePinned extends ChatEventAction {
  
  /// **ChatEventMessagePinned** *(chatEventMessagePinned)* - child of ChatEventAction
  ///
  /// A message was pinned.
  ///
  /// * [message]: Pinned message.
  const ChatEventMessagePinned({
    required this.message,
  });
  
  /// Pinned message
  final Message message;
  
  /// Parse from a json
  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) => ChatEventMessagePinned(
    message: Message.fromJson(json['message']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: Pinned message
  @override
  ChatEventMessagePinned copyWith({
    Message? message,
  }) => ChatEventMessagePinned(
    message: message ?? this.message,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMessagePinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMessageUnpinned** *(chatEventMessageUnpinned)* - child of ChatEventAction
///
/// A message was unpinned.
///
/// * [message]: Unpinned message.
final class ChatEventMessageUnpinned extends ChatEventAction {
  
  /// **ChatEventMessageUnpinned** *(chatEventMessageUnpinned)* - child of ChatEventAction
  ///
  /// A message was unpinned.
  ///
  /// * [message]: Unpinned message.
  const ChatEventMessageUnpinned({
    required this.message,
  });
  
  /// Unpinned message
  final Message message;
  
  /// Parse from a json
  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) => ChatEventMessageUnpinned(
    message: Message.fromJson(json['message']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: Unpinned message
  @override
  ChatEventMessageUnpinned copyWith({
    Message? message,
  }) => ChatEventMessageUnpinned(
    message: message ?? this.message,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMessageUnpinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventPollStopped** *(chatEventPollStopped)* - child of ChatEventAction
///
/// A poll in a message was stopped.
///
/// * [message]: The message with the poll.
final class ChatEventPollStopped extends ChatEventAction {
  
  /// **ChatEventPollStopped** *(chatEventPollStopped)* - child of ChatEventAction
  ///
  /// A poll in a message was stopped.
  ///
  /// * [message]: The message with the poll.
  const ChatEventPollStopped({
    required this.message,
  });
  
  /// The message with the poll
  final Message message;
  
  /// Parse from a json
  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) => ChatEventPollStopped(
    message: Message.fromJson(json['message']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: The message with the poll
  @override
  ChatEventPollStopped copyWith({
    Message? message,
  }) => ChatEventPollStopped(
    message: message ?? this.message,
  );

  /// TDLib object type
  static const String objectType = 'chatEventPollStopped';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberJoined** *(chatEventMemberJoined)* - child of ChatEventAction
///
/// A new member joined the chat.
final class ChatEventMemberJoined extends ChatEventAction {
  
  /// **ChatEventMemberJoined** *(chatEventMemberJoined)* - child of ChatEventAction
  ///
  /// A new member joined the chat.
  const ChatEventMemberJoined();
  
  /// Parse from a json
  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) => const ChatEventMemberJoined();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatEventMemberJoined copyWith() => const ChatEventMemberJoined();

  /// TDLib object type
  static const String objectType = 'chatEventMemberJoined';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberJoinedByInviteLink** *(chatEventMemberJoinedByInviteLink)* - child of ChatEventAction
///
/// A new member joined the chat via an invite link.
///
/// * [inviteLink]: Invite link used to join the chat.
/// * [viaChatFolderInviteLink]: True, if the user has joined the chat using an invite link for a chat folder.
final class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  
  /// **ChatEventMemberJoinedByInviteLink** *(chatEventMemberJoinedByInviteLink)* - child of ChatEventAction
  ///
  /// A new member joined the chat via an invite link.
  ///
  /// * [inviteLink]: Invite link used to join the chat.
  /// * [viaChatFolderInviteLink]: True, if the user has joined the chat using an invite link for a chat folder.
  const ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
    required this.viaChatFolderInviteLink,
  });
  
  /// Invite link used to join the chat 
  final ChatInviteLink inviteLink;

  /// True, if the user has joined the chat using an invite link for a chat folder
  final bool viaChatFolderInviteLink;
  
  /// Parse from a json
  factory ChatEventMemberJoinedByInviteLink.fromJson(Map<String, dynamic> json) => ChatEventMemberJoinedByInviteLink(
    inviteLink: ChatInviteLink.fromJson(json['invite_link']),
    viaChatFolderInviteLink: json['via_chat_folder_invite_link'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link": inviteLink.toJson(),
      "via_chat_folder_invite_link": viaChatFolderInviteLink,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [invite_link]: Invite link used to join the chat 
  /// * [via_chat_folder_invite_link]: True, if the user has joined the chat using an invite link for a chat folder
  @override
  ChatEventMemberJoinedByInviteLink copyWith({
    ChatInviteLink? inviteLink,
    bool? viaChatFolderInviteLink,
  }) => ChatEventMemberJoinedByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
    viaChatFolderInviteLink: viaChatFolderInviteLink ?? this.viaChatFolderInviteLink,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMemberJoinedByInviteLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberJoinedByRequest** *(chatEventMemberJoinedByRequest)* - child of ChatEventAction
///
/// A new member was accepted to the chat by an administrator.
///
/// * [approverUserId]: User identifier of the chat administrator, approved user join request.
/// * [inviteLink]: Invite link used to join the chat; may be null *(optional)*.
final class ChatEventMemberJoinedByRequest extends ChatEventAction {
  
  /// **ChatEventMemberJoinedByRequest** *(chatEventMemberJoinedByRequest)* - child of ChatEventAction
  ///
  /// A new member was accepted to the chat by an administrator.
  ///
  /// * [approverUserId]: User identifier of the chat administrator, approved user join request.
  /// * [inviteLink]: Invite link used to join the chat; may be null *(optional)*.
  const ChatEventMemberJoinedByRequest({
    required this.approverUserId,
    this.inviteLink,
  });
  
  /// User identifier of the chat administrator, approved user join request 
  final int approverUserId;

  /// Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;
  
  /// Parse from a json
  factory ChatEventMemberJoinedByRequest.fromJson(Map<String, dynamic> json) => ChatEventMemberJoinedByRequest(
    approverUserId: json['approver_user_id'],
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "approver_user_id": approverUserId,
      "invite_link": inviteLink?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [approver_user_id]: User identifier of the chat administrator, approved user join request 
  /// * [invite_link]: Invite link used to join the chat; may be null
  @override
  ChatEventMemberJoinedByRequest copyWith({
    int? approverUserId,
    ChatInviteLink? inviteLink,
  }) => ChatEventMemberJoinedByRequest(
    approverUserId: approverUserId ?? this.approverUserId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMemberJoinedByRequest';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberInvited** *(chatEventMemberInvited)* - child of ChatEventAction
///
/// A new chat member was invited.
///
/// * [userId]: New member user identifier.
/// * [status]: New member status.
final class ChatEventMemberInvited extends ChatEventAction {
  
  /// **ChatEventMemberInvited** *(chatEventMemberInvited)* - child of ChatEventAction
  ///
  /// A new chat member was invited.
  ///
  /// * [userId]: New member user identifier.
  /// * [status]: New member status.
  const ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });
  
  /// New member user identifier 
  final int userId;

  /// New member status
  final ChatMemberStatus status;
  
  /// Parse from a json
  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) => ChatEventMemberInvited(
    userId: json['user_id'],
    status: ChatMemberStatus.fromJson(json['status']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "status": status.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: New member user identifier 
  /// * [status]: New member status
  @override
  ChatEventMemberInvited copyWith({
    int? userId,
    ChatMemberStatus? status,
  }) => ChatEventMemberInvited(
    userId: userId ?? this.userId,
    status: status ?? this.status,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMemberInvited';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberLeft** *(chatEventMemberLeft)* - child of ChatEventAction
///
/// A member left the chat.
final class ChatEventMemberLeft extends ChatEventAction {
  
  /// **ChatEventMemberLeft** *(chatEventMemberLeft)* - child of ChatEventAction
  ///
  /// A member left the chat.
  const ChatEventMemberLeft();
  
  /// Parse from a json
  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) => const ChatEventMemberLeft();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatEventMemberLeft copyWith() => const ChatEventMemberLeft();

  /// TDLib object type
  static const String objectType = 'chatEventMemberLeft';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberPromoted** *(chatEventMemberPromoted)* - child of ChatEventAction
///
/// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.
///
/// * [userId]: Affected chat member user identifier.
/// * [oldStatus]: Previous status of the chat member.
/// * [newStatus]: New status of the chat member.
final class ChatEventMemberPromoted extends ChatEventAction {
  
  /// **ChatEventMemberPromoted** *(chatEventMemberPromoted)* - child of ChatEventAction
  ///
  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.
  ///
  /// * [userId]: Affected chat member user identifier.
  /// * [oldStatus]: Previous status of the chat member.
  /// * [newStatus]: New status of the chat member.
  const ChatEventMemberPromoted({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });
  
  /// Affected chat member user identifier 
  final int userId;

  /// Previous status of the chat member 
  final ChatMemberStatus oldStatus;

  /// New status of the chat member
  final ChatMemberStatus newStatus;
  
  /// Parse from a json
  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) => ChatEventMemberPromoted(
    userId: json['user_id'],
    oldStatus: ChatMemberStatus.fromJson(json['old_status']),
    newStatus: ChatMemberStatus.fromJson(json['new_status']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Affected chat member user identifier 
  /// * [old_status]: Previous status of the chat member 
  /// * [new_status]: New status of the chat member
  @override
  ChatEventMemberPromoted copyWith({
    int? userId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) => ChatEventMemberPromoted(
    userId: userId ?? this.userId,
    oldStatus: oldStatus ?? this.oldStatus,
    newStatus: newStatus ?? this.newStatus,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMemberPromoted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMemberRestricted** *(chatEventMemberRestricted)* - child of ChatEventAction
///
/// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.
///
/// * [memberId]: Affected chat member identifier.
/// * [oldStatus]: Previous status of the chat member.
/// * [newStatus]: New status of the chat member.
final class ChatEventMemberRestricted extends ChatEventAction {
  
  /// **ChatEventMemberRestricted** *(chatEventMemberRestricted)* - child of ChatEventAction
  ///
  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.
  ///
  /// * [memberId]: Affected chat member identifier.
  /// * [oldStatus]: Previous status of the chat member.
  /// * [newStatus]: New status of the chat member.
  const ChatEventMemberRestricted({
    required this.memberId,
    required this.oldStatus,
    required this.newStatus,
  });
  
  /// Affected chat member identifier 
  final MessageSender memberId;

  /// Previous status of the chat member 
  final ChatMemberStatus oldStatus;

  /// New status of the chat member
  final ChatMemberStatus newStatus;
  
  /// Parse from a json
  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) => ChatEventMemberRestricted(
    memberId: MessageSender.fromJson(json['member_id']),
    oldStatus: ChatMemberStatus.fromJson(json['old_status']),
    newStatus: ChatMemberStatus.fromJson(json['new_status']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "member_id": memberId.toJson(),
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [member_id]: Affected chat member identifier 
  /// * [old_status]: Previous status of the chat member 
  /// * [new_status]: New status of the chat member
  @override
  ChatEventMemberRestricted copyWith({
    MessageSender? memberId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) => ChatEventMemberRestricted(
    memberId: memberId ?? this.memberId,
    oldStatus: oldStatus ?? this.oldStatus,
    newStatus: newStatus ?? this.newStatus,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMemberRestricted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventAvailableReactionsChanged** *(chatEventAvailableReactionsChanged)* - child of ChatEventAction
///
/// The chat available reactions were changed.
///
/// * [oldAvailableReactions]: Previous chat available reactions.
/// * [newAvailableReactions]: New chat available reactions.
final class ChatEventAvailableReactionsChanged extends ChatEventAction {
  
  /// **ChatEventAvailableReactionsChanged** *(chatEventAvailableReactionsChanged)* - child of ChatEventAction
  ///
  /// The chat available reactions were changed.
  ///
  /// * [oldAvailableReactions]: Previous chat available reactions.
  /// * [newAvailableReactions]: New chat available reactions.
  const ChatEventAvailableReactionsChanged({
    required this.oldAvailableReactions,
    required this.newAvailableReactions,
  });
  
  /// Previous chat available reactions 
  final ChatAvailableReactions oldAvailableReactions;

  /// New chat available reactions
  final ChatAvailableReactions newAvailableReactions;
  
  /// Parse from a json
  factory ChatEventAvailableReactionsChanged.fromJson(Map<String, dynamic> json) => ChatEventAvailableReactionsChanged(
    oldAvailableReactions: ChatAvailableReactions.fromJson(json['old_available_reactions']),
    newAvailableReactions: ChatAvailableReactions.fromJson(json['new_available_reactions']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_available_reactions": oldAvailableReactions.toJson(),
      "new_available_reactions": newAvailableReactions.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_available_reactions]: Previous chat available reactions 
  /// * [new_available_reactions]: New chat available reactions
  @override
  ChatEventAvailableReactionsChanged copyWith({
    ChatAvailableReactions? oldAvailableReactions,
    ChatAvailableReactions? newAvailableReactions,
  }) => ChatEventAvailableReactionsChanged(
    oldAvailableReactions: oldAvailableReactions ?? this.oldAvailableReactions,
    newAvailableReactions: newAvailableReactions ?? this.newAvailableReactions,
  );

  /// TDLib object type
  static const String objectType = 'chatEventAvailableReactionsChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventDescriptionChanged** *(chatEventDescriptionChanged)* - child of ChatEventAction
///
/// The chat description was changed.
///
/// * [oldDescription]: Previous chat description.
/// * [newDescription]: New chat description.
final class ChatEventDescriptionChanged extends ChatEventAction {
  
  /// **ChatEventDescriptionChanged** *(chatEventDescriptionChanged)* - child of ChatEventAction
  ///
  /// The chat description was changed.
  ///
  /// * [oldDescription]: Previous chat description.
  /// * [newDescription]: New chat description.
  const ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });
  
  /// Previous chat description 
  final String oldDescription;

  /// New chat description
  final String newDescription;
  
  /// Parse from a json
  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) => ChatEventDescriptionChanged(
    oldDescription: json['old_description'],
    newDescription: json['new_description'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_description": oldDescription,
      "new_description": newDescription,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_description]: Previous chat description 
  /// * [new_description]: New chat description
  @override
  ChatEventDescriptionChanged copyWith({
    String? oldDescription,
    String? newDescription,
  }) => ChatEventDescriptionChanged(
    oldDescription: oldDescription ?? this.oldDescription,
    newDescription: newDescription ?? this.newDescription,
  );

  /// TDLib object type
  static const String objectType = 'chatEventDescriptionChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventLinkedChatChanged** *(chatEventLinkedChatChanged)* - child of ChatEventAction
///
/// The linked chat of a supergroup was changed.
///
/// * [oldLinkedChatId]: Previous supergroup linked chat identifier.
/// * [newLinkedChatId]: New supergroup linked chat identifier.
final class ChatEventLinkedChatChanged extends ChatEventAction {
  
  /// **ChatEventLinkedChatChanged** *(chatEventLinkedChatChanged)* - child of ChatEventAction
  ///
  /// The linked chat of a supergroup was changed.
  ///
  /// * [oldLinkedChatId]: Previous supergroup linked chat identifier.
  /// * [newLinkedChatId]: New supergroup linked chat identifier.
  const ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });
  
  /// Previous supergroup linked chat identifier 
  final int oldLinkedChatId;

  /// New supergroup linked chat identifier
  final int newLinkedChatId;
  
  /// Parse from a json
  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) => ChatEventLinkedChatChanged(
    oldLinkedChatId: json['old_linked_chat_id'],
    newLinkedChatId: json['new_linked_chat_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_linked_chat_id": oldLinkedChatId,
      "new_linked_chat_id": newLinkedChatId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_linked_chat_id]: Previous supergroup linked chat identifier 
  /// * [new_linked_chat_id]: New supergroup linked chat identifier
  @override
  ChatEventLinkedChatChanged copyWith({
    int? oldLinkedChatId,
    int? newLinkedChatId,
  }) => ChatEventLinkedChatChanged(
    oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
    newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId,
  );

  /// TDLib object type
  static const String objectType = 'chatEventLinkedChatChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventLocationChanged** *(chatEventLocationChanged)* - child of ChatEventAction
///
/// The supergroup location was changed.
///
/// * [oldLocation]: Previous location; may be null *(optional)*.
/// * [newLocation]: New location; may be null *(optional)*.
final class ChatEventLocationChanged extends ChatEventAction {
  
  /// **ChatEventLocationChanged** *(chatEventLocationChanged)* - child of ChatEventAction
  ///
  /// The supergroup location was changed.
  ///
  /// * [oldLocation]: Previous location; may be null *(optional)*.
  /// * [newLocation]: New location; may be null *(optional)*.
  const ChatEventLocationChanged({
    this.oldLocation,
    this.newLocation,
  });
  
  /// Previous location; may be null 
  final ChatLocation? oldLocation;

  /// New location; may be null
  final ChatLocation? newLocation;
  
  /// Parse from a json
  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) => ChatEventLocationChanged(
    oldLocation: json['old_location'] == null ? null : ChatLocation.fromJson(json['old_location']),
    newLocation: json['new_location'] == null ? null : ChatLocation.fromJson(json['new_location']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_location": oldLocation?.toJson(),
      "new_location": newLocation?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_location]: Previous location; may be null 
  /// * [new_location]: New location; may be null
  @override
  ChatEventLocationChanged copyWith({
    ChatLocation? oldLocation,
    ChatLocation? newLocation,
  }) => ChatEventLocationChanged(
    oldLocation: oldLocation ?? this.oldLocation,
    newLocation: newLocation ?? this.newLocation,
  );

  /// TDLib object type
  static const String objectType = 'chatEventLocationChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventMessageAutoDeleteTimeChanged** *(chatEventMessageAutoDeleteTimeChanged)* - child of ChatEventAction
///
/// The message auto-delete timer was changed.
///
/// * [oldMessageAutoDeleteTime]: Previous value of message_auto_delete_time.
/// * [newMessageAutoDeleteTime]: New value of message_auto_delete_time.
final class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  
  /// **ChatEventMessageAutoDeleteTimeChanged** *(chatEventMessageAutoDeleteTimeChanged)* - child of ChatEventAction
  ///
  /// The message auto-delete timer was changed.
  ///
  /// * [oldMessageAutoDeleteTime]: Previous value of message_auto_delete_time.
  /// * [newMessageAutoDeleteTime]: New value of message_auto_delete_time.
  const ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });
  
  /// Previous value of message_auto_delete_time 
  final int oldMessageAutoDeleteTime;

  /// New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;
  
  /// Parse from a json
  factory ChatEventMessageAutoDeleteTimeChanged.fromJson(Map<String, dynamic> json) => ChatEventMessageAutoDeleteTimeChanged(
    oldMessageAutoDeleteTime: json['old_message_auto_delete_time'],
    newMessageAutoDeleteTime: json['new_message_auto_delete_time'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_message_auto_delete_time": oldMessageAutoDeleteTime,
      "new_message_auto_delete_time": newMessageAutoDeleteTime,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_message_auto_delete_time]: Previous value of message_auto_delete_time 
  /// * [new_message_auto_delete_time]: New value of message_auto_delete_time
  @override
  ChatEventMessageAutoDeleteTimeChanged copyWith({
    int? oldMessageAutoDeleteTime,
    int? newMessageAutoDeleteTime,
  }) => ChatEventMessageAutoDeleteTimeChanged(
    oldMessageAutoDeleteTime: oldMessageAutoDeleteTime ?? this.oldMessageAutoDeleteTime,
    newMessageAutoDeleteTime: newMessageAutoDeleteTime ?? this.newMessageAutoDeleteTime,
  );

  /// TDLib object type
  static const String objectType = 'chatEventMessageAutoDeleteTimeChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventPermissionsChanged** *(chatEventPermissionsChanged)* - child of ChatEventAction
///
/// The chat permissions was changed.
///
/// * [oldPermissions]: Previous chat permissions.
/// * [newPermissions]: New chat permissions.
final class ChatEventPermissionsChanged extends ChatEventAction {
  
  /// **ChatEventPermissionsChanged** *(chatEventPermissionsChanged)* - child of ChatEventAction
  ///
  /// The chat permissions was changed.
  ///
  /// * [oldPermissions]: Previous chat permissions.
  /// * [newPermissions]: New chat permissions.
  const ChatEventPermissionsChanged({
    required this.oldPermissions,
    required this.newPermissions,
  });
  
  /// Previous chat permissions 
  final ChatPermissions oldPermissions;

  /// New chat permissions
  final ChatPermissions newPermissions;
  
  /// Parse from a json
  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) => ChatEventPermissionsChanged(
    oldPermissions: ChatPermissions.fromJson(json['old_permissions']),
    newPermissions: ChatPermissions.fromJson(json['new_permissions']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_permissions": oldPermissions.toJson(),
      "new_permissions": newPermissions.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_permissions]: Previous chat permissions 
  /// * [new_permissions]: New chat permissions
  @override
  ChatEventPermissionsChanged copyWith({
    ChatPermissions? oldPermissions,
    ChatPermissions? newPermissions,
  }) => ChatEventPermissionsChanged(
    oldPermissions: oldPermissions ?? this.oldPermissions,
    newPermissions: newPermissions ?? this.newPermissions,
  );

  /// TDLib object type
  static const String objectType = 'chatEventPermissionsChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventPhotoChanged** *(chatEventPhotoChanged)* - child of ChatEventAction
///
/// The chat photo was changed.
///
/// * [oldPhoto]: Previous chat photo value; may be null *(optional)*.
/// * [newPhoto]: New chat photo value; may be null *(optional)*.
final class ChatEventPhotoChanged extends ChatEventAction {
  
  /// **ChatEventPhotoChanged** *(chatEventPhotoChanged)* - child of ChatEventAction
  ///
  /// The chat photo was changed.
  ///
  /// * [oldPhoto]: Previous chat photo value; may be null *(optional)*.
  /// * [newPhoto]: New chat photo value; may be null *(optional)*.
  const ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });
  
  /// Previous chat photo value; may be null 
  final ChatPhoto? oldPhoto;

  /// New chat photo value; may be null
  final ChatPhoto? newPhoto;
  
  /// Parse from a json
  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) => ChatEventPhotoChanged(
    oldPhoto: json['old_photo'] == null ? null : ChatPhoto.fromJson(json['old_photo']),
    newPhoto: json['new_photo'] == null ? null : ChatPhoto.fromJson(json['new_photo']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_photo": oldPhoto?.toJson(),
      "new_photo": newPhoto?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_photo]: Previous chat photo value; may be null 
  /// * [new_photo]: New chat photo value; may be null
  @override
  ChatEventPhotoChanged copyWith({
    ChatPhoto? oldPhoto,
    ChatPhoto? newPhoto,
  }) => ChatEventPhotoChanged(
    oldPhoto: oldPhoto ?? this.oldPhoto,
    newPhoto: newPhoto ?? this.newPhoto,
  );

  /// TDLib object type
  static const String objectType = 'chatEventPhotoChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventSlowModeDelayChanged** *(chatEventSlowModeDelayChanged)* - child of ChatEventAction
///
/// The slow_mode_delay setting of a supergroup was changed.
///
/// * [oldSlowModeDelay]: Previous value of slow_mode_delay, in seconds.
/// * [newSlowModeDelay]: New value of slow_mode_delay, in seconds.
final class ChatEventSlowModeDelayChanged extends ChatEventAction {
  
  /// **ChatEventSlowModeDelayChanged** *(chatEventSlowModeDelayChanged)* - child of ChatEventAction
  ///
  /// The slow_mode_delay setting of a supergroup was changed.
  ///
  /// * [oldSlowModeDelay]: Previous value of slow_mode_delay, in seconds.
  /// * [newSlowModeDelay]: New value of slow_mode_delay, in seconds.
  const ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });
  
  /// Previous value of slow_mode_delay, in seconds 
  final int oldSlowModeDelay;

  /// New value of slow_mode_delay, in seconds
  final int newSlowModeDelay;
  
  /// Parse from a json
  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) => ChatEventSlowModeDelayChanged(
    oldSlowModeDelay: json['old_slow_mode_delay'],
    newSlowModeDelay: json['new_slow_mode_delay'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_slow_mode_delay": oldSlowModeDelay,
      "new_slow_mode_delay": newSlowModeDelay,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_slow_mode_delay]: Previous value of slow_mode_delay, in seconds 
  /// * [new_slow_mode_delay]: New value of slow_mode_delay, in seconds
  @override
  ChatEventSlowModeDelayChanged copyWith({
    int? oldSlowModeDelay,
    int? newSlowModeDelay,
  }) => ChatEventSlowModeDelayChanged(
    oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
    newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay,
  );

  /// TDLib object type
  static const String objectType = 'chatEventSlowModeDelayChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventStickerSetChanged** *(chatEventStickerSetChanged)* - child of ChatEventAction
///
/// The supergroup sticker set was changed.
///
/// * [oldStickerSetId]: Previous identifier of the chat sticker set; 0 if none.
/// * [newStickerSetId]: New identifier of the chat sticker set; 0 if none.
final class ChatEventStickerSetChanged extends ChatEventAction {
  
  /// **ChatEventStickerSetChanged** *(chatEventStickerSetChanged)* - child of ChatEventAction
  ///
  /// The supergroup sticker set was changed.
  ///
  /// * [oldStickerSetId]: Previous identifier of the chat sticker set; 0 if none.
  /// * [newStickerSetId]: New identifier of the chat sticker set; 0 if none.
  const ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });
  
  /// Previous identifier of the chat sticker set; 0 if none 
  final int oldStickerSetId;

  /// New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;
  
  /// Parse from a json
  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) => ChatEventStickerSetChanged(
    oldStickerSetId: int.tryParse(json['old_sticker_set_id'] ?? "") ?? 0,
    newStickerSetId: int.tryParse(json['new_sticker_set_id'] ?? "") ?? 0,
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_sticker_set_id": oldStickerSetId,
      "new_sticker_set_id": newStickerSetId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_sticker_set_id]: Previous identifier of the chat sticker set; 0 if none 
  /// * [new_sticker_set_id]: New identifier of the chat sticker set; 0 if none
  @override
  ChatEventStickerSetChanged copyWith({
    int? oldStickerSetId,
    int? newStickerSetId,
  }) => ChatEventStickerSetChanged(
    oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
    newStickerSetId: newStickerSetId ?? this.newStickerSetId,
  );

  /// TDLib object type
  static const String objectType = 'chatEventStickerSetChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventTitleChanged** *(chatEventTitleChanged)* - child of ChatEventAction
///
/// The chat title was changed.
///
/// * [oldTitle]: Previous chat title.
/// * [newTitle]: New chat title.
final class ChatEventTitleChanged extends ChatEventAction {
  
  /// **ChatEventTitleChanged** *(chatEventTitleChanged)* - child of ChatEventAction
  ///
  /// The chat title was changed.
  ///
  /// * [oldTitle]: Previous chat title.
  /// * [newTitle]: New chat title.
  const ChatEventTitleChanged({
    required this.oldTitle,
    required this.newTitle,
  });
  
  /// Previous chat title 
  final String oldTitle;

  /// New chat title
  final String newTitle;
  
  /// Parse from a json
  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) => ChatEventTitleChanged(
    oldTitle: json['old_title'],
    newTitle: json['new_title'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_title": oldTitle,
      "new_title": newTitle,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_title]: Previous chat title 
  /// * [new_title]: New chat title
  @override
  ChatEventTitleChanged copyWith({
    String? oldTitle,
    String? newTitle,
  }) => ChatEventTitleChanged(
    oldTitle: oldTitle ?? this.oldTitle,
    newTitle: newTitle ?? this.newTitle,
  );

  /// TDLib object type
  static const String objectType = 'chatEventTitleChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventUsernameChanged** *(chatEventUsernameChanged)* - child of ChatEventAction
///
/// The chat editable username was changed.
///
/// * [oldUsername]: Previous chat username.
/// * [newUsername]: New chat username.
final class ChatEventUsernameChanged extends ChatEventAction {
  
  /// **ChatEventUsernameChanged** *(chatEventUsernameChanged)* - child of ChatEventAction
  ///
  /// The chat editable username was changed.
  ///
  /// * [oldUsername]: Previous chat username.
  /// * [newUsername]: New chat username.
  const ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });
  
  /// Previous chat username 
  final String oldUsername;

  /// New chat username
  final String newUsername;
  
  /// Parse from a json
  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) => ChatEventUsernameChanged(
    oldUsername: json['old_username'],
    newUsername: json['new_username'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_username": oldUsername,
      "new_username": newUsername,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_username]: Previous chat username 
  /// * [new_username]: New chat username
  @override
  ChatEventUsernameChanged copyWith({
    String? oldUsername,
    String? newUsername,
  }) => ChatEventUsernameChanged(
    oldUsername: oldUsername ?? this.oldUsername,
    newUsername: newUsername ?? this.newUsername,
  );

  /// TDLib object type
  static const String objectType = 'chatEventUsernameChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventActiveUsernamesChanged** *(chatEventActiveUsernamesChanged)* - child of ChatEventAction
///
/// The chat active usernames were changed.
///
/// * [oldUsernames]: Previous list of active usernames.
/// * [newUsernames]: New list of active usernames.
final class ChatEventActiveUsernamesChanged extends ChatEventAction {
  
  /// **ChatEventActiveUsernamesChanged** *(chatEventActiveUsernamesChanged)* - child of ChatEventAction
  ///
  /// The chat active usernames were changed.
  ///
  /// * [oldUsernames]: Previous list of active usernames.
  /// * [newUsernames]: New list of active usernames.
  const ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });
  
  /// Previous list of active usernames 
  final List<String> oldUsernames;

  /// New list of active usernames
  final List<String> newUsernames;
  
  /// Parse from a json
  factory ChatEventActiveUsernamesChanged.fromJson(Map<String, dynamic> json) => ChatEventActiveUsernamesChanged(
    oldUsernames: List<String>.from((json['old_usernames'] ?? []).map((item) => item).toList()),
    newUsernames: List<String>.from((json['new_usernames'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_usernames": oldUsernames.map((i) => i).toList(),
      "new_usernames": newUsernames.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_usernames]: Previous list of active usernames 
  /// * [new_usernames]: New list of active usernames
  @override
  ChatEventActiveUsernamesChanged copyWith({
    List<String>? oldUsernames,
    List<String>? newUsernames,
  }) => ChatEventActiveUsernamesChanged(
    oldUsernames: oldUsernames ?? this.oldUsernames,
    newUsernames: newUsernames ?? this.newUsernames,
  );

  /// TDLib object type
  static const String objectType = 'chatEventActiveUsernamesChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventHasProtectedContentToggled** *(chatEventHasProtectedContentToggled)* - child of ChatEventAction
///
/// The has_protected_content setting of a channel was toggled.
///
/// * [hasProtectedContent]: New value of has_protected_content.
final class ChatEventHasProtectedContentToggled extends ChatEventAction {
  
  /// **ChatEventHasProtectedContentToggled** *(chatEventHasProtectedContentToggled)* - child of ChatEventAction
  ///
  /// The has_protected_content setting of a channel was toggled.
  ///
  /// * [hasProtectedContent]: New value of has_protected_content.
  const ChatEventHasProtectedContentToggled({
    required this.hasProtectedContent,
  });
  
  /// New value of has_protected_content
  final bool hasProtectedContent;
  
  /// Parse from a json
  factory ChatEventHasProtectedContentToggled.fromJson(Map<String, dynamic> json) => ChatEventHasProtectedContentToggled(
    hasProtectedContent: json['has_protected_content'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "has_protected_content": hasProtectedContent,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [has_protected_content]: New value of has_protected_content
  @override
  ChatEventHasProtectedContentToggled copyWith({
    bool? hasProtectedContent,
  }) => ChatEventHasProtectedContentToggled(
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
  );

  /// TDLib object type
  static const String objectType = 'chatEventHasProtectedContentToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventInvitesToggled** *(chatEventInvitesToggled)* - child of ChatEventAction
///
/// The can_invite_users permission of a supergroup chat was toggled.
///
/// * [canInviteUsers]: New value of can_invite_users permission.
final class ChatEventInvitesToggled extends ChatEventAction {
  
  /// **ChatEventInvitesToggled** *(chatEventInvitesToggled)* - child of ChatEventAction
  ///
  /// The can_invite_users permission of a supergroup chat was toggled.
  ///
  /// * [canInviteUsers]: New value of can_invite_users permission.
  const ChatEventInvitesToggled({
    required this.canInviteUsers,
  });
  
  /// New value of can_invite_users permission
  final bool canInviteUsers;
  
  /// Parse from a json
  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) => ChatEventInvitesToggled(
    canInviteUsers: json['can_invite_users'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "can_invite_users": canInviteUsers,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [can_invite_users]: New value of can_invite_users permission
  @override
  ChatEventInvitesToggled copyWith({
    bool? canInviteUsers,
  }) => ChatEventInvitesToggled(
    canInviteUsers: canInviteUsers ?? this.canInviteUsers,
  );

  /// TDLib object type
  static const String objectType = 'chatEventInvitesToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventIsAllHistoryAvailableToggled** *(chatEventIsAllHistoryAvailableToggled)* - child of ChatEventAction
///
/// The is_all_history_available setting of a supergroup was toggled.
///
/// * [isAllHistoryAvailable]: New value of is_all_history_available.
final class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  
  /// **ChatEventIsAllHistoryAvailableToggled** *(chatEventIsAllHistoryAvailableToggled)* - child of ChatEventAction
  ///
  /// The is_all_history_available setting of a supergroup was toggled.
  ///
  /// * [isAllHistoryAvailable]: New value of is_all_history_available.
  const ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });
  
  /// New value of is_all_history_available
  final bool isAllHistoryAvailable;
  
  /// Parse from a json
  factory ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) => ChatEventIsAllHistoryAvailableToggled(
    isAllHistoryAvailable: json['is_all_history_available'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_all_history_available": isAllHistoryAvailable,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_all_history_available]: New value of is_all_history_available
  @override
  ChatEventIsAllHistoryAvailableToggled copyWith({
    bool? isAllHistoryAvailable,
  }) => ChatEventIsAllHistoryAvailableToggled(
    isAllHistoryAvailable: isAllHistoryAvailable ?? this.isAllHistoryAvailable,
  );

  /// TDLib object type
  static const String objectType = 'chatEventIsAllHistoryAvailableToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventHasAggressiveAntiSpamEnabledToggled** *(chatEventHasAggressiveAntiSpamEnabledToggled)* - child of ChatEventAction
///
/// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled.
///
/// * [hasAggressiveAntiSpamEnabled]: New value of has_aggressive_anti_spam_enabled.
final class ChatEventHasAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  
  /// **ChatEventHasAggressiveAntiSpamEnabledToggled** *(chatEventHasAggressiveAntiSpamEnabledToggled)* - child of ChatEventAction
  ///
  /// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled.
  ///
  /// * [hasAggressiveAntiSpamEnabled]: New value of has_aggressive_anti_spam_enabled.
  const ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });
  
  /// New value of has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;
  
  /// Parse from a json
  factory ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(Map<String, dynamic> json) => ChatEventHasAggressiveAntiSpamEnabledToggled(
    hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [has_aggressive_anti_spam_enabled]: New value of has_aggressive_anti_spam_enabled
  @override
  ChatEventHasAggressiveAntiSpamEnabledToggled copyWith({
    bool? hasAggressiveAntiSpamEnabled,
  }) => ChatEventHasAggressiveAntiSpamEnabledToggled(
    hasAggressiveAntiSpamEnabled: hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
  );

  /// TDLib object type
  static const String objectType = 'chatEventHasAggressiveAntiSpamEnabledToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventSignMessagesToggled** *(chatEventSignMessagesToggled)* - child of ChatEventAction
///
/// The sign_messages setting of a channel was toggled.
///
/// * [signMessages]: New value of sign_messages.
final class ChatEventSignMessagesToggled extends ChatEventAction {
  
  /// **ChatEventSignMessagesToggled** *(chatEventSignMessagesToggled)* - child of ChatEventAction
  ///
  /// The sign_messages setting of a channel was toggled.
  ///
  /// * [signMessages]: New value of sign_messages.
  const ChatEventSignMessagesToggled({
    required this.signMessages,
  });
  
  /// New value of sign_messages
  final bool signMessages;
  
  /// Parse from a json
  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) => ChatEventSignMessagesToggled(
    signMessages: json['sign_messages'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sign_messages": signMessages,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sign_messages]: New value of sign_messages
  @override
  ChatEventSignMessagesToggled copyWith({
    bool? signMessages,
  }) => ChatEventSignMessagesToggled(
    signMessages: signMessages ?? this.signMessages,
  );

  /// TDLib object type
  static const String objectType = 'chatEventSignMessagesToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventInviteLinkEdited** *(chatEventInviteLinkEdited)* - child of ChatEventAction
///
/// A chat invite link was edited.
///
/// * [oldInviteLink]: Previous information about the invite link.
/// * [newInviteLink]: New information about the invite link.
final class ChatEventInviteLinkEdited extends ChatEventAction {
  
  /// **ChatEventInviteLinkEdited** *(chatEventInviteLinkEdited)* - child of ChatEventAction
  ///
  /// A chat invite link was edited.
  ///
  /// * [oldInviteLink]: Previous information about the invite link.
  /// * [newInviteLink]: New information about the invite link.
  const ChatEventInviteLinkEdited({
    required this.oldInviteLink,
    required this.newInviteLink,
  });
  
  /// Previous information about the invite link 
  final ChatInviteLink oldInviteLink;

  /// New information about the invite link
  final ChatInviteLink newInviteLink;
  
  /// Parse from a json
  factory ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkEdited(
    oldInviteLink: ChatInviteLink.fromJson(json['old_invite_link']),
    newInviteLink: ChatInviteLink.fromJson(json['new_invite_link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_invite_link": oldInviteLink.toJson(),
      "new_invite_link": newInviteLink.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_invite_link]: Previous information about the invite link 
  /// * [new_invite_link]: New information about the invite link
  @override
  ChatEventInviteLinkEdited copyWith({
    ChatInviteLink? oldInviteLink,
    ChatInviteLink? newInviteLink,
  }) => ChatEventInviteLinkEdited(
    oldInviteLink: oldInviteLink ?? this.oldInviteLink,
    newInviteLink: newInviteLink ?? this.newInviteLink,
  );

  /// TDLib object type
  static const String objectType = 'chatEventInviteLinkEdited';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventInviteLinkRevoked** *(chatEventInviteLinkRevoked)* - child of ChatEventAction
///
/// A chat invite link was revoked.
///
/// * [inviteLink]: The invite link.
final class ChatEventInviteLinkRevoked extends ChatEventAction {
  
  /// **ChatEventInviteLinkRevoked** *(chatEventInviteLinkRevoked)* - child of ChatEventAction
  ///
  /// A chat invite link was revoked.
  ///
  /// * [inviteLink]: The invite link.
  const ChatEventInviteLinkRevoked({
    required this.inviteLink,
  });
  
  /// The invite link
  final ChatInviteLink inviteLink;
  
  /// Parse from a json
  factory ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkRevoked(
    inviteLink: ChatInviteLink.fromJson(json['invite_link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link": inviteLink.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [invite_link]: The invite link
  @override
  ChatEventInviteLinkRevoked copyWith({
    ChatInviteLink? inviteLink,
  }) => ChatEventInviteLinkRevoked(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  /// TDLib object type
  static const String objectType = 'chatEventInviteLinkRevoked';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventInviteLinkDeleted** *(chatEventInviteLinkDeleted)* - child of ChatEventAction
///
/// A revoked chat invite link was deleted.
///
/// * [inviteLink]: The invite link.
final class ChatEventInviteLinkDeleted extends ChatEventAction {
  
  /// **ChatEventInviteLinkDeleted** *(chatEventInviteLinkDeleted)* - child of ChatEventAction
  ///
  /// A revoked chat invite link was deleted.
  ///
  /// * [inviteLink]: The invite link.
  const ChatEventInviteLinkDeleted({
    required this.inviteLink,
  });
  
  /// The invite link
  final ChatInviteLink inviteLink;
  
  /// Parse from a json
  factory ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkDeleted(
    inviteLink: ChatInviteLink.fromJson(json['invite_link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link": inviteLink.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [invite_link]: The invite link
  @override
  ChatEventInviteLinkDeleted copyWith({
    ChatInviteLink? inviteLink,
  }) => ChatEventInviteLinkDeleted(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  /// TDLib object type
  static const String objectType = 'chatEventInviteLinkDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventVideoChatCreated** *(chatEventVideoChatCreated)* - child of ChatEventAction
///
/// A video chat was created.
///
/// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
final class ChatEventVideoChatCreated extends ChatEventAction {
  
  /// **ChatEventVideoChatCreated** *(chatEventVideoChatCreated)* - child of ChatEventAction
  ///
  /// A video chat was created.
  ///
  /// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
  const ChatEventVideoChatCreated({
    required this.groupCallId,
  });
  
  /// Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;
  
  /// Parse from a json
  factory ChatEventVideoChatCreated.fromJson(Map<String, dynamic> json) => ChatEventVideoChatCreated(
    groupCallId: json['group_call_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Identifier of the video chat. The video chat can be received through the method getGroupCall
  @override
  ChatEventVideoChatCreated copyWith({
    int? groupCallId,
  }) => ChatEventVideoChatCreated(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  /// TDLib object type
  static const String objectType = 'chatEventVideoChatCreated';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventVideoChatEnded** *(chatEventVideoChatEnded)* - child of ChatEventAction
///
/// A video chat was ended.
///
/// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
final class ChatEventVideoChatEnded extends ChatEventAction {
  
  /// **ChatEventVideoChatEnded** *(chatEventVideoChatEnded)* - child of ChatEventAction
  ///
  /// A video chat was ended.
  ///
  /// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
  const ChatEventVideoChatEnded({
    required this.groupCallId,
  });
  
  /// Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;
  
  /// Parse from a json
  factory ChatEventVideoChatEnded.fromJson(Map<String, dynamic> json) => ChatEventVideoChatEnded(
    groupCallId: json['group_call_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Identifier of the video chat. The video chat can be received through the method getGroupCall
  @override
  ChatEventVideoChatEnded copyWith({
    int? groupCallId,
  }) => ChatEventVideoChatEnded(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  /// TDLib object type
  static const String objectType = 'chatEventVideoChatEnded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventVideoChatMuteNewParticipantsToggled** *(chatEventVideoChatMuteNewParticipantsToggled)* - child of ChatEventAction
///
/// The mute_new_participants setting of a video chat was toggled.
///
/// * [muteNewParticipants]: New value of the mute_new_participants setting.
final class ChatEventVideoChatMuteNewParticipantsToggled extends ChatEventAction {
  
  /// **ChatEventVideoChatMuteNewParticipantsToggled** *(chatEventVideoChatMuteNewParticipantsToggled)* - child of ChatEventAction
  ///
  /// The mute_new_participants setting of a video chat was toggled.
  ///
  /// * [muteNewParticipants]: New value of the mute_new_participants setting.
  const ChatEventVideoChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });
  
  /// New value of the mute_new_participants setting
  final bool muteNewParticipants;
  
  /// Parse from a json
  factory ChatEventVideoChatMuteNewParticipantsToggled.fromJson(Map<String, dynamic> json) => ChatEventVideoChatMuteNewParticipantsToggled(
    muteNewParticipants: json['mute_new_participants'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "mute_new_participants": muteNewParticipants,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [mute_new_participants]: New value of the mute_new_participants setting
  @override
  ChatEventVideoChatMuteNewParticipantsToggled copyWith({
    bool? muteNewParticipants,
  }) => ChatEventVideoChatMuteNewParticipantsToggled(
    muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
  );

  /// TDLib object type
  static const String objectType = 'chatEventVideoChatMuteNewParticipantsToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventVideoChatParticipantIsMutedToggled** *(chatEventVideoChatParticipantIsMutedToggled)* - child of ChatEventAction
///
/// A video chat participant was muted or unmuted.
///
/// * [participantId]: Identifier of the affected group call participant.
/// * [isMuted]: New value of is_muted.
final class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  
  /// **ChatEventVideoChatParticipantIsMutedToggled** *(chatEventVideoChatParticipantIsMutedToggled)* - child of ChatEventAction
  ///
  /// A video chat participant was muted or unmuted.
  ///
  /// * [participantId]: Identifier of the affected group call participant.
  /// * [isMuted]: New value of is_muted.
  const ChatEventVideoChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });
  
  /// Identifier of the affected group call participant 
  final MessageSender participantId;

  /// New value of is_muted
  final bool isMuted;
  
  /// Parse from a json
  factory ChatEventVideoChatParticipantIsMutedToggled.fromJson(Map<String, dynamic> json) => ChatEventVideoChatParticipantIsMutedToggled(
    participantId: MessageSender.fromJson(json['participant_id']),
    isMuted: json['is_muted'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "participant_id": participantId.toJson(),
      "is_muted": isMuted,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [participant_id]: Identifier of the affected group call participant 
  /// * [is_muted]: New value of is_muted
  @override
  ChatEventVideoChatParticipantIsMutedToggled copyWith({
    MessageSender? participantId,
    bool? isMuted,
  }) => ChatEventVideoChatParticipantIsMutedToggled(
    participantId: participantId ?? this.participantId,
    isMuted: isMuted ?? this.isMuted,
  );

  /// TDLib object type
  static const String objectType = 'chatEventVideoChatParticipantIsMutedToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventVideoChatParticipantVolumeLevelChanged** *(chatEventVideoChatParticipantVolumeLevelChanged)* - child of ChatEventAction
///
/// A video chat participant volume level was changed.
///
/// * [participantId]: Identifier of the affected group call participant.
/// * [volumeLevel]: New value of volume_level; 1-20000 in hundreds of percents.
final class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  
  /// **ChatEventVideoChatParticipantVolumeLevelChanged** *(chatEventVideoChatParticipantVolumeLevelChanged)* - child of ChatEventAction
  ///
  /// A video chat participant volume level was changed.
  ///
  /// * [participantId]: Identifier of the affected group call participant.
  /// * [volumeLevel]: New value of volume_level; 1-20000 in hundreds of percents.
  const ChatEventVideoChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });
  
  /// Identifier of the affected group call participant 
  final MessageSender participantId;

  /// New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;
  
  /// Parse from a json
  factory ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(Map<String, dynamic> json) => ChatEventVideoChatParticipantVolumeLevelChanged(
    participantId: MessageSender.fromJson(json['participant_id']),
    volumeLevel: json['volume_level'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "participant_id": participantId.toJson(),
      "volume_level": volumeLevel,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [participant_id]: Identifier of the affected group call participant 
  /// * [volume_level]: New value of volume_level; 1-20000 in hundreds of percents
  @override
  ChatEventVideoChatParticipantVolumeLevelChanged copyWith({
    MessageSender? participantId,
    int? volumeLevel,
  }) => ChatEventVideoChatParticipantVolumeLevelChanged(
    participantId: participantId ?? this.participantId,
    volumeLevel: volumeLevel ?? this.volumeLevel,
  );

  /// TDLib object type
  static const String objectType = 'chatEventVideoChatParticipantVolumeLevelChanged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventIsForumToggled** *(chatEventIsForumToggled)* - child of ChatEventAction
///
/// The is_forum setting of a channel was toggled.
///
/// * [isForum]: New value of is_forum.
final class ChatEventIsForumToggled extends ChatEventAction {
  
  /// **ChatEventIsForumToggled** *(chatEventIsForumToggled)* - child of ChatEventAction
  ///
  /// The is_forum setting of a channel was toggled.
  ///
  /// * [isForum]: New value of is_forum.
  const ChatEventIsForumToggled({
    required this.isForum,
  });
  
  /// New value of is_forum
  final bool isForum;
  
  /// Parse from a json
  factory ChatEventIsForumToggled.fromJson(Map<String, dynamic> json) => ChatEventIsForumToggled(
    isForum: json['is_forum'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_forum": isForum,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_forum]: New value of is_forum
  @override
  ChatEventIsForumToggled copyWith({
    bool? isForum,
  }) => ChatEventIsForumToggled(
    isForum: isForum ?? this.isForum,
  );

  /// TDLib object type
  static const String objectType = 'chatEventIsForumToggled';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicCreated** *(chatEventForumTopicCreated)* - child of ChatEventAction
///
/// A new forum topic was created.
///
/// * [topicInfo]: Information about the topic.
final class ChatEventForumTopicCreated extends ChatEventAction {
  
  /// **ChatEventForumTopicCreated** *(chatEventForumTopicCreated)* - child of ChatEventAction
  ///
  /// A new forum topic was created.
  ///
  /// * [topicInfo]: Information about the topic.
  const ChatEventForumTopicCreated({
    required this.topicInfo,
  });
  
  /// Information about the topic
  final ForumTopicInfo topicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicCreated.fromJson(Map<String, dynamic> json) => ChatEventForumTopicCreated(
    topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "topic_info": topicInfo.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic_info]: Information about the topic
  @override
  ChatEventForumTopicCreated copyWith({
    ForumTopicInfo? topicInfo,
  }) => ChatEventForumTopicCreated(
    topicInfo: topicInfo ?? this.topicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicCreated';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicEdited** *(chatEventForumTopicEdited)* - child of ChatEventAction
///
/// A forum topic was edited.
///
/// * [oldTopicInfo]: Old information about the topic.
/// * [newTopicInfo]: New information about the topic.
final class ChatEventForumTopicEdited extends ChatEventAction {
  
  /// **ChatEventForumTopicEdited** *(chatEventForumTopicEdited)* - child of ChatEventAction
  ///
  /// A forum topic was edited.
  ///
  /// * [oldTopicInfo]: Old information about the topic.
  /// * [newTopicInfo]: New information about the topic.
  const ChatEventForumTopicEdited({
    required this.oldTopicInfo,
    required this.newTopicInfo,
  });
  
  /// Old information about the topic 
  final ForumTopicInfo oldTopicInfo;

  /// New information about the topic
  final ForumTopicInfo newTopicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicEdited.fromJson(Map<String, dynamic> json) => ChatEventForumTopicEdited(
    oldTopicInfo: ForumTopicInfo.fromJson(json['old_topic_info']),
    newTopicInfo: ForumTopicInfo.fromJson(json['new_topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_topic_info": oldTopicInfo.toJson(),
      "new_topic_info": newTopicInfo.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_topic_info]: Old information about the topic 
  /// * [new_topic_info]: New information about the topic
  @override
  ChatEventForumTopicEdited copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) => ChatEventForumTopicEdited(
    oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
    newTopicInfo: newTopicInfo ?? this.newTopicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicEdited';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicToggleIsClosed** *(chatEventForumTopicToggleIsClosed)* - child of ChatEventAction
///
/// A forum topic was closed or reopened.
///
/// * [topicInfo]: New information about the topic.
final class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  
  /// **ChatEventForumTopicToggleIsClosed** *(chatEventForumTopicToggleIsClosed)* - child of ChatEventAction
  ///
  /// A forum topic was closed or reopened.
  ///
  /// * [topicInfo]: New information about the topic.
  const ChatEventForumTopicToggleIsClosed({
    required this.topicInfo,
  });
  
  /// New information about the topic
  final ForumTopicInfo topicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicToggleIsClosed.fromJson(Map<String, dynamic> json) => ChatEventForumTopicToggleIsClosed(
    topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "topic_info": topicInfo.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic_info]: New information about the topic
  @override
  ChatEventForumTopicToggleIsClosed copyWith({
    ForumTopicInfo? topicInfo,
  }) => ChatEventForumTopicToggleIsClosed(
    topicInfo: topicInfo ?? this.topicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicToggleIsClosed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicToggleIsHidden** *(chatEventForumTopicToggleIsHidden)* - child of ChatEventAction
///
/// The General forum topic was hidden or unhidden.
///
/// * [topicInfo]: New information about the topic.
final class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  
  /// **ChatEventForumTopicToggleIsHidden** *(chatEventForumTopicToggleIsHidden)* - child of ChatEventAction
  ///
  /// The General forum topic was hidden or unhidden.
  ///
  /// * [topicInfo]: New information about the topic.
  const ChatEventForumTopicToggleIsHidden({
    required this.topicInfo,
  });
  
  /// New information about the topic
  final ForumTopicInfo topicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicToggleIsHidden.fromJson(Map<String, dynamic> json) => ChatEventForumTopicToggleIsHidden(
    topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "topic_info": topicInfo.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic_info]: New information about the topic
  @override
  ChatEventForumTopicToggleIsHidden copyWith({
    ForumTopicInfo? topicInfo,
  }) => ChatEventForumTopicToggleIsHidden(
    topicInfo: topicInfo ?? this.topicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicToggleIsHidden';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicDeleted** *(chatEventForumTopicDeleted)* - child of ChatEventAction
///
/// A forum topic was deleted.
///
/// * [topicInfo]: Information about the topic.
final class ChatEventForumTopicDeleted extends ChatEventAction {
  
  /// **ChatEventForumTopicDeleted** *(chatEventForumTopicDeleted)* - child of ChatEventAction
  ///
  /// A forum topic was deleted.
  ///
  /// * [topicInfo]: Information about the topic.
  const ChatEventForumTopicDeleted({
    required this.topicInfo,
  });
  
  /// Information about the topic
  final ForumTopicInfo topicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicDeleted.fromJson(Map<String, dynamic> json) => ChatEventForumTopicDeleted(
    topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "topic_info": topicInfo.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic_info]: Information about the topic
  @override
  ChatEventForumTopicDeleted copyWith({
    ForumTopicInfo? topicInfo,
  }) => ChatEventForumTopicDeleted(
    topicInfo: topicInfo ?? this.topicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatEventForumTopicPinned** *(chatEventForumTopicPinned)* - child of ChatEventAction
///
/// A pinned forum topic was changed.
///
/// * [oldTopicInfo]: Information about the old pinned topic; may be null *(optional)*.
/// * [newTopicInfo]: Information about the new pinned topic; may be null *(optional)*.
final class ChatEventForumTopicPinned extends ChatEventAction {
  
  /// **ChatEventForumTopicPinned** *(chatEventForumTopicPinned)* - child of ChatEventAction
  ///
  /// A pinned forum topic was changed.
  ///
  /// * [oldTopicInfo]: Information about the old pinned topic; may be null *(optional)*.
  /// * [newTopicInfo]: Information about the new pinned topic; may be null *(optional)*.
  const ChatEventForumTopicPinned({
    this.oldTopicInfo,
    this.newTopicInfo,
  });
  
  /// Information about the old pinned topic; may be null 
  final ForumTopicInfo? oldTopicInfo;

  /// Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;
  
  /// Parse from a json
  factory ChatEventForumTopicPinned.fromJson(Map<String, dynamic> json) => ChatEventForumTopicPinned(
    oldTopicInfo: json['old_topic_info'] == null ? null : ForumTopicInfo.fromJson(json['old_topic_info']),
    newTopicInfo: json['new_topic_info'] == null ? null : ForumTopicInfo.fromJson(json['new_topic_info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "old_topic_info": oldTopicInfo?.toJson(),
      "new_topic_info": newTopicInfo?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [old_topic_info]: Information about the old pinned topic; may be null 
  /// * [new_topic_info]: Information about the new pinned topic; may be null
  @override
  ChatEventForumTopicPinned copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) => ChatEventForumTopicPinned(
    oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
    newTopicInfo: newTopicInfo ?? this.newTopicInfo,
  );

  /// TDLib object type
  static const String objectType = 'chatEventForumTopicPinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
