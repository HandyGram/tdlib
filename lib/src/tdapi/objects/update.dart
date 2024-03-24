part of '../tdapi.dart';

/// **Update** *(update)* - parent
///
/// Contains notifications about data changes.
sealed class Update extends TdObject {
  /// **Update** *(update)* - parent
  ///
  /// Contains notifications about data changes.
  const Update();

  /// a Update return type can be :
  /// * [UpdateAuthorizationState]
  /// * [UpdateNewMessage]
  /// * [UpdateMessageSendAcknowledged]
  /// * [UpdateMessageSendSucceeded]
  /// * [UpdateMessageSendFailed]
  /// * [UpdateMessageContent]
  /// * [UpdateMessageEdited]
  /// * [UpdateMessageIsPinned]
  /// * [UpdateMessageInteractionInfo]
  /// * [UpdateMessageContentOpened]
  /// * [UpdateMessageMentionRead]
  /// * [UpdateMessageUnreadReactions]
  /// * [UpdateMessageLiveLocationViewed]
  /// * [UpdateNewChat]
  /// * [UpdateChatTitle]
  /// * [UpdateChatPhoto]
  /// * [UpdateChatAccentColors]
  /// * [UpdateChatPermissions]
  /// * [UpdateChatLastMessage]
  /// * [UpdateChatPosition]
  /// * [UpdateChatAddedToList]
  /// * [UpdateChatRemovedFromList]
  /// * [UpdateChatReadInbox]
  /// * [UpdateChatReadOutbox]
  /// * [UpdateChatActionBar]
  /// * [UpdateChatAvailableReactions]
  /// * [UpdateChatDraftMessage]
  /// * [UpdateChatEmojiStatus]
  /// * [UpdateChatMessageSender]
  /// * [UpdateChatMessageAutoDeleteTime]
  /// * [UpdateChatNotificationSettings]
  /// * [UpdateChatPendingJoinRequests]
  /// * [UpdateChatReplyMarkup]
  /// * [UpdateChatBackground]
  /// * [UpdateChatTheme]
  /// * [UpdateChatUnreadMentionCount]
  /// * [UpdateChatUnreadReactionCount]
  /// * [UpdateChatVideoChat]
  /// * [UpdateChatDefaultDisableNotification]
  /// * [UpdateChatHasProtectedContent]
  /// * [UpdateChatIsTranslatable]
  /// * [UpdateChatIsMarkedAsUnread]
  /// * [UpdateChatViewAsTopics]
  /// * [UpdateChatBlockList]
  /// * [UpdateChatHasScheduledMessages]
  /// * [UpdateChatFolders]
  /// * [UpdateChatOnlineMemberCount]
  /// * [UpdateSavedMessagesTopic]
  /// * [UpdateSavedMessagesTopicCount]
  /// * [UpdateQuickReplyShortcut]
  /// * [UpdateQuickReplyShortcutDeleted]
  /// * [UpdateQuickReplyShortcuts]
  /// * [UpdateQuickReplyShortcutMessages]
  /// * [UpdateForumTopicInfo]
  /// * [UpdateScopeNotificationSettings]
  /// * [UpdateNotification]
  /// * [UpdateNotificationGroup]
  /// * [UpdateActiveNotifications]
  /// * [UpdateHavePendingNotifications]
  /// * [UpdateDeleteMessages]
  /// * [UpdateChatAction]
  /// * [UpdateUserStatus]
  /// * [UpdateUser]
  /// * [UpdateBasicGroup]
  /// * [UpdateSupergroup]
  /// * [UpdateSecretChat]
  /// * [UpdateUserFullInfo]
  /// * [UpdateBasicGroupFullInfo]
  /// * [UpdateSupergroupFullInfo]
  /// * [UpdateServiceNotification]
  /// * [UpdateFile]
  /// * [UpdateFileGenerationStart]
  /// * [UpdateFileGenerationStop]
  /// * [UpdateFileDownloads]
  /// * [UpdateFileAddedToDownloads]
  /// * [UpdateFileDownload]
  /// * [UpdateFileRemovedFromDownloads]
  /// * [UpdateCall]
  /// * [UpdateGroupCall]
  /// * [UpdateGroupCallParticipant]
  /// * [UpdateNewCallSignalingData]
  /// * [UpdateUserPrivacySettingRules]
  /// * [UpdateUnreadMessageCount]
  /// * [UpdateUnreadChatCount]
  /// * [UpdateStory]
  /// * [UpdateStoryDeleted]
  /// * [UpdateStorySendSucceeded]
  /// * [UpdateStorySendFailed]
  /// * [UpdateChatActiveStories]
  /// * [UpdateStoryListChatCount]
  /// * [UpdateStoryStealthMode]
  /// * [UpdateOption]
  /// * [UpdateStickerSet]
  /// * [UpdateInstalledStickerSets]
  /// * [UpdateTrendingStickerSets]
  /// * [UpdateRecentStickers]
  /// * [UpdateFavoriteStickers]
  /// * [UpdateSavedAnimations]
  /// * [UpdateSavedNotificationSounds]
  /// * [UpdateDefaultBackground]
  /// * [UpdateChatThemes]
  /// * [UpdateAccentColors]
  /// * [UpdateProfileAccentColors]
  /// * [UpdateLanguagePackStrings]
  /// * [UpdateConnectionState]
  /// * [UpdateTermsOfService]
  /// * [UpdateUsersNearby]
  /// * [UpdateUnconfirmedSession]
  /// * [UpdateAttachmentMenuBots]
  /// * [UpdateWebAppMessageSent]
  /// * [UpdateActiveEmojiReactions]
  /// * [UpdateDefaultReactionType]
  /// * [UpdateSavedMessagesTags]
  /// * [UpdateSpeechRecognitionTrial]
  /// * [UpdateDiceEmojis]
  /// * [UpdateAnimatedEmojiMessageClicked]
  /// * [UpdateAnimationSearchParameters]
  /// * [UpdateSuggestedActions]
  /// * [UpdateAddChatMembersPrivacyForbidden]
  /// * [UpdateAutosaveSettings]
  /// * [UpdateNewInlineQuery]
  /// * [UpdateNewChosenInlineResult]
  /// * [UpdateNewCallbackQuery]
  /// * [UpdateNewInlineCallbackQuery]
  /// * [UpdateNewShippingQuery]
  /// * [UpdateNewPreCheckoutQuery]
  /// * [UpdateNewCustomEvent]
  /// * [UpdateNewCustomQuery]
  /// * [UpdatePoll]
  /// * [UpdatePollAnswer]
  /// * [UpdateChatMember]
  /// * [UpdateNewChatJoinRequest]
  /// * [UpdateChatBoost]
  /// * [UpdateMessageReaction]
  /// * [UpdateMessageReactions]
  factory Update.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UpdateAuthorizationState.defaultObjectId:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.defaultObjectId:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.defaultObjectId:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.defaultObjectId:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.defaultObjectId:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.defaultObjectId:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.defaultObjectId:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageIsPinned.defaultObjectId:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.defaultObjectId:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageContentOpened.defaultObjectId:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.defaultObjectId:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageUnreadReactions.defaultObjectId:
        return UpdateMessageUnreadReactions.fromJson(json);
      case UpdateMessageLiveLocationViewed.defaultObjectId:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateNewChat.defaultObjectId:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.defaultObjectId:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.defaultObjectId:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatAccentColors.defaultObjectId:
        return UpdateChatAccentColors.fromJson(json);
      case UpdateChatPermissions.defaultObjectId:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.defaultObjectId:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.defaultObjectId:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatAddedToList.defaultObjectId:
        return UpdateChatAddedToList.fromJson(json);
      case UpdateChatRemovedFromList.defaultObjectId:
        return UpdateChatRemovedFromList.fromJson(json);
      case UpdateChatReadInbox.defaultObjectId:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.defaultObjectId:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatActionBar.defaultObjectId:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatAvailableReactions.defaultObjectId:
        return UpdateChatAvailableReactions.fromJson(json);
      case UpdateChatDraftMessage.defaultObjectId:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatEmojiStatus.defaultObjectId:
        return UpdateChatEmojiStatus.fromJson(json);
      case UpdateChatMessageSender.defaultObjectId:
        return UpdateChatMessageSender.fromJson(json);
      case UpdateChatMessageAutoDeleteTime.defaultObjectId:
        return UpdateChatMessageAutoDeleteTime.fromJson(json);
      case UpdateChatNotificationSettings.defaultObjectId:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateChatPendingJoinRequests.defaultObjectId:
        return UpdateChatPendingJoinRequests.fromJson(json);
      case UpdateChatReplyMarkup.defaultObjectId:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatBackground.defaultObjectId:
        return UpdateChatBackground.fromJson(json);
      case UpdateChatTheme.defaultObjectId:
        return UpdateChatTheme.fromJson(json);
      case UpdateChatUnreadMentionCount.defaultObjectId:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatUnreadReactionCount.defaultObjectId:
        return UpdateChatUnreadReactionCount.fromJson(json);
      case UpdateChatVideoChat.defaultObjectId:
        return UpdateChatVideoChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.defaultObjectId:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatHasProtectedContent.defaultObjectId:
        return UpdateChatHasProtectedContent.fromJson(json);
      case UpdateChatIsTranslatable.defaultObjectId:
        return UpdateChatIsTranslatable.fromJson(json);
      case UpdateChatIsMarkedAsUnread.defaultObjectId:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatViewAsTopics.defaultObjectId:
        return UpdateChatViewAsTopics.fromJson(json);
      case UpdateChatBlockList.defaultObjectId:
        return UpdateChatBlockList.fromJson(json);
      case UpdateChatHasScheduledMessages.defaultObjectId:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatFolders.defaultObjectId:
        return UpdateChatFolders.fromJson(json);
      case UpdateChatOnlineMemberCount.defaultObjectId:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateSavedMessagesTopic.defaultObjectId:
        return UpdateSavedMessagesTopic.fromJson(json);
      case UpdateSavedMessagesTopicCount.defaultObjectId:
        return UpdateSavedMessagesTopicCount.fromJson(json);
      case UpdateQuickReplyShortcut.defaultObjectId:
        return UpdateQuickReplyShortcut.fromJson(json);
      case UpdateQuickReplyShortcutDeleted.defaultObjectId:
        return UpdateQuickReplyShortcutDeleted.fromJson(json);
      case UpdateQuickReplyShortcuts.defaultObjectId:
        return UpdateQuickReplyShortcuts.fromJson(json);
      case UpdateQuickReplyShortcutMessages.defaultObjectId:
        return UpdateQuickReplyShortcutMessages.fromJson(json);
      case UpdateForumTopicInfo.defaultObjectId:
        return UpdateForumTopicInfo.fromJson(json);
      case UpdateScopeNotificationSettings.defaultObjectId:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateNotification.defaultObjectId:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.defaultObjectId:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.defaultObjectId:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.defaultObjectId:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.defaultObjectId:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateChatAction.defaultObjectId:
        return UpdateChatAction.fromJson(json);
      case UpdateUserStatus.defaultObjectId:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.defaultObjectId:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.defaultObjectId:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.defaultObjectId:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.defaultObjectId:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.defaultObjectId:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.defaultObjectId:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.defaultObjectId:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.defaultObjectId:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.defaultObjectId:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.defaultObjectId:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.defaultObjectId:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateFileDownloads.defaultObjectId:
        return UpdateFileDownloads.fromJson(json);
      case UpdateFileAddedToDownloads.defaultObjectId:
        return UpdateFileAddedToDownloads.fromJson(json);
      case UpdateFileDownload.defaultObjectId:
        return UpdateFileDownload.fromJson(json);
      case UpdateFileRemovedFromDownloads.defaultObjectId:
        return UpdateFileRemovedFromDownloads.fromJson(json);
      case UpdateCall.defaultObjectId:
        return UpdateCall.fromJson(json);
      case UpdateGroupCall.defaultObjectId:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.defaultObjectId:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateNewCallSignalingData.defaultObjectId:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateUserPrivacySettingRules.defaultObjectId:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.defaultObjectId:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.defaultObjectId:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateStory.defaultObjectId:
        return UpdateStory.fromJson(json);
      case UpdateStoryDeleted.defaultObjectId:
        return UpdateStoryDeleted.fromJson(json);
      case UpdateStorySendSucceeded.defaultObjectId:
        return UpdateStorySendSucceeded.fromJson(json);
      case UpdateStorySendFailed.defaultObjectId:
        return UpdateStorySendFailed.fromJson(json);
      case UpdateChatActiveStories.defaultObjectId:
        return UpdateChatActiveStories.fromJson(json);
      case UpdateStoryListChatCount.defaultObjectId:
        return UpdateStoryListChatCount.fromJson(json);
      case UpdateStoryStealthMode.defaultObjectId:
        return UpdateStoryStealthMode.fromJson(json);
      case UpdateOption.defaultObjectId:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.defaultObjectId:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.defaultObjectId:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.defaultObjectId:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.defaultObjectId:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.defaultObjectId:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.defaultObjectId:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSavedNotificationSounds.defaultObjectId:
        return UpdateSavedNotificationSounds.fromJson(json);
      case UpdateDefaultBackground.defaultObjectId:
        return UpdateDefaultBackground.fromJson(json);
      case UpdateChatThemes.defaultObjectId:
        return UpdateChatThemes.fromJson(json);
      case UpdateAccentColors.defaultObjectId:
        return UpdateAccentColors.fromJson(json);
      case UpdateProfileAccentColors.defaultObjectId:
        return UpdateProfileAccentColors.fromJson(json);
      case UpdateLanguagePackStrings.defaultObjectId:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.defaultObjectId:
        return UpdateConnectionState.fromJson(json);
      case UpdateTermsOfService.defaultObjectId:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUsersNearby.defaultObjectId:
        return UpdateUsersNearby.fromJson(json);
      case UpdateUnconfirmedSession.defaultObjectId:
        return UpdateUnconfirmedSession.fromJson(json);
      case UpdateAttachmentMenuBots.defaultObjectId:
        return UpdateAttachmentMenuBots.fromJson(json);
      case UpdateWebAppMessageSent.defaultObjectId:
        return UpdateWebAppMessageSent.fromJson(json);
      case UpdateActiveEmojiReactions.defaultObjectId:
        return UpdateActiveEmojiReactions.fromJson(json);
      case UpdateDefaultReactionType.defaultObjectId:
        return UpdateDefaultReactionType.fromJson(json);
      case UpdateSavedMessagesTags.defaultObjectId:
        return UpdateSavedMessagesTags.fromJson(json);
      case UpdateSpeechRecognitionTrial.defaultObjectId:
        return UpdateSpeechRecognitionTrial.fromJson(json);
      case UpdateDiceEmojis.defaultObjectId:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimatedEmojiMessageClicked.defaultObjectId:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);
      case UpdateAnimationSearchParameters.defaultObjectId:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.defaultObjectId:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateAddChatMembersPrivacyForbidden.defaultObjectId:
        return UpdateAddChatMembersPrivacyForbidden.fromJson(json);
      case UpdateAutosaveSettings.defaultObjectId:
        return UpdateAutosaveSettings.fromJson(json);
      case UpdateNewInlineQuery.defaultObjectId:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.defaultObjectId:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.defaultObjectId:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.defaultObjectId:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.defaultObjectId:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.defaultObjectId:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.defaultObjectId:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.defaultObjectId:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.defaultObjectId:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.defaultObjectId:
        return UpdatePollAnswer.fromJson(json);
      case UpdateChatMember.defaultObjectId:
        return UpdateChatMember.fromJson(json);
      case UpdateNewChatJoinRequest.defaultObjectId:
        return UpdateNewChatJoinRequest.fromJson(json);
      case UpdateChatBoost.defaultObjectId:
        return UpdateChatBoost.fromJson(json);
      case UpdateMessageReaction.defaultObjectId:
        return UpdateMessageReaction.fromJson(json);
      case UpdateMessageReactions.defaultObjectId:
        return UpdateMessageReactions.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of Update)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  Update copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'update';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAuthorizationState** *(updateAuthorizationState)* - child of Update
///
/// The user authorization state has changed.
///
/// * [authorizationState]: New authorization state.
final class UpdateAuthorizationState extends Update {
  /// **UpdateAuthorizationState** *(updateAuthorizationState)* - child of Update
  ///
  /// The user authorization state has changed.
  ///
  /// * [authorizationState]: New authorization state.
  const UpdateAuthorizationState({
    required this.authorizationState,
    this.extra,
    this.clientId,
  });

  /// New authorization state
  final AuthorizationState authorizationState;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) =>
      UpdateAuthorizationState(
        authorizationState:
            AuthorizationState.fromJson(json['authorization_state']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "authorization_state": authorizationState.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [authorization_state]: New authorization state
  @override
  UpdateAuthorizationState copyWith({
    AuthorizationState? authorizationState,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAuthorizationState(
        authorizationState: authorizationState ?? this.authorizationState,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAuthorizationState';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewMessage** *(updateNewMessage)* - child of Update
///
/// A new message was received; can also be an outgoing message.
///
/// * [message]: The new message.
final class UpdateNewMessage extends Update {
  /// **UpdateNewMessage** *(updateNewMessage)* - child of Update
  ///
  /// A new message was received; can also be an outgoing message.
  ///
  /// * [message]: The new message.
  const UpdateNewMessage({
    required this.message,
    this.extra,
    this.clientId,
  });

  /// The new message
  final Message message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) =>
      UpdateNewMessage(
        message: Message.fromJson(json['message']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message": message.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: The new message
  @override
  UpdateNewMessage copyWith({
    Message? message,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewMessage(
        message: message ?? this.message,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageSendAcknowledged** *(updateMessageSendAcknowledged)* - child of Update
///
/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully.. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.
///
/// * [chatId]: The chat identifier of the sent message.
/// * [messageId]: A temporary message identifier.
final class UpdateMessageSendAcknowledged extends Update {
  /// **UpdateMessageSendAcknowledged** *(updateMessageSendAcknowledged)* - child of Update
  ///
  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully.. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.
  ///
  /// * [chatId]: The chat identifier of the sent message.
  /// * [messageId]: A temporary message identifier.
  const UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// The chat identifier of the sent message
  final int chatId;

  /// A temporary message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendAcknowledged(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: The chat identifier of the sent message
  /// * [message_id]: A temporary message identifier
  @override
  UpdateMessageSendAcknowledged copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageSendAcknowledged(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageSendAcknowledged';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageSendSucceeded** *(updateMessageSendSucceeded)* - child of Update
///
/// A message has been successfully sent.
///
/// * [message]: The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
/// * [oldMessageId]: The previous temporary message identifier.
final class UpdateMessageSendSucceeded extends Update {
  /// **UpdateMessageSendSucceeded** *(updateMessageSendSucceeded)* - child of Update
  ///
  /// A message has been successfully sent.
  ///
  /// * [message]: The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
  /// * [oldMessageId]: The previous temporary message identifier.
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
    this.extra,
    this.clientId,
  });

  /// The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
  final Message message;

  /// The previous temporary message identifier
  final int oldMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendSucceeded(
        message: Message.fromJson(json['message']),
        oldMessageId: json['old_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
  /// * [old_message_id]: The previous temporary message identifier
  @override
  UpdateMessageSendSucceeded copyWith({
    Message? message,
    int? oldMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageSendSucceeded(
        message: message ?? this.message,
        oldMessageId: oldMessageId ?? this.oldMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageSendSucceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageSendFailed** *(updateMessageSendFailed)* - child of Update
///
/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.
///
/// * [message]: The failed to send message.
/// * [oldMessageId]: The previous temporary message identifier.
/// * [error]: The cause of the message sending failure.
final class UpdateMessageSendFailed extends Update {
  /// **UpdateMessageSendFailed** *(updateMessageSendFailed)* - child of Update
  ///
  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.
  ///
  /// * [message]: The failed to send message.
  /// * [oldMessageId]: The previous temporary message identifier.
  /// * [error]: The cause of the message sending failure.
  const UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.error,
    this.extra,
    this.clientId,
  });

  /// The failed to send message
  final Message message;

  /// The previous temporary message identifier
  final int oldMessageId;

  /// The cause of the message sending failure
  final TdError error;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendFailed(
        message: Message.fromJson(json['message']),
        oldMessageId: json['old_message_id'],
        error: TdError.fromJson(json['error']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "error": error.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message]: The failed to send message
  /// * [old_message_id]: The previous temporary message identifier
  /// * [error]: The cause of the message sending failure
  @override
  UpdateMessageSendFailed copyWith({
    Message? message,
    int? oldMessageId,
    TdError? error,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageSendFailed(
        message: message ?? this.message,
        oldMessageId: oldMessageId ?? this.oldMessageId,
        error: error ?? this.error,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageSendFailed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageContent** *(updateMessageContent)* - child of Update
///
/// The message content has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [newContent]: New message content.
final class UpdateMessageContent extends Update {
  /// **UpdateMessageContent** *(updateMessageContent)* - child of Update
  ///
  /// The message content has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [newContent]: New message content.
  const UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// New message content
  final MessageContent newContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) =>
      UpdateMessageContent(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        newContent: MessageContent.fromJson(json['new_content']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "new_content": newContent.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [new_content]: New message content
  @override
  UpdateMessageContent copyWith({
    int? chatId,
    int? messageId,
    MessageContent? newContent,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageContent(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        newContent: newContent ?? this.newContent,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageContent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageEdited** *(updateMessageEdited)* - child of Update
///
/// A message was edited. Changes in the message content will come in a separate updateMessageContent.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [editDate]: Point in time (Unix timestamp) when the message was edited.
/// * [replyMarkup]: New message reply markup; may be null *(optional)*.
final class UpdateMessageEdited extends Update {
  /// **UpdateMessageEdited** *(updateMessageEdited)* - child of Update
  ///
  /// A message was edited. Changes in the message content will come in a separate updateMessageContent.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [editDate]: Point in time (Unix timestamp) when the message was edited.
  /// * [replyMarkup]: New message reply markup; may be null *(optional)*.
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) =>
      UpdateMessageEdited(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        editDate: json['edit_date'],
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
      "chat_id": chatId,
      "message_id": messageId,
      "edit_date": editDate,
      "reply_markup": replyMarkup?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [edit_date]: Point in time (Unix timestamp) when the message was edited
  /// * [reply_markup]: New message reply markup; may be null
  @override
  UpdateMessageEdited copyWith({
    int? chatId,
    int? messageId,
    int? editDate,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageEdited(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        editDate: editDate ?? this.editDate,
        replyMarkup: replyMarkup ?? this.replyMarkup,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageEdited';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageIsPinned** *(updateMessageIsPinned)* - child of Update
///
/// The message pinned state was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: The message identifier.
/// * [isPinned]: True, if the message is pinned.
final class UpdateMessageIsPinned extends Update {
  /// **UpdateMessageIsPinned** *(updateMessageIsPinned)* - child of Update
  ///
  /// The message pinned state was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: The message identifier.
  /// * [isPinned]: True, if the message is pinned.
  const UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The message identifier
  final int messageId;

  /// True, if the message is pinned
  final bool isPinned;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) =>
      UpdateMessageIsPinned(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        isPinned: json['is_pinned'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: The message identifier
  /// * [is_pinned]: True, if the message is pinned
  @override
  UpdateMessageIsPinned copyWith({
    int? chatId,
    int? messageId,
    bool? isPinned,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageIsPinned(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        isPinned: isPinned ?? this.isPinned,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageIsPinned';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageInteractionInfo** *(updateMessageInteractionInfo)* - child of Update
///
/// The information about interactions with a message has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [interactionInfo]: New information about interactions with the message; may be null *(optional)*.
final class UpdateMessageInteractionInfo extends Update {
  /// **UpdateMessageInteractionInfo** *(updateMessageInteractionInfo)* - child of Update
  ///
  /// The information about interactions with a message has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [interactionInfo]: New information about interactions with the message; may be null *(optional)*.
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// New information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) =>
      UpdateMessageInteractionInfo(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        interactionInfo: json['interaction_info'] == null
            ? null
            : MessageInteractionInfo.fromJson(json['interaction_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "interaction_info": interactionInfo?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [interaction_info]: New information about interactions with the message; may be null
  @override
  UpdateMessageInteractionInfo copyWith({
    int? chatId,
    int? messageId,
    MessageInteractionInfo? interactionInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageInteractionInfo(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        interactionInfo: interactionInfo ?? this.interactionInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageInteractionInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageContentOpened** *(updateMessageContentOpened)* - child of Update
///
/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
final class UpdateMessageContentOpened extends Update {
  /// **UpdateMessageContentOpened** *(updateMessageContentOpened)* - child of Update
  ///
  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) =>
      UpdateMessageContentOpened(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  @override
  UpdateMessageContentOpened copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageContentOpened(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageContentOpened';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageMentionRead** *(updateMessageMentionRead)* - child of Update
///
/// A message with an unread mention was read.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [unreadMentionCount]: The new number of unread mention messages left in the chat.
final class UpdateMessageMentionRead extends Update {
  /// **UpdateMessageMentionRead** *(updateMessageMentionRead)* - child of Update
  ///
  /// A message with an unread mention was read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [unreadMentionCount]: The new number of unread mention messages left in the chat.
  const UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// The new number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) =>
      UpdateMessageMentionRead(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        unreadMentionCount: json['unread_mention_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_mention_count": unreadMentionCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [unread_mention_count]: The new number of unread mention messages left in the chat
  @override
  UpdateMessageMentionRead copyWith({
    int? chatId,
    int? messageId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageMentionRead(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageMentionRead';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageUnreadReactions** *(updateMessageUnreadReactions)* - child of Update
///
/// The list of unread reactions added to a message was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [unreadReactions]: The new list of unread reactions.
/// * [unreadReactionCount]: The new number of messages with unread reactions left in the chat.
final class UpdateMessageUnreadReactions extends Update {
  /// **UpdateMessageUnreadReactions** *(updateMessageUnreadReactions)* - child of Update
  ///
  /// The list of unread reactions added to a message was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [unreadReactions]: The new list of unread reactions.
  /// * [unreadReactionCount]: The new number of messages with unread reactions left in the chat.
  const UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// The new number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageUnreadReactions.fromJson(Map<String, dynamic> json) =>
      UpdateMessageUnreadReactions(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        unreadReactions: List<UnreadReaction>.from(
            (json['unread_reactions'] ?? [])
                .map((item) => UnreadReaction.fromJson(item))
                .toList()),
        unreadReactionCount: json['unread_reaction_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_reactions": unreadReactions.map((i) => i.toJson()).toList(),
      "unread_reaction_count": unreadReactionCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [unread_reactions]: The new list of unread reactions
  /// * [unread_reaction_count]: The new number of messages with unread reactions left in the chat
  @override
  UpdateMessageUnreadReactions copyWith({
    int? chatId,
    int? messageId,
    List<UnreadReaction>? unreadReactions,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageUnreadReactions(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        unreadReactions: unreadReactions ?? this.unreadReactions,
        unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageUnreadReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageLiveLocationViewed** *(updateMessageLiveLocationViewed)* - child of Update
///
/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location.
///
/// * [chatId]: Identifier of the chat with the live location message.
/// * [messageId]: Identifier of the message with live location.
final class UpdateMessageLiveLocationViewed extends Update {
  /// **UpdateMessageLiveLocationViewed** *(updateMessageLiveLocationViewed)* - child of Update
  ///
  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location.
  ///
  /// * [chatId]: Identifier of the chat with the live location message.
  /// * [messageId]: Identifier of the message with live location.
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// Identifier of the chat with the live location message
  final int chatId;

  /// Identifier of the message with live location
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) =>
      UpdateMessageLiveLocationViewed(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat with the live location message
  /// * [message_id]: Identifier of the message with live location
  @override
  UpdateMessageLiveLocationViewed copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageLiveLocationViewed(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageLiveLocationViewed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewChat** *(updateNewChat)* - child of Update
///
/// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.
///
/// * [chat]: The chat.
final class UpdateNewChat extends Update {
  /// **UpdateNewChat** *(updateNewChat)* - child of Update
  ///
  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.
  ///
  /// * [chat]: The chat.
  const UpdateNewChat({
    required this.chat,
    this.extra,
    this.clientId,
  });

  /// The chat
  final Chat chat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewChat.fromJson(Map<String, dynamic> json) => UpdateNewChat(
        chat: Chat.fromJson(json['chat']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat": chat.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat]: The chat
  @override
  UpdateNewChat copyWith({
    Chat? chat,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewChat(
        chat: chat ?? this.chat,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatTitle** *(updateChatTitle)* - child of Update
///
/// The title of a chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [title]: The new chat title.
final class UpdateChatTitle extends Update {
  /// **UpdateChatTitle** *(updateChatTitle)* - child of Update
  ///
  /// The title of a chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [title]: The new chat title.
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat title
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) =>
      UpdateChatTitle(
        chatId: json['chat_id'],
        title: json['title'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "title": title,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [title]: The new chat title
  @override
  UpdateChatTitle copyWith({
    int? chatId,
    String? title,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatTitle(
        chatId: chatId ?? this.chatId,
        title: title ?? this.title,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatTitle';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatPhoto** *(updateChatPhoto)* - child of Update
///
/// A chat photo was changed.
///
/// * [chatId]: Chat identifier.
/// * [photo]: The new chat photo; may be null *(optional)*.
final class UpdateChatPhoto extends Update {
  /// **UpdateChatPhoto** *(updateChatPhoto)* - child of Update
  ///
  /// A chat photo was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [photo]: The new chat photo; may be null *(optional)*.
  const UpdateChatPhoto({
    required this.chatId,
    this.photo,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) =>
      UpdateChatPhoto(
        chatId: json['chat_id'],
        photo: json['photo'] == null
            ? null
            : ChatPhotoInfo.fromJson(json['photo']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "photo": photo?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [photo]: The new chat photo; may be null
  @override
  UpdateChatPhoto copyWith({
    int? chatId,
    ChatPhotoInfo? photo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatPhoto(
        chatId: chatId ?? this.chatId,
        photo: photo ?? this.photo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatAccentColors** *(updateChatAccentColors)* - child of Update
///
/// Chat accent colors have changed.
///
/// * [chatId]: Chat identifier.
/// * [accentColorId]: The new chat accent color identifier.
/// * [backgroundCustomEmojiId]: The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none.
/// * [profileAccentColorId]: The new chat profile accent color identifier; -1 if none.
/// * [profileBackgroundCustomEmojiId]: The new identifier of a custom emoji to be shown on the profile background; 0 if none.
final class UpdateChatAccentColors extends Update {
  /// **UpdateChatAccentColors** *(updateChatAccentColors)* - child of Update
  ///
  /// Chat accent colors have changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [accentColorId]: The new chat accent color identifier.
  /// * [backgroundCustomEmojiId]: The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none.
  /// * [profileAccentColorId]: The new chat profile accent color identifier; -1 if none.
  /// * [profileBackgroundCustomEmojiId]: The new identifier of a custom emoji to be shown on the profile background; 0 if none.
  const UpdateChatAccentColors({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat accent color identifier
  final int accentColorId;

  /// The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// The new chat profile accent color identifier; -1 if none
  final int profileAccentColorId;

  /// The new identifier of a custom emoji to be shown on the profile background; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateChatAccentColors(
        chatId: json['chat_id'],
        accentColorId: json['accent_color_id'],
        backgroundCustomEmojiId: json['background_custom_emoji_id'] is int
            ? json['background_custom_emoji_id']
            : int.tryParse(json['background_custom_emoji_id'] ?? "") ?? 0,
        profileAccentColorId: json['profile_accent_color_id'],
        profileBackgroundCustomEmojiId:
            json['profile_background_custom_emoji_id'] is int
                ? json['profile_background_custom_emoji_id']
                : int.tryParse(
                        json['profile_background_custom_emoji_id'] ?? "") ??
                    0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [accent_color_id]: The new chat accent color identifier
  /// * [background_custom_emoji_id]: The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none
  /// * [profile_accent_color_id]: The new chat profile accent color identifier; -1 if none
  /// * [profile_background_custom_emoji_id]: The new identifier of a custom emoji to be shown on the profile background; 0 if none
  @override
  UpdateChatAccentColors copyWith({
    int? chatId,
    int? accentColorId,
    int? backgroundCustomEmojiId,
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatAccentColors(
        chatId: chatId ?? this.chatId,
        accentColorId: accentColorId ?? this.accentColorId,
        backgroundCustomEmojiId:
            backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
        profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
        profileBackgroundCustomEmojiId: profileBackgroundCustomEmojiId ??
            this.profileBackgroundCustomEmojiId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatAccentColors';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatPermissions** *(updateChatPermissions)* - child of Update
///
/// Chat permissions were changed.
///
/// * [chatId]: Chat identifier.
/// * [permissions]: The new chat permissions.
final class UpdateChatPermissions extends Update {
  /// **UpdateChatPermissions** *(updateChatPermissions)* - child of Update
  ///
  /// Chat permissions were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [permissions]: The new chat permissions.
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat permissions
  final ChatPermissions permissions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) =>
      UpdateChatPermissions(
        chatId: json['chat_id'],
        permissions: ChatPermissions.fromJson(json['permissions']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [permissions]: The new chat permissions
  @override
  UpdateChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatPermissions(
        chatId: chatId ?? this.chatId,
        permissions: permissions ?? this.permissions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatPermissions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatLastMessage** *(updateChatLastMessage)* - child of Update
///
/// The last message of a chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [lastMessage]: The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update *(optional)*.
/// * [positions]: The new chat positions in the chat lists.
final class UpdateChatLastMessage extends Update {
  /// **UpdateChatLastMessage** *(updateChatLastMessage)* - child of Update
  ///
  /// The last message of a chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastMessage]: The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update *(optional)*.
  /// * [positions]: The new chat positions in the chat lists.
  const UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update
  final Message? lastMessage;

  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) =>
      UpdateChatLastMessage(
        chatId: json['chat_id'],
        lastMessage: json['last_message'] == null
            ? null
            : Message.fromJson(json['last_message']),
        positions: List<ChatPosition>.from((json['positions'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [last_message]: The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update
  /// * [positions]: The new chat positions in the chat lists
  @override
  UpdateChatLastMessage copyWith({
    int? chatId,
    Message? lastMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatLastMessage(
        chatId: chatId ?? this.chatId,
        lastMessage: lastMessage ?? this.lastMessage,
        positions: positions ?? this.positions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatLastMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatPosition** *(updateChatPosition)* - child of Update
///
/// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.
///
/// * [chatId]: Chat identifier.
/// * [position]: New chat position. If new order is 0, then the chat needs to be removed from the list.
final class UpdateChatPosition extends Update {
  /// **UpdateChatPosition** *(updateChatPosition)* - child of Update
  ///
  /// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.
  ///
  /// * [chatId]: Chat identifier.
  /// * [position]: New chat position. If new order is 0, then the chat needs to be removed from the list.
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New chat position. If new order is 0, then the chat needs to be removed from the list
  final ChatPosition position;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) =>
      UpdateChatPosition(
        chatId: json['chat_id'],
        position: ChatPosition.fromJson(json['position']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "position": position.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [position]: New chat position. If new order is 0, then the chat needs to be removed from the list
  @override
  UpdateChatPosition copyWith({
    int? chatId,
    ChatPosition? position,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatPosition(
        chatId: chatId ?? this.chatId,
        position: position ?? this.position,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatPosition';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatAddedToList** *(updateChatAddedToList)* - child of Update
///
/// A chat was added to a chat list.
///
/// * [chatId]: Chat identifier.
/// * [chatList]: The chat list to which the chat was added.
final class UpdateChatAddedToList extends Update {
  /// **UpdateChatAddedToList** *(updateChatAddedToList)* - child of Update
  ///
  /// A chat was added to a chat list.
  ///
  /// * [chatId]: Chat identifier.
  /// * [chatList]: The chat list to which the chat was added.
  const UpdateChatAddedToList({
    required this.chatId,
    required this.chatList,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The chat list to which the chat was added
  final ChatList chatList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatAddedToList.fromJson(Map<String, dynamic> json) =>
      UpdateChatAddedToList(
        chatId: json['chat_id'],
        chatList: ChatList.fromJson(json['chat_list']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "chat_list": chatList.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [chat_list]: The chat list to which the chat was added
  @override
  UpdateChatAddedToList copyWith({
    int? chatId,
    ChatList? chatList,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatAddedToList(
        chatId: chatId ?? this.chatId,
        chatList: chatList ?? this.chatList,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatAddedToList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatRemovedFromList** *(updateChatRemovedFromList)* - child of Update
///
/// A chat was removed from a chat list.
///
/// * [chatId]: Chat identifier.
/// * [chatList]: The chat list from which the chat was removed.
final class UpdateChatRemovedFromList extends Update {
  /// **UpdateChatRemovedFromList** *(updateChatRemovedFromList)* - child of Update
  ///
  /// A chat was removed from a chat list.
  ///
  /// * [chatId]: Chat identifier.
  /// * [chatList]: The chat list from which the chat was removed.
  const UpdateChatRemovedFromList({
    required this.chatId,
    required this.chatList,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The chat list from which the chat was removed
  final ChatList chatList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatRemovedFromList.fromJson(Map<String, dynamic> json) =>
      UpdateChatRemovedFromList(
        chatId: json['chat_id'],
        chatList: ChatList.fromJson(json['chat_list']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "chat_list": chatList.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [chat_list]: The chat list from which the chat was removed
  @override
  UpdateChatRemovedFromList copyWith({
    int? chatId,
    ChatList? chatList,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatRemovedFromList(
        chatId: chatId ?? this.chatId,
        chatList: chatList ?? this.chatList,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatRemovedFromList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatReadInbox** *(updateChatReadInbox)* - child of Update
///
/// Incoming messages were read or the number of unread messages has been changed.
///
/// * [chatId]: Chat identifier.
/// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
/// * [unreadCount]: The number of unread messages left in the chat.
final class UpdateChatReadInbox extends Update {
  /// **UpdateChatReadInbox** *(updateChatReadInbox)* - child of Update
  ///
  /// Incoming messages were read or the number of unread messages has been changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
  /// * [unreadCount]: The number of unread messages left in the chat.
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// The number of unread messages left in the chat
  final int unreadCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) =>
      UpdateChatReadInbox(
        chatId: json['chat_id'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        unreadCount: json['unread_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "unread_count": unreadCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [last_read_inbox_message_id]: Identifier of the last read incoming message
  /// * [unread_count]: The number of unread messages left in the chat
  @override
  UpdateChatReadInbox copyWith({
    int? chatId,
    int? lastReadInboxMessageId,
    int? unreadCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatReadInbox(
        chatId: chatId ?? this.chatId,
        lastReadInboxMessageId:
            lastReadInboxMessageId ?? this.lastReadInboxMessageId,
        unreadCount: unreadCount ?? this.unreadCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatReadInbox';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatReadOutbox** *(updateChatReadOutbox)* - child of Update
///
/// Outgoing messages were read.
///
/// * [chatId]: Chat identifier.
/// * [lastReadOutboxMessageId]: Identifier of last read outgoing message.
final class UpdateChatReadOutbox extends Update {
  /// **UpdateChatReadOutbox** *(updateChatReadOutbox)* - child of Update
  ///
  /// Outgoing messages were read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastReadOutboxMessageId]: Identifier of last read outgoing message.
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) =>
      UpdateChatReadOutbox(
        chatId: json['chat_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [last_read_outbox_message_id]: Identifier of last read outgoing message
  @override
  UpdateChatReadOutbox copyWith({
    int? chatId,
    int? lastReadOutboxMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatReadOutbox(
        chatId: chatId ?? this.chatId,
        lastReadOutboxMessageId:
            lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatReadOutbox';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatActionBar** *(updateChatActionBar)* - child of Update
///
/// The chat action bar was changed.
///
/// * [chatId]: Chat identifier.
/// * [actionBar]: The new value of the action bar; may be null *(optional)*.
final class UpdateChatActionBar extends Update {
  /// **UpdateChatActionBar** *(updateChatActionBar)* - child of Update
  ///
  /// The chat action bar was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [actionBar]: The new value of the action bar; may be null *(optional)*.
  const UpdateChatActionBar({
    required this.chatId,
    this.actionBar,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) =>
      UpdateChatActionBar(
        chatId: json['chat_id'],
        actionBar: json['action_bar'] == null
            ? null
            : ChatActionBar.fromJson(json['action_bar']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "action_bar": actionBar?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [action_bar]: The new value of the action bar; may be null
  @override
  UpdateChatActionBar copyWith({
    int? chatId,
    ChatActionBar? actionBar,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatActionBar(
        chatId: chatId ?? this.chatId,
        actionBar: actionBar ?? this.actionBar,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatActionBar';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatAvailableReactions** *(updateChatAvailableReactions)* - child of Update
///
/// The chat available reactions were changed.
///
/// * [chatId]: Chat identifier.
/// * [availableReactions]: The new reactions, available in the chat.
final class UpdateChatAvailableReactions extends Update {
  /// **UpdateChatAvailableReactions** *(updateChatAvailableReactions)* - child of Update
  ///
  /// The chat available reactions were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [availableReactions]: The new reactions, available in the chat.
  const UpdateChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new reactions, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatAvailableReactions.fromJson(Map<String, dynamic> json) =>
      UpdateChatAvailableReactions(
        chatId: json['chat_id'],
        availableReactions:
            ChatAvailableReactions.fromJson(json['available_reactions']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "available_reactions": availableReactions.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [available_reactions]: The new reactions, available in the chat
  @override
  UpdateChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatAvailableReactions(
        chatId: chatId ?? this.chatId,
        availableReactions: availableReactions ?? this.availableReactions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatAvailableReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatDraftMessage** *(updateChatDraftMessage)* - child of Update
///
/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.
///
/// * [chatId]: Chat identifier.
/// * [draftMessage]: The new draft message; may be null if none *(optional)*.
/// * [positions]: The new chat positions in the chat lists.
final class UpdateChatDraftMessage extends Update {
  /// **UpdateChatDraftMessage** *(updateChatDraftMessage)* - child of Update
  ///
  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.
  ///
  /// * [chatId]: Chat identifier.
  /// * [draftMessage]: The new draft message; may be null if none *(optional)*.
  /// * [positions]: The new chat positions in the chat lists.
  const UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new draft message; may be null if none
  final DraftMessage? draftMessage;

  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) =>
      UpdateChatDraftMessage(
        chatId: json['chat_id'],
        draftMessage: json['draft_message'] == null
            ? null
            : DraftMessage.fromJson(json['draft_message']),
        positions: List<ChatPosition>.from((json['positions'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "draft_message": draftMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [draft_message]: The new draft message; may be null if none
  /// * [positions]: The new chat positions in the chat lists
  @override
  UpdateChatDraftMessage copyWith({
    int? chatId,
    DraftMessage? draftMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatDraftMessage(
        chatId: chatId ?? this.chatId,
        draftMessage: draftMessage ?? this.draftMessage,
        positions: positions ?? this.positions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatDraftMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatEmojiStatus** *(updateChatEmojiStatus)* - child of Update
///
/// Chat emoji status has changed.
///
/// * [chatId]: Chat identifier.
/// * [emojiStatus]: The new chat emoji status; may be null *(optional)*.
final class UpdateChatEmojiStatus extends Update {
  /// **UpdateChatEmojiStatus** *(updateChatEmojiStatus)* - child of Update
  ///
  /// Chat emoji status has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [emojiStatus]: The new chat emoji status; may be null *(optional)*.
  const UpdateChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat emoji status; may be null
  final EmojiStatus? emojiStatus;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatEmojiStatus.fromJson(Map<String, dynamic> json) =>
      UpdateChatEmojiStatus(
        chatId: json['chat_id'],
        emojiStatus: json['emoji_status'] == null
            ? null
            : EmojiStatus.fromJson(json['emoji_status']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "emoji_status": emojiStatus?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [emoji_status]: The new chat emoji status; may be null
  @override
  UpdateChatEmojiStatus copyWith({
    int? chatId,
    EmojiStatus? emojiStatus,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatEmojiStatus(
        chatId: chatId ?? this.chatId,
        emojiStatus: emojiStatus ?? this.emojiStatus,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatEmojiStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatMessageSender** *(updateChatMessageSender)* - child of Update
///
/// The message sender that is selected to send messages in a chat has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageSenderId]: New value of message_sender_id; may be null if the user can't change message sender *(optional)*.
final class UpdateChatMessageSender extends Update {
  /// **UpdateChatMessageSender** *(updateChatMessageSender)* - child of Update
  ///
  /// The message sender that is selected to send messages in a chat has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageSenderId]: New value of message_sender_id; may be null if the user can't change message sender *(optional)*.
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of message_sender_id; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatMessageSender.fromJson(Map<String, dynamic> json) =>
      UpdateChatMessageSender(
        chatId: json['chat_id'],
        messageSenderId: json['message_sender_id'] == null
            ? null
            : MessageSender.fromJson(json['message_sender_id']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_sender_id": messageSenderId?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_sender_id]: New value of message_sender_id; may be null if the user can't change message sender
  @override
  UpdateChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatMessageSender(
        chatId: chatId ?? this.chatId,
        messageSenderId: messageSenderId ?? this.messageSenderId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatMessageSender';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatMessageAutoDeleteTime** *(updateChatMessageAutoDeleteTime)* - child of Update
///
/// The message auto-delete or self-destruct timer setting for a chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageAutoDeleteTime]: New value of message_auto_delete_time.
final class UpdateChatMessageAutoDeleteTime extends Update {
  /// **UpdateChatMessageAutoDeleteTime** *(updateChatMessageAutoDeleteTime)* - child of Update
  ///
  /// The message auto-delete or self-destruct timer setting for a chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageAutoDeleteTime]: New value of message_auto_delete_time.
  const UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatMessageAutoDeleteTime.fromJson(Map<String, dynamic> json) =>
      UpdateChatMessageAutoDeleteTime(
        chatId: json['chat_id'],
        messageAutoDeleteTime: json['message_auto_delete_time'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_auto_delete_time": messageAutoDeleteTime,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_auto_delete_time]: New value of message_auto_delete_time
  @override
  UpdateChatMessageAutoDeleteTime copyWith({
    int? chatId,
    int? messageAutoDeleteTime,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatMessageAutoDeleteTime(
        chatId: chatId ?? this.chatId,
        messageAutoDeleteTime:
            messageAutoDeleteTime ?? this.messageAutoDeleteTime,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatMessageAutoDeleteTime';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatNotificationSettings** *(updateChatNotificationSettings)* - child of Update
///
/// Notification settings for a chat were changed.
///
/// * [chatId]: Chat identifier.
/// * [notificationSettings]: The new notification settings.
final class UpdateChatNotificationSettings extends Update {
  /// **UpdateChatNotificationSettings** *(updateChatNotificationSettings)* - child of Update
  ///
  /// Notification settings for a chat were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [notificationSettings]: The new notification settings.
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new notification settings
  final ChatNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) =>
      UpdateChatNotificationSettings(
        chatId: json['chat_id'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [notification_settings]: The new notification settings
  @override
  UpdateChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatNotificationSettings(
        chatId: chatId ?? this.chatId,
        notificationSettings: notificationSettings ?? this.notificationSettings,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatPendingJoinRequests** *(updateChatPendingJoinRequests)* - child of Update
///
/// The chat pending join requests were changed.
///
/// * [chatId]: Chat identifier.
/// * [pendingJoinRequests]: The new data about pending join requests; may be null *(optional)*.
final class UpdateChatPendingJoinRequests extends Update {
  /// **UpdateChatPendingJoinRequests** *(updateChatPendingJoinRequests)* - child of Update
  ///
  /// The chat pending join requests were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [pendingJoinRequests]: The new data about pending join requests; may be null *(optional)*.
  const UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new data about pending join requests; may be null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatPendingJoinRequests.fromJson(Map<String, dynamic> json) =>
      UpdateChatPendingJoinRequests(
        chatId: json['chat_id'],
        pendingJoinRequests: json['pending_join_requests'] == null
            ? null
            : ChatJoinRequestsInfo.fromJson(json['pending_join_requests']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "pending_join_requests": pendingJoinRequests?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [pending_join_requests]: The new data about pending join requests; may be null
  @override
  UpdateChatPendingJoinRequests copyWith({
    int? chatId,
    ChatJoinRequestsInfo? pendingJoinRequests,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatPendingJoinRequests(
        chatId: chatId ?? this.chatId,
        pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatPendingJoinRequests';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatReplyMarkup** *(updateChatReplyMarkup)* - child of Update
///
/// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.
///
/// * [chatId]: Chat identifier.
/// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
final class UpdateChatReplyMarkup extends Update {
  /// **UpdateChatReplyMarkup** *(updateChatReplyMarkup)* - child of Update
  ///
  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.
  ///
  /// * [chatId]: Chat identifier.
  /// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
  const UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) =>
      UpdateChatReplyMarkup(
        chatId: json['chat_id'],
        replyMarkupMessageId: json['reply_markup_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "reply_markup_message_id": replyMarkupMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [reply_markup_message_id]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  @override
  UpdateChatReplyMarkup copyWith({
    int? chatId,
    int? replyMarkupMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatReplyMarkup(
        chatId: chatId ?? this.chatId,
        replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatReplyMarkup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatBackground** *(updateChatBackground)* - child of Update
///
/// The chat background was changed.
///
/// * [chatId]: Chat identifier.
/// * [background]: The new chat background; may be null if background was reset to default *(optional)*.
final class UpdateChatBackground extends Update {
  /// **UpdateChatBackground** *(updateChatBackground)* - child of Update
  ///
  /// The chat background was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [background]: The new chat background; may be null if background was reset to default *(optional)*.
  const UpdateChatBackground({
    required this.chatId,
    this.background,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new chat background; may be null if background was reset to default
  final ChatBackground? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatBackground.fromJson(Map<String, dynamic> json) =>
      UpdateChatBackground(
        chatId: json['chat_id'],
        background: json['background'] == null
            ? null
            : ChatBackground.fromJson(json['background']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "background": background?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [background]: The new chat background; may be null if background was reset to default
  @override
  UpdateChatBackground copyWith({
    int? chatId,
    ChatBackground? background,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatBackground(
        chatId: chatId ?? this.chatId,
        background: background ?? this.background,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatBackground';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatTheme** *(updateChatTheme)* - child of Update
///
/// The chat theme was changed.
///
/// * [chatId]: Chat identifier.
/// * [themeName]: The new name of the chat theme; may be empty if theme was reset to default.
final class UpdateChatTheme extends Update {
  /// **UpdateChatTheme** *(updateChatTheme)* - child of Update
  ///
  /// The chat theme was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [themeName]: The new name of the chat theme; may be empty if theme was reset to default.
  const UpdateChatTheme({
    required this.chatId,
    required this.themeName,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new name of the chat theme; may be empty if theme was reset to default
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatTheme.fromJson(Map<String, dynamic> json) =>
      UpdateChatTheme(
        chatId: json['chat_id'],
        themeName: json['theme_name'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "theme_name": themeName,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [theme_name]: The new name of the chat theme; may be empty if theme was reset to default
  @override
  UpdateChatTheme copyWith({
    int? chatId,
    String? themeName,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatTheme(
        chatId: chatId ?? this.chatId,
        themeName: themeName ?? this.themeName,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatTheme';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatUnreadMentionCount** *(updateChatUnreadMentionCount)* - child of Update
///
/// The chat unread_mention_count has changed.
///
/// * [chatId]: Chat identifier.
/// * [unreadMentionCount]: The number of unread mention messages left in the chat.
final class UpdateChatUnreadMentionCount extends Update {
  /// **UpdateChatUnreadMentionCount** *(updateChatUnreadMentionCount)* - child of Update
  ///
  /// The chat unread_mention_count has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [unreadMentionCount]: The number of unread mention messages left in the chat.
  const UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatUnreadMentionCount(
        chatId: json['chat_id'],
        unreadMentionCount: json['unread_mention_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "unread_mention_count": unreadMentionCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [unread_mention_count]: The number of unread mention messages left in the chat
  @override
  UpdateChatUnreadMentionCount copyWith({
    int? chatId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatUnreadMentionCount(
        chatId: chatId ?? this.chatId,
        unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatUnreadMentionCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatUnreadReactionCount** *(updateChatUnreadReactionCount)* - child of Update
///
/// The chat unread_reaction_count has changed.
///
/// * [chatId]: Chat identifier.
/// * [unreadReactionCount]: The number of messages with unread reactions left in the chat.
final class UpdateChatUnreadReactionCount extends Update {
  /// **UpdateChatUnreadReactionCount** *(updateChatUnreadReactionCount)* - child of Update
  ///
  /// The chat unread_reaction_count has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [unreadReactionCount]: The number of messages with unread reactions left in the chat.
  const UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatUnreadReactionCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatUnreadReactionCount(
        chatId: json['chat_id'],
        unreadReactionCount: json['unread_reaction_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "unread_reaction_count": unreadReactionCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [unread_reaction_count]: The number of messages with unread reactions left in the chat
  @override
  UpdateChatUnreadReactionCount copyWith({
    int? chatId,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatUnreadReactionCount(
        chatId: chatId ?? this.chatId,
        unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatUnreadReactionCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatVideoChat** *(updateChatVideoChat)* - child of Update
///
/// A chat video chat state has changed.
///
/// * [chatId]: Chat identifier.
/// * [videoChat]: New value of video_chat.
final class UpdateChatVideoChat extends Update {
  /// **UpdateChatVideoChat** *(updateChatVideoChat)* - child of Update
  ///
  /// A chat video chat state has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [videoChat]: New value of video_chat.
  const UpdateChatVideoChat({
    required this.chatId,
    required this.videoChat,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of video_chat
  final VideoChat videoChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatVideoChat.fromJson(Map<String, dynamic> json) =>
      UpdateChatVideoChat(
        chatId: json['chat_id'],
        videoChat: VideoChat.fromJson(json['video_chat']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "video_chat": videoChat.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [video_chat]: New value of video_chat
  @override
  UpdateChatVideoChat copyWith({
    int? chatId,
    VideoChat? videoChat,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatVideoChat(
        chatId: chatId ?? this.chatId,
        videoChat: videoChat ?? this.videoChat,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatVideoChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatDefaultDisableNotification** *(updateChatDefaultDisableNotification)* - child of Update
///
/// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
///
/// * [chatId]: Chat identifier.
/// * [defaultDisableNotification]: The new default_disable_notification value.
final class UpdateChatDefaultDisableNotification extends Update {
  /// **UpdateChatDefaultDisableNotification** *(updateChatDefaultDisableNotification)* - child of Update
  ///
  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [defaultDisableNotification]: The new default_disable_notification value.
  const UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// The new default_disable_notification value
  final bool defaultDisableNotification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatDefaultDisableNotification.fromJson(
          Map<String, dynamic> json) =>
      UpdateChatDefaultDisableNotification(
        chatId: json['chat_id'],
        defaultDisableNotification: json['default_disable_notification'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [default_disable_notification]: The new default_disable_notification value
  @override
  UpdateChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatDefaultDisableNotification(
        chatId: chatId ?? this.chatId,
        defaultDisableNotification:
            defaultDisableNotification ?? this.defaultDisableNotification,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatDefaultDisableNotification';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatHasProtectedContent** *(updateChatHasProtectedContent)* - child of Update
///
/// A chat content was allowed or restricted for saving.
///
/// * [chatId]: Chat identifier.
/// * [hasProtectedContent]: New value of has_protected_content.
final class UpdateChatHasProtectedContent extends Update {
  /// **UpdateChatHasProtectedContent** *(updateChatHasProtectedContent)* - child of Update
  ///
  /// A chat content was allowed or restricted for saving.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasProtectedContent]: New value of has_protected_content.
  const UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of has_protected_content
  final bool hasProtectedContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatHasProtectedContent.fromJson(Map<String, dynamic> json) =>
      UpdateChatHasProtectedContent(
        chatId: json['chat_id'],
        hasProtectedContent: json['has_protected_content'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [has_protected_content]: New value of has_protected_content
  @override
  UpdateChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatHasProtectedContent(
        chatId: chatId ?? this.chatId,
        hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatHasProtectedContent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatIsTranslatable** *(updateChatIsTranslatable)* - child of Update
///
/// Translation of chat messages was enabled or disabled.
///
/// * [chatId]: Chat identifier.
/// * [isTranslatable]: New value of is_translatable.
final class UpdateChatIsTranslatable extends Update {
  /// **UpdateChatIsTranslatable** *(updateChatIsTranslatable)* - child of Update
  ///
  /// Translation of chat messages was enabled or disabled.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isTranslatable]: New value of is_translatable.
  const UpdateChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of is_translatable
  final bool isTranslatable;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatIsTranslatable.fromJson(Map<String, dynamic> json) =>
      UpdateChatIsTranslatable(
        chatId: json['chat_id'],
        isTranslatable: json['is_translatable'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "is_translatable": isTranslatable,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [is_translatable]: New value of is_translatable
  @override
  UpdateChatIsTranslatable copyWith({
    int? chatId,
    bool? isTranslatable,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatIsTranslatable(
        chatId: chatId ?? this.chatId,
        isTranslatable: isTranslatable ?? this.isTranslatable,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatIsTranslatable';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatIsMarkedAsUnread** *(updateChatIsMarkedAsUnread)* - child of Update
///
/// A chat was marked as unread or was read.
///
/// * [chatId]: Chat identifier.
/// * [isMarkedAsUnread]: New value of is_marked_as_unread.
final class UpdateChatIsMarkedAsUnread extends Update {
  /// **UpdateChatIsMarkedAsUnread** *(updateChatIsMarkedAsUnread)* - child of Update
  ///
  /// A chat was marked as unread or was read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isMarkedAsUnread]: New value of is_marked_as_unread.
  const UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) =>
      UpdateChatIsMarkedAsUnread(
        chatId: json['chat_id'],
        isMarkedAsUnread: json['is_marked_as_unread'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [is_marked_as_unread]: New value of is_marked_as_unread
  @override
  UpdateChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatIsMarkedAsUnread(
        chatId: chatId ?? this.chatId,
        isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatIsMarkedAsUnread';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatViewAsTopics** *(updateChatViewAsTopics)* - child of Update
///
/// A chat default appearance has changed.
///
/// * [chatId]: Chat identifier.
/// * [viewAsTopics]: New value of view_as_topics.
final class UpdateChatViewAsTopics extends Update {
  /// **UpdateChatViewAsTopics** *(updateChatViewAsTopics)* - child of Update
  ///
  /// A chat default appearance has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [viewAsTopics]: New value of view_as_topics.
  const UpdateChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of view_as_topics
  final bool viewAsTopics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatViewAsTopics.fromJson(Map<String, dynamic> json) =>
      UpdateChatViewAsTopics(
        chatId: json['chat_id'],
        viewAsTopics: json['view_as_topics'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "view_as_topics": viewAsTopics,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [view_as_topics]: New value of view_as_topics
  @override
  UpdateChatViewAsTopics copyWith({
    int? chatId,
    bool? viewAsTopics,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatViewAsTopics(
        chatId: chatId ?? this.chatId,
        viewAsTopics: viewAsTopics ?? this.viewAsTopics,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatViewAsTopics';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatBlockList** *(updateChatBlockList)* - child of Update
///
/// A chat was blocked or unblocked.
///
/// * [chatId]: Chat identifier.
/// * [blockList]: Block list to which the chat is added; may be null if none *(optional)*.
final class UpdateChatBlockList extends Update {
  /// **UpdateChatBlockList** *(updateChatBlockList)* - child of Update
  ///
  /// A chat was blocked or unblocked.
  ///
  /// * [chatId]: Chat identifier.
  /// * [blockList]: Block list to which the chat is added; may be null if none *(optional)*.
  const UpdateChatBlockList({
    required this.chatId,
    this.blockList,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatBlockList.fromJson(Map<String, dynamic> json) =>
      UpdateChatBlockList(
        chatId: json['chat_id'],
        blockList: json['block_list'] == null
            ? null
            : BlockList.fromJson(json['block_list']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "block_list": blockList?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [block_list]: Block list to which the chat is added; may be null if none
  @override
  UpdateChatBlockList copyWith({
    int? chatId,
    BlockList? blockList,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatBlockList(
        chatId: chatId ?? this.chatId,
        blockList: blockList ?? this.blockList,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatBlockList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatHasScheduledMessages** *(updateChatHasScheduledMessages)* - child of Update
///
/// A chat's has_scheduled_messages field has changed.
///
/// * [chatId]: Chat identifier.
/// * [hasScheduledMessages]: New value of has_scheduled_messages.
final class UpdateChatHasScheduledMessages extends Update {
  /// **UpdateChatHasScheduledMessages** *(updateChatHasScheduledMessages)* - child of Update
  ///
  /// A chat's has_scheduled_messages field has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasScheduledMessages]: New value of has_scheduled_messages.
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New value of has_scheduled_messages
  final bool hasScheduledMessages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) =>
      UpdateChatHasScheduledMessages(
        chatId: json['chat_id'],
        hasScheduledMessages: json['has_scheduled_messages'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "has_scheduled_messages": hasScheduledMessages,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [has_scheduled_messages]: New value of has_scheduled_messages
  @override
  UpdateChatHasScheduledMessages copyWith({
    int? chatId,
    bool? hasScheduledMessages,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatHasScheduledMessages(
        chatId: chatId ?? this.chatId,
        hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatHasScheduledMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatFolders** *(updateChatFolders)* - child of Update
///
/// The list of chat folders or a chat folder has changed.
///
/// * [chatFolders]: The new list of chat folders.
/// * [mainChatListPosition]: Position of the main chat list among chat folders, 0-based.
/// * [areTagsEnabled]: True, if folder tags are enabled.
final class UpdateChatFolders extends Update {
  /// **UpdateChatFolders** *(updateChatFolders)* - child of Update
  ///
  /// The list of chat folders or a chat folder has changed.
  ///
  /// * [chatFolders]: The new list of chat folders.
  /// * [mainChatListPosition]: Position of the main chat list among chat folders, 0-based.
  /// * [areTagsEnabled]: True, if folder tags are enabled.
  const UpdateChatFolders({
    required this.chatFolders,
    required this.mainChatListPosition,
    required this.areTagsEnabled,
    this.extra,
    this.clientId,
  });

  /// The new list of chat folders
  final List<ChatFolderInfo> chatFolders;

  /// Position of the main chat list among chat folders, 0-based
  final int mainChatListPosition;

  /// True, if folder tags are enabled
  final bool areTagsEnabled;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatFolders.fromJson(Map<String, dynamic> json) =>
      UpdateChatFolders(
        chatFolders: List<ChatFolderInfo>.from((json['chat_folders'] ?? [])
            .map((item) => ChatFolderInfo.fromJson(item))
            .toList()),
        mainChatListPosition: json['main_chat_list_position'],
        areTagsEnabled: json['are_tags_enabled'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_folders": chatFolders.map((i) => i.toJson()).toList(),
      "main_chat_list_position": mainChatListPosition,
      "are_tags_enabled": areTagsEnabled,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_folders]: The new list of chat folders
  /// * [main_chat_list_position]: Position of the main chat list among chat folders, 0-based
  /// * [are_tags_enabled]: True, if folder tags are enabled
  @override
  UpdateChatFolders copyWith({
    List<ChatFolderInfo>? chatFolders,
    int? mainChatListPosition,
    bool? areTagsEnabled,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatFolders(
        chatFolders: chatFolders ?? this.chatFolders,
        mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
        areTagsEnabled: areTagsEnabled ?? this.areTagsEnabled,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatFolders';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatOnlineMemberCount** *(updateChatOnlineMemberCount)* - child of Update
///
/// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.. There is no guarantee that it is sent just after the number of online users has changed.
///
/// * [chatId]: Identifier of the chat.
/// * [onlineMemberCount]: New number of online members in the chat, or 0 if unknown.
final class UpdateChatOnlineMemberCount extends Update {
  /// **UpdateChatOnlineMemberCount** *(updateChatOnlineMemberCount)* - child of Update
  ///
  /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.. There is no guarantee that it is sent just after the number of online users has changed.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [onlineMemberCount]: New number of online members in the chat, or 0 if unknown.
  const UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
    this.extra,
    this.clientId,
  });

  /// Identifier of the chat
  final int chatId;

  /// New number of online members in the chat, or 0 if unknown
  final int onlineMemberCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatOnlineMemberCount(
        chatId: json['chat_id'],
        onlineMemberCount: json['online_member_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "online_member_count": onlineMemberCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  /// * [online_member_count]: New number of online members in the chat, or 0 if unknown
  @override
  UpdateChatOnlineMemberCount copyWith({
    int? chatId,
    int? onlineMemberCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatOnlineMemberCount(
        chatId: chatId ?? this.chatId,
        onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatOnlineMemberCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSavedMessagesTopic** *(updateSavedMessagesTopic)* - child of Update
///
/// Basic information about a Saved Messages topic has changed. This update is guaranteed to come before the topic identifier is returned to the application.
///
/// * [topic]: New data about the topic.
final class UpdateSavedMessagesTopic extends Update {
  /// **UpdateSavedMessagesTopic** *(updateSavedMessagesTopic)* - child of Update
  ///
  /// Basic information about a Saved Messages topic has changed. This update is guaranteed to come before the topic identifier is returned to the application.
  ///
  /// * [topic]: New data about the topic.
  const UpdateSavedMessagesTopic({
    required this.topic,
    this.extra,
    this.clientId,
  });

  /// New data about the topic
  final SavedMessagesTopic topic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSavedMessagesTopic.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTopic(
        topic: SavedMessagesTopic.fromJson(json['topic']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "topic": topic.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic]: New data about the topic
  @override
  UpdateSavedMessagesTopic copyWith({
    SavedMessagesTopic? topic,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSavedMessagesTopic(
        topic: topic ?? this.topic,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSavedMessagesTopic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSavedMessagesTopicCount** *(updateSavedMessagesTopicCount)* - child of Update
///
/// Number of Saved Messages topics has changed.
///
/// * [topicCount]: Approximate total number of Saved Messages topics.
final class UpdateSavedMessagesTopicCount extends Update {
  /// **UpdateSavedMessagesTopicCount** *(updateSavedMessagesTopicCount)* - child of Update
  ///
  /// Number of Saved Messages topics has changed.
  ///
  /// * [topicCount]: Approximate total number of Saved Messages topics.
  const UpdateSavedMessagesTopicCount({
    required this.topicCount,
    this.extra,
    this.clientId,
  });

  /// Approximate total number of Saved Messages topics
  final int topicCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSavedMessagesTopicCount.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTopicCount(
        topicCount: json['topic_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "topic_count": topicCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [topic_count]: Approximate total number of Saved Messages topics
  @override
  UpdateSavedMessagesTopicCount copyWith({
    int? topicCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSavedMessagesTopicCount(
        topicCount: topicCount ?? this.topicCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSavedMessagesTopicCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateQuickReplyShortcut** *(updateQuickReplyShortcut)* - child of Update
///
/// Basic information about a quick reply shortcut has changed. This update is guaranteed to come before the quick shortcut name is returned to the application.
///
/// * [shortcut]: New data about the shortcut.
final class UpdateQuickReplyShortcut extends Update {
  /// **UpdateQuickReplyShortcut** *(updateQuickReplyShortcut)* - child of Update
  ///
  /// Basic information about a quick reply shortcut has changed. This update is guaranteed to come before the quick shortcut name is returned to the application.
  ///
  /// * [shortcut]: New data about the shortcut.
  const UpdateQuickReplyShortcut({
    required this.shortcut,
    this.extra,
    this.clientId,
  });

  /// New data about the shortcut
  final QuickReplyShortcut shortcut;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateQuickReplyShortcut.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcut(
        shortcut: QuickReplyShortcut.fromJson(json['shortcut']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "shortcut": shortcut.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [shortcut]: New data about the shortcut
  @override
  UpdateQuickReplyShortcut copyWith({
    QuickReplyShortcut? shortcut,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateQuickReplyShortcut(
        shortcut: shortcut ?? this.shortcut,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateQuickReplyShortcut';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateQuickReplyShortcutDeleted** *(updateQuickReplyShortcutDeleted)* - child of Update
///
/// A quick reply shortcut and all its messages were deleted.
///
/// * [shortcutId]: The identifier of the deleted shortcut.
final class UpdateQuickReplyShortcutDeleted extends Update {
  /// **UpdateQuickReplyShortcutDeleted** *(updateQuickReplyShortcutDeleted)* - child of Update
  ///
  /// A quick reply shortcut and all its messages were deleted.
  ///
  /// * [shortcutId]: The identifier of the deleted shortcut.
  const UpdateQuickReplyShortcutDeleted({
    required this.shortcutId,
    this.extra,
    this.clientId,
  });

  /// The identifier of the deleted shortcut
  final int shortcutId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateQuickReplyShortcutDeleted.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcutDeleted(
        shortcutId: json['shortcut_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "shortcut_id": shortcutId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [shortcut_id]: The identifier of the deleted shortcut
  @override
  UpdateQuickReplyShortcutDeleted copyWith({
    int? shortcutId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateQuickReplyShortcutDeleted(
        shortcutId: shortcutId ?? this.shortcutId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateQuickReplyShortcutDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateQuickReplyShortcuts** *(updateQuickReplyShortcuts)* - child of Update
///
/// The list of quick reply shortcuts has changed.
///
/// * [shortcutIds]: The new list of identifiers of quick reply shortcuts.
final class UpdateQuickReplyShortcuts extends Update {
  /// **UpdateQuickReplyShortcuts** *(updateQuickReplyShortcuts)* - child of Update
  ///
  /// The list of quick reply shortcuts has changed.
  ///
  /// * [shortcutIds]: The new list of identifiers of quick reply shortcuts.
  const UpdateQuickReplyShortcuts({
    required this.shortcutIds,
    this.extra,
    this.clientId,
  });

  /// The new list of identifiers of quick reply shortcuts
  final List<int> shortcutIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateQuickReplyShortcuts.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcuts(
        shortcutIds: List<int>.from(
            (json['shortcut_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "shortcut_ids": shortcutIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [shortcut_ids]: The new list of identifiers of quick reply shortcuts
  @override
  UpdateQuickReplyShortcuts copyWith({
    List<int>? shortcutIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateQuickReplyShortcuts(
        shortcutIds: shortcutIds ?? this.shortcutIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateQuickReplyShortcuts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateQuickReplyShortcutMessages** *(updateQuickReplyShortcutMessages)* - child of Update
///
/// The list of quick reply shortcut messages has changed.
///
/// * [shortcutId]: The identifier of the shortcut.
/// * [messages]: The new list of quick reply messages for the shortcut in order from the first to the last sent.
final class UpdateQuickReplyShortcutMessages extends Update {
  /// **UpdateQuickReplyShortcutMessages** *(updateQuickReplyShortcutMessages)* - child of Update
  ///
  /// The list of quick reply shortcut messages has changed.
  ///
  /// * [shortcutId]: The identifier of the shortcut.
  /// * [messages]: The new list of quick reply messages for the shortcut in order from the first to the last sent.
  const UpdateQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messages,
    this.extra,
    this.clientId,
  });

  /// The identifier of the shortcut
  final int shortcutId;

  /// The new list of quick reply messages for the shortcut in order from the first to the last sent
  final List<QuickReplyMessage> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateQuickReplyShortcutMessages.fromJson(
          Map<String, dynamic> json) =>
      UpdateQuickReplyShortcutMessages(
        shortcutId: json['shortcut_id'],
        messages: List<QuickReplyMessage>.from((json['messages'] ?? [])
            .map((item) => QuickReplyMessage.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "shortcut_id": shortcutId,
      "messages": messages.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [shortcut_id]: The identifier of the shortcut
  /// * [messages]: The new list of quick reply messages for the shortcut in order from the first to the last sent
  @override
  UpdateQuickReplyShortcutMessages copyWith({
    int? shortcutId,
    List<QuickReplyMessage>? messages,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateQuickReplyShortcutMessages(
        shortcutId: shortcutId ?? this.shortcutId,
        messages: messages ?? this.messages,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateQuickReplyShortcutMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateForumTopicInfo** *(updateForumTopicInfo)* - child of Update
///
/// Basic information about a topic in a forum chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [info]: New information about the topic.
final class UpdateForumTopicInfo extends Update {
  /// **UpdateForumTopicInfo** *(updateForumTopicInfo)* - child of Update
  ///
  /// Basic information about a topic in a forum chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [info]: New information about the topic.
  const UpdateForumTopicInfo({
    required this.chatId,
    required this.info,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New information about the topic
  final ForumTopicInfo info;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateForumTopicInfo.fromJson(Map<String, dynamic> json) =>
      UpdateForumTopicInfo(
        chatId: json['chat_id'],
        info: ForumTopicInfo.fromJson(json['info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "info": info.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [info]: New information about the topic
  @override
  UpdateForumTopicInfo copyWith({
    int? chatId,
    ForumTopicInfo? info,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateForumTopicInfo(
        chatId: chatId ?? this.chatId,
        info: info ?? this.info,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateForumTopicInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateScopeNotificationSettings** *(updateScopeNotificationSettings)* - child of Update
///
/// Notification settings for some type of chats were updated.
///
/// * [scope]: Types of chats for which notification settings were updated.
/// * [notificationSettings]: The new notification settings.
final class UpdateScopeNotificationSettings extends Update {
  /// **UpdateScopeNotificationSettings** *(updateScopeNotificationSettings)* - child of Update
  ///
  /// Notification settings for some type of chats were updated.
  ///
  /// * [scope]: Types of chats for which notification settings were updated.
  /// * [notificationSettings]: The new notification settings.
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// Types of chats for which notification settings were updated
  final NotificationSettingsScope scope;

  /// The new notification settings
  final ScopeNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) =>
      UpdateScopeNotificationSettings(
        scope: NotificationSettingsScope.fromJson(json['scope']),
        notificationSettings:
            ScopeNotificationSettings.fromJson(json['notification_settings']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [scope]: Types of chats for which notification settings were updated
  /// * [notification_settings]: The new notification settings
  @override
  UpdateScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateScopeNotificationSettings(
        scope: scope ?? this.scope,
        notificationSettings: notificationSettings ?? this.notificationSettings,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateScopeNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNotification** *(updateNotification)* - child of Update
///
/// A notification was changed.
///
/// * [notificationGroupId]: Unique notification group identifier.
/// * [notification]: Changed notification.
final class UpdateNotification extends Update {
  /// **UpdateNotification** *(updateNotification)* - child of Update
  ///
  /// A notification was changed.
  ///
  /// * [notificationGroupId]: Unique notification group identifier.
  /// * [notification]: Changed notification.
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
    this.extra,
    this.clientId,
  });

  /// Unique notification group identifier
  final int notificationGroupId;

  /// Changed notification
  final Notification notification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNotification.fromJson(Map<String, dynamic> json) =>
      UpdateNotification(
        notificationGroupId: json['notification_group_id'],
        notification: Notification.fromJson(json['notification']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "notification_group_id": notificationGroupId,
      "notification": notification.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [notification_group_id]: Unique notification group identifier
  /// * [notification]: Changed notification
  @override
  UpdateNotification copyWith({
    int? notificationGroupId,
    Notification? notification,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNotification(
        notificationGroupId: notificationGroupId ?? this.notificationGroupId,
        notification: notification ?? this.notification,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNotification';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNotificationGroup** *(updateNotificationGroup)* - child of Update
///
/// A list of active notifications in a notification group has changed.
///
/// * [notificationGroupId]: Unique notification group identifier.
/// * [type]: New type of the notification group.
/// * [chatId]: Identifier of a chat to which all notifications in the group belong.
/// * [notificationSettingsChatId]: Chat identifier, which notification settings must be applied to the added notifications.
/// * [notificationSoundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
/// * [totalCount]: Total number of unread notifications in the group, can be bigger than number of active notifications.
/// * [addedNotifications]: List of added group notifications, sorted by notification identifier.
/// * [removedNotificationIds]: Identifiers of removed group notifications, sorted by notification identifier.
final class UpdateNotificationGroup extends Update {
  /// **UpdateNotificationGroup** *(updateNotificationGroup)* - child of Update
  ///
  /// A list of active notifications in a notification group has changed.
  ///
  /// * [notificationGroupId]: Unique notification group identifier.
  /// * [type]: New type of the notification group.
  /// * [chatId]: Identifier of a chat to which all notifications in the group belong.
  /// * [notificationSettingsChatId]: Chat identifier, which notification settings must be applied to the added notifications.
  /// * [notificationSoundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [totalCount]: Total number of unread notifications in the group, can be bigger than number of active notifications.
  /// * [addedNotifications]: List of added group notifications, sorted by notification identifier.
  /// * [removedNotificationIds]: Identifiers of removed group notifications, sorted by notification identifier.
  const UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.notificationSoundId,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
    this.extra,
    this.clientId,
  });

  /// Unique notification group identifier
  final int notificationGroupId;

  /// New type of the notification group
  final NotificationGroupType type;

  /// Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int notificationSoundId;

  /// Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;

  /// List of added group notifications, sorted by notification identifier
  final List<Notification> addedNotifications;

  /// Identifiers of removed group notifications, sorted by notification identifier
  final List<int> removedNotificationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) =>
      UpdateNotificationGroup(
        notificationGroupId: json['notification_group_id'],
        type: NotificationGroupType.fromJson(json['type']),
        chatId: json['chat_id'],
        notificationSettingsChatId: json['notification_settings_chat_id'],
        notificationSoundId: json['notification_sound_id'] is int
            ? json['notification_sound_id']
            : int.parse(json['notification_sound_id']),
        totalCount: json['total_count'],
        addedNotifications: List<Notification>.from(
            (json['added_notifications'] ?? [])
                .map((item) => Notification.fromJson(item))
                .toList()),
        removedNotificationIds: List<int>.from(
            (json['removed_notification_ids'] ?? [])
                .map((item) => item)
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "notification_group_id": notificationGroupId,
      "type": type.toJson(),
      "chat_id": chatId,
      "notification_settings_chat_id": notificationSettingsChatId,
      "notification_sound_id": notificationSoundId,
      "total_count": totalCount,
      "added_notifications": addedNotifications.map((i) => i.toJson()).toList(),
      "removed_notification_ids": removedNotificationIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [notification_group_id]: Unique notification group identifier
  /// * [type]: New type of the notification group
  /// * [chat_id]: Identifier of a chat to which all notifications in the group belong
  /// * [notification_settings_chat_id]: Chat identifier, which notification settings must be applied to the added notifications
  /// * [notification_sound_id]: Identifier of the notification sound to be played; 0 if sound is disabled
  /// * [total_count]: Total number of unread notifications in the group, can be bigger than number of active notifications
  /// * [added_notifications]: List of added group notifications, sorted by notification identifier
  /// * [removed_notification_ids]: Identifiers of removed group notifications, sorted by notification identifier
  @override
  UpdateNotificationGroup copyWith({
    int? notificationGroupId,
    NotificationGroupType? type,
    int? chatId,
    int? notificationSettingsChatId,
    int? notificationSoundId,
    int? totalCount,
    List<Notification>? addedNotifications,
    List<int>? removedNotificationIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNotificationGroup(
        notificationGroupId: notificationGroupId ?? this.notificationGroupId,
        type: type ?? this.type,
        chatId: chatId ?? this.chatId,
        notificationSettingsChatId:
            notificationSettingsChatId ?? this.notificationSettingsChatId,
        notificationSoundId: notificationSoundId ?? this.notificationSoundId,
        totalCount: totalCount ?? this.totalCount,
        addedNotifications: addedNotifications ?? this.addedNotifications,
        removedNotificationIds:
            removedNotificationIds ?? this.removedNotificationIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNotificationGroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateActiveNotifications** *(updateActiveNotifications)* - child of Update
///
/// Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.
///
/// * [groups]: Lists of active notification groups.
final class UpdateActiveNotifications extends Update {
  /// **UpdateActiveNotifications** *(updateActiveNotifications)* - child of Update
  ///
  /// Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.
  ///
  /// * [groups]: Lists of active notification groups.
  const UpdateActiveNotifications({
    required this.groups,
    this.extra,
    this.clientId,
  });

  /// Lists of active notification groups
  final List<NotificationGroup> groups;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) =>
      UpdateActiveNotifications(
        groups: List<NotificationGroup>.from((json['groups'] ?? [])
            .map((item) => NotificationGroup.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "groups": groups.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [groups]: Lists of active notification groups
  @override
  UpdateActiveNotifications copyWith({
    List<NotificationGroup>? groups,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateActiveNotifications(
        groups: groups ?? this.groups,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateActiveNotifications';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateHavePendingNotifications** *(updateHavePendingNotifications)* - child of Update
///
/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.
///
/// * [haveDelayedNotifications]: True, if there are some delayed notification updates, which will be sent soon.
/// * [haveUnreceivedNotifications]: True, if there can be some yet unreceived notifications, which are being fetched from the server.
final class UpdateHavePendingNotifications extends Update {
  /// **UpdateHavePendingNotifications** *(updateHavePendingNotifications)* - child of Update
  ///
  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.
  ///
  /// * [haveDelayedNotifications]: True, if there are some delayed notification updates, which will be sent soon.
  /// * [haveUnreceivedNotifications]: True, if there can be some yet unreceived notifications, which are being fetched from the server.
  const UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
    this.extra,
    this.clientId,
  });

  /// True, if there are some delayed notification updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// True, if there can be some yet unreceived notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) =>
      UpdateHavePendingNotifications(
        haveDelayedNotifications: json['have_delayed_notifications'],
        haveUnreceivedNotifications: json['have_unreceived_notifications'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "have_delayed_notifications": haveDelayedNotifications,
      "have_unreceived_notifications": haveUnreceivedNotifications,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [have_delayed_notifications]: True, if there are some delayed notification updates, which will be sent soon
  /// * [have_unreceived_notifications]: True, if there can be some yet unreceived notifications, which are being fetched from the server
  @override
  UpdateHavePendingNotifications copyWith({
    bool? haveDelayedNotifications,
    bool? haveUnreceivedNotifications,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateHavePendingNotifications(
        haveDelayedNotifications:
            haveDelayedNotifications ?? this.haveDelayedNotifications,
        haveUnreceivedNotifications:
            haveUnreceivedNotifications ?? this.haveUnreceivedNotifications,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateHavePendingNotifications';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateDeleteMessages** *(updateDeleteMessages)* - child of Update
///
/// Some messages were deleted.
///
/// * [chatId]: Chat identifier.
/// * [messageIds]: Identifiers of the deleted messages.
/// * [isPermanent]: True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible).
/// * [fromCache]: True, if the messages are deleted only from the cache and can possibly be retrieved again in the future.
final class UpdateDeleteMessages extends Update {
  /// **UpdateDeleteMessages** *(updateDeleteMessages)* - child of Update
  ///
  /// Some messages were deleted.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageIds]: Identifiers of the deleted messages.
  /// * [isPermanent]: True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible).
  /// * [fromCache]: True, if the messages are deleted only from the cache and can possibly be retrieved again in the future.
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifiers of the deleted messages
  final List<int> messageIds;

  /// True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;

  /// True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) =>
      UpdateDeleteMessages(
        chatId: json['chat_id'],
        messageIds: List<int>.from(
            (json['message_ids'] ?? []).map((item) => item).toList()),
        isPermanent: json['is_permanent'],
        fromCache: json['from_cache'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "is_permanent": isPermanent,
      "from_cache": fromCache,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_ids]: Identifiers of the deleted messages
  /// * [is_permanent]: True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  /// * [from_cache]: True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  @override
  UpdateDeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? isPermanent,
    bool? fromCache,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateDeleteMessages(
        chatId: chatId ?? this.chatId,
        messageIds: messageIds ?? this.messageIds,
        isPermanent: isPermanent ?? this.isPermanent,
        fromCache: fromCache ?? this.fromCache,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateDeleteMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatAction** *(updateChatAction)* - child of Update
///
/// A message sender activity in the chat has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, the message thread identifier in which the action was performed.
/// * [senderId]: Identifier of a message sender performing the action.
/// * [action]: The action.
final class UpdateChatAction extends Update {
  /// **UpdateChatAction** *(updateChatAction)* - child of Update
  ///
  /// A message sender activity in the chat has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, the message thread identifier in which the action was performed.
  /// * [senderId]: Identifier of a message sender performing the action.
  /// * [action]: The action.
  const UpdateChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.senderId,
    required this.action,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// If not 0, the message thread identifier in which the action was performed
  final int messageThreadId;

  /// Identifier of a message sender performing the action
  final MessageSender senderId;

  /// The action
  final ChatAction action;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatAction.fromJson(Map<String, dynamic> json) =>
      UpdateChatAction(
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        senderId: MessageSender.fromJson(json['sender_id']),
        action: ChatAction.fromJson(json['action']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "sender_id": senderId.toJson(),
      "action": action.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: If not 0, the message thread identifier in which the action was performed
  /// * [sender_id]: Identifier of a message sender performing the action
  /// * [action]: The action
  @override
  UpdateChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    MessageSender? senderId,
    ChatAction? action,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatAction(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        senderId: senderId ?? this.senderId,
        action: action ?? this.action,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUserStatus** *(updateUserStatus)* - child of Update
///
/// The user went online or offline.
///
/// * [userId]: User identifier.
/// * [status]: New status of the user.
final class UpdateUserStatus extends Update {
  /// **UpdateUserStatus** *(updateUserStatus)* - child of Update
  ///
  /// The user went online or offline.
  ///
  /// * [userId]: User identifier.
  /// * [status]: New status of the user.
  const UpdateUserStatus({
    required this.userId,
    required this.status,
    this.extra,
    this.clientId,
  });

  /// User identifier
  final int userId;

  /// New status of the user
  final UserStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) =>
      UpdateUserStatus(
        userId: json['user_id'],
        status: UserStatus.fromJson(json['status']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "status": status.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: User identifier
  /// * [status]: New status of the user
  @override
  UpdateUserStatus copyWith({
    int? userId,
    UserStatus? status,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUserStatus(
        userId: userId ?? this.userId,
        status: status ?? this.status,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUserStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUser** *(updateUser)* - child of Update
///
/// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.
///
/// * [user]: New data about the user.
final class UpdateUser extends Update {
  /// **UpdateUser** *(updateUser)* - child of Update
  ///
  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.
  ///
  /// * [user]: New data about the user.
  const UpdateUser({
    required this.user,
    this.extra,
    this.clientId,
  });

  /// New data about the user
  final User user;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
        user: User.fromJson(json['user']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user": user.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user]: New data about the user
  @override
  UpdateUser copyWith({
    User? user,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUser(
        user: user ?? this.user,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateBasicGroup** *(updateBasicGroup)* - child of Update
///
/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.
///
/// * [basicGroup]: New data about the group.
final class UpdateBasicGroup extends Update {
  /// **UpdateBasicGroup** *(updateBasicGroup)* - child of Update
  ///
  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.
  ///
  /// * [basicGroup]: New data about the group.
  const UpdateBasicGroup({
    required this.basicGroup,
    this.extra,
    this.clientId,
  });

  /// New data about the group
  final BasicGroup basicGroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) =>
      UpdateBasicGroup(
        basicGroup: BasicGroup.fromJson(json['basic_group']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "basic_group": basicGroup.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [basic_group]: New data about the group
  @override
  UpdateBasicGroup copyWith({
    BasicGroup? basicGroup,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateBasicGroup(
        basicGroup: basicGroup ?? this.basicGroup,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateBasicGroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSupergroup** *(updateSupergroup)* - child of Update
///
/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.
///
/// * [supergroup]: New data about the supergroup.
final class UpdateSupergroup extends Update {
  /// **UpdateSupergroup** *(updateSupergroup)* - child of Update
  ///
  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.
  ///
  /// * [supergroup]: New data about the supergroup.
  const UpdateSupergroup({
    required this.supergroup,
    this.extra,
    this.clientId,
  });

  /// New data about the supergroup
  final Supergroup supergroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) =>
      UpdateSupergroup(
        supergroup: Supergroup.fromJson(json['supergroup']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "supergroup": supergroup.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup]: New data about the supergroup
  @override
  UpdateSupergroup copyWith({
    Supergroup? supergroup,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSupergroup(
        supergroup: supergroup ?? this.supergroup,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSupergroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSecretChat** *(updateSecretChat)* - child of Update
///
/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.
///
/// * [secretChat]: New data about the secret chat.
final class UpdateSecretChat extends Update {
  /// **UpdateSecretChat** *(updateSecretChat)* - child of Update
  ///
  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.
  ///
  /// * [secretChat]: New data about the secret chat.
  const UpdateSecretChat({
    required this.secretChat,
    this.extra,
    this.clientId,
  });

  /// New data about the secret chat
  final SecretChat secretChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) =>
      UpdateSecretChat(
        secretChat: SecretChat.fromJson(json['secret_chat']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "secret_chat": secretChat.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [secret_chat]: New data about the secret chat
  @override
  UpdateSecretChat copyWith({
    SecretChat? secretChat,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSecretChat(
        secretChat: secretChat ?? this.secretChat,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSecretChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUserFullInfo** *(updateUserFullInfo)* - child of Update
///
/// Some data in userFullInfo has been changed.
///
/// * [userId]: User identifier.
/// * [userFullInfo]: New full information about the user.
final class UpdateUserFullInfo extends Update {
  /// **UpdateUserFullInfo** *(updateUserFullInfo)* - child of Update
  ///
  /// Some data in userFullInfo has been changed.
  ///
  /// * [userId]: User identifier.
  /// * [userFullInfo]: New full information about the user.
  const UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
    this.extra,
    this.clientId,
  });

  /// User identifier
  final int userId;

  /// New full information about the user
  final UserFullInfo userFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateUserFullInfo(
        userId: json['user_id'],
        userFullInfo: UserFullInfo.fromJson(json['user_full_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "user_full_info": userFullInfo.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: User identifier
  /// * [user_full_info]: New full information about the user
  @override
  UpdateUserFullInfo copyWith({
    int? userId,
    UserFullInfo? userFullInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUserFullInfo(
        userId: userId ?? this.userId,
        userFullInfo: userFullInfo ?? this.userFullInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUserFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateBasicGroupFullInfo** *(updateBasicGroupFullInfo)* - child of Update
///
/// Some data in basicGroupFullInfo has been changed.
///
/// * [basicGroupId]: Identifier of a basic group.
/// * [basicGroupFullInfo]: New full information about the group.
final class UpdateBasicGroupFullInfo extends Update {
  /// **UpdateBasicGroupFullInfo** *(updateBasicGroupFullInfo)* - child of Update
  ///
  /// Some data in basicGroupFullInfo has been changed.
  ///
  /// * [basicGroupId]: Identifier of a basic group.
  /// * [basicGroupFullInfo]: New full information about the group.
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
    this.extra,
    this.clientId,
  });

  /// Identifier of a basic group
  final int basicGroupId;

  /// New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateBasicGroupFullInfo(
        basicGroupId: json['basic_group_id'],
        basicGroupFullInfo:
            BasicGroupFullInfo.fromJson(json['basic_group_full_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "basic_group_id": basicGroupId,
      "basic_group_full_info": basicGroupFullInfo.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [basic_group_id]: Identifier of a basic group
  /// * [basic_group_full_info]: New full information about the group
  @override
  UpdateBasicGroupFullInfo copyWith({
    int? basicGroupId,
    BasicGroupFullInfo? basicGroupFullInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateBasicGroupFullInfo(
        basicGroupId: basicGroupId ?? this.basicGroupId,
        basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateBasicGroupFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSupergroupFullInfo** *(updateSupergroupFullInfo)* - child of Update
///
/// Some data in supergroupFullInfo has been changed.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
/// * [supergroupFullInfo]: New full information about the supergroup.
final class UpdateSupergroupFullInfo extends Update {
  /// **UpdateSupergroupFullInfo** *(updateSupergroupFullInfo)* - child of Update
  ///
  /// Some data in supergroupFullInfo has been changed.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  /// * [supergroupFullInfo]: New full information about the supergroup.
  const UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
    this.extra,
    this.clientId,
  });

  /// Identifier of the supergroup or channel
  final int supergroupId;

  /// New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateSupergroupFullInfo(
        supergroupId: json['supergroup_id'],
        supergroupFullInfo:
            SupergroupFullInfo.fromJson(json['supergroup_full_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "supergroup_id": supergroupId,
      "supergroup_full_info": supergroupFullInfo.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Identifier of the supergroup or channel
  /// * [supergroup_full_info]: New full information about the supergroup
  @override
  UpdateSupergroupFullInfo copyWith({
    int? supergroupId,
    SupergroupFullInfo? supergroupFullInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSupergroupFullInfo(
        supergroupId: supergroupId ?? this.supergroupId,
        supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSupergroupFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateServiceNotification** *(updateServiceNotification)* - child of Update
///
/// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.
///
/// * [type]: Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method.
/// * [content]: Notification content.
final class UpdateServiceNotification extends Update {
  /// **UpdateServiceNotification** *(updateServiceNotification)* - child of Update
  ///
  /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.
  ///
  /// * [type]: Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method.
  /// * [content]: Notification content.
  const UpdateServiceNotification({
    required this.type,
    required this.content,
    this.extra,
    this.clientId,
  });

  /// Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// Notification content
  final MessageContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) =>
      UpdateServiceNotification(
        type: json['type'],
        content: MessageContent.fromJson(json['content']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "type": type,
      "content": content.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [type]: Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
  /// * [content]: Notification content
  @override
  UpdateServiceNotification copyWith({
    String? type,
    MessageContent? content,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateServiceNotification(
        type: type ?? this.type,
        content: content ?? this.content,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateServiceNotification';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFile** *(updateFile)* - child of Update
///
/// Information about a file was updated.
///
/// * [file]: New data about the file.
final class UpdateFile extends Update {
  /// **UpdateFile** *(updateFile)* - child of Update
  ///
  /// Information about a file was updated.
  ///
  /// * [file]: New data about the file.
  const UpdateFile({
    required this.file,
    this.extra,
    this.clientId,
  });

  /// New data about the file
  final File file;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFile.fromJson(Map<String, dynamic> json) => UpdateFile(
        file: File.fromJson(json['file']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "file": file.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [file]: New data about the file
  @override
  UpdateFile copyWith({
    File? file,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFile(
        file: file ?? this.file,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFile';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileGenerationStart** *(updateFileGenerationStart)* - child of Update
///
/// The file generation process needs to be started by the application.
///
/// * [generationId]: Unique identifier for the generation process.
/// * [originalPath]: The path to a file from which a new file is generated; may be empty.
/// * [destinationPath]: The path to a file that must be created and where the new file is generated.
/// * [conversion]: String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application.
final class UpdateFileGenerationStart extends Update {
  /// **UpdateFileGenerationStart** *(updateFileGenerationStart)* - child of Update
  ///
  /// The file generation process needs to be started by the application.
  ///
  /// * [generationId]: Unique identifier for the generation process.
  /// * [originalPath]: The path to a file from which a new file is generated; may be empty.
  /// * [destinationPath]: The path to a file that must be created and where the new file is generated.
  /// * [conversion]: String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application.
  const UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
    this.extra,
    this.clientId,
  });

  /// Unique identifier for the generation process
  final int generationId;

  /// The path to a file from which a new file is generated; may be empty
  final String originalPath;

  /// The path to a file that must be created and where the new file is generated
  final String destinationPath;

  /// String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
  final String conversion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) =>
      UpdateFileGenerationStart(
        generationId: json['generation_id'] is int
            ? json['generation_id']
            : int.parse(json['generation_id']),
        originalPath: json['original_path'],
        destinationPath: json['destination_path'],
        conversion: json['conversion'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "generation_id": generationId,
      "original_path": originalPath,
      "destination_path": destinationPath,
      "conversion": conversion,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [generation_id]: Unique identifier for the generation process
  /// * [original_path]: The path to a file from which a new file is generated; may be empty
  /// * [destination_path]: The path to a file that must be created and where the new file is generated
  /// * [conversion]: String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
  @override
  UpdateFileGenerationStart copyWith({
    int? generationId,
    String? originalPath,
    String? destinationPath,
    String? conversion,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileGenerationStart(
        generationId: generationId ?? this.generationId,
        originalPath: originalPath ?? this.originalPath,
        destinationPath: destinationPath ?? this.destinationPath,
        conversion: conversion ?? this.conversion,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileGenerationStart';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileGenerationStop** *(updateFileGenerationStop)* - child of Update
///
/// File generation is no longer needed.
///
/// * [generationId]: Unique identifier for the generation process.
final class UpdateFileGenerationStop extends Update {
  /// **UpdateFileGenerationStop** *(updateFileGenerationStop)* - child of Update
  ///
  /// File generation is no longer needed.
  ///
  /// * [generationId]: Unique identifier for the generation process.
  const UpdateFileGenerationStop({
    required this.generationId,
    this.extra,
    this.clientId,
  });

  /// Unique identifier for the generation process
  final int generationId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) =>
      UpdateFileGenerationStop(
        generationId: json['generation_id'] is int
            ? json['generation_id']
            : int.parse(json['generation_id']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "generation_id": generationId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [generation_id]: Unique identifier for the generation process
  @override
  UpdateFileGenerationStop copyWith({
    int? generationId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileGenerationStop(
        generationId: generationId ?? this.generationId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileGenerationStop';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileDownloads** *(updateFileDownloads)* - child of Update
///
/// The state of the file download list has changed.
///
/// * [totalSize]: Total size of files in the file download list, in bytes.
/// * [totalCount]: Total number of files in the file download list.
/// * [downloadedSize]: Total downloaded size of files in the file download list, in bytes.
final class UpdateFileDownloads extends Update {
  /// **UpdateFileDownloads** *(updateFileDownloads)* - child of Update
  ///
  /// The state of the file download list has changed.
  ///
  /// * [totalSize]: Total size of files in the file download list, in bytes.
  /// * [totalCount]: Total number of files in the file download list.
  /// * [downloadedSize]: Total downloaded size of files in the file download list, in bytes.
  const UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
    this.extra,
    this.clientId,
  });

  /// Total size of files in the file download list, in bytes
  final int totalSize;

  /// Total number of files in the file download list
  final int totalCount;

  /// Total downloaded size of files in the file download list, in bytes
  final int downloadedSize;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileDownloads(
        totalSize: json['total_size'],
        totalCount: json['total_count'],
        downloadedSize: json['downloaded_size'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "total_size": totalSize,
      "total_count": totalCount,
      "downloaded_size": downloadedSize,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_size]: Total size of files in the file download list, in bytes
  /// * [total_count]: Total number of files in the file download list
  /// * [downloaded_size]: Total downloaded size of files in the file download list, in bytes
  @override
  UpdateFileDownloads copyWith({
    int? totalSize,
    int? totalCount,
    int? downloadedSize,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileDownloads(
        totalSize: totalSize ?? this.totalSize,
        totalCount: totalCount ?? this.totalCount,
        downloadedSize: downloadedSize ?? this.downloadedSize,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileDownloads';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileAddedToDownloads** *(updateFileAddedToDownloads)* - child of Update
///
/// A file was added to the file download list. This update is sent only after file download list is loaded for the first time.
///
/// * [fileDownload]: The added file download.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileAddedToDownloads extends Update {
  /// **UpdateFileAddedToDownloads** *(updateFileAddedToDownloads)* - child of Update
  ///
  /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileDownload]: The added file download.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileAddedToDownloads({
    required this.fileDownload,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// The added file download
  final FileDownload fileDownload;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileAddedToDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileAddedToDownloads(
        fileDownload: FileDownload.fromJson(json['file_download']),
        counts: DownloadedFileCounts.fromJson(json['counts']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "file_download": fileDownload.toJson(),
      "counts": counts.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [file_download]: The added file download
  /// * [counts]: New number of being downloaded and recently downloaded files found
  @override
  UpdateFileAddedToDownloads copyWith({
    FileDownload? fileDownload,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileAddedToDownloads(
        fileDownload: fileDownload ?? this.fileDownload,
        counts: counts ?? this.counts,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileAddedToDownloads';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileDownload** *(updateFileDownload)* - child of Update
///
/// A file download was changed. This update is sent only after file download list is loaded for the first time.
///
/// * [fileId]: File identifier.
/// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
/// * [isPaused]: True, if downloading of the file is paused.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileDownload extends Update {
  /// **UpdateFileDownload** *(updateFileDownload)* - child of Update
  ///
  /// A file download was changed. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileId]: File identifier.
  /// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
  /// * [isPaused]: True, if downloading of the file is paused.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileDownload({
    required this.fileId,
    required this.completeDate,
    required this.isPaused,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// File identifier
  final int fileId;

  /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// True, if downloading of the file is paused
  final bool isPaused;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileDownload.fromJson(Map<String, dynamic> json) =>
      UpdateFileDownload(
        fileId: json['file_id'],
        completeDate: json['complete_date'],
        isPaused: json['is_paused'],
        counts: DownloadedFileCounts.fromJson(json['counts']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "file_id": fileId,
      "complete_date": completeDate,
      "is_paused": isPaused,
      "counts": counts.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [file_id]: File identifier
  /// * [complete_date]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  /// * [is_paused]: True, if downloading of the file is paused
  /// * [counts]: New number of being downloaded and recently downloaded files found
  @override
  UpdateFileDownload copyWith({
    int? fileId,
    int? completeDate,
    bool? isPaused,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileDownload(
        fileId: fileId ?? this.fileId,
        completeDate: completeDate ?? this.completeDate,
        isPaused: isPaused ?? this.isPaused,
        counts: counts ?? this.counts,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileDownload';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFileRemovedFromDownloads** *(updateFileRemovedFromDownloads)* - child of Update
///
/// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.
///
/// * [fileId]: File identifier.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileRemovedFromDownloads extends Update {
  /// **UpdateFileRemovedFromDownloads** *(updateFileRemovedFromDownloads)* - child of Update
  ///
  /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileId]: File identifier.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileRemovedFromDownloads({
    required this.fileId,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// File identifier
  final int fileId;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFileRemovedFromDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileRemovedFromDownloads(
        fileId: json['file_id'],
        counts: DownloadedFileCounts.fromJson(json['counts']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "file_id": fileId,
      "counts": counts.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [file_id]: File identifier
  /// * [counts]: New number of being downloaded and recently downloaded files found
  @override
  UpdateFileRemovedFromDownloads copyWith({
    int? fileId,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFileRemovedFromDownloads(
        fileId: fileId ?? this.fileId,
        counts: counts ?? this.counts,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFileRemovedFromDownloads';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateCall** *(updateCall)* - child of Update
///
/// New call was created or information about a call was updated.
///
/// * [call]: New data about a call.
final class UpdateCall extends Update {
  /// **UpdateCall** *(updateCall)* - child of Update
  ///
  /// New call was created or information about a call was updated.
  ///
  /// * [call]: New data about a call.
  const UpdateCall({
    required this.call,
    this.extra,
    this.clientId,
  });

  /// New data about a call
  final Call call;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
        call: Call.fromJson(json['call']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "call": call.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [call]: New data about a call
  @override
  UpdateCall copyWith({
    Call? call,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateCall(
        call: call ?? this.call,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateCall';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateGroupCall** *(updateGroupCall)* - child of Update
///
/// Information about a group call was updated.
///
/// * [groupCall]: New data about a group call.
final class UpdateGroupCall extends Update {
  /// **UpdateGroupCall** *(updateGroupCall)* - child of Update
  ///
  /// Information about a group call was updated.
  ///
  /// * [groupCall]: New data about a group call.
  const UpdateGroupCall({
    required this.groupCall,
    this.extra,
    this.clientId,
  });

  /// New data about a group call
  final GroupCall groupCall;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) =>
      UpdateGroupCall(
        groupCall: GroupCall.fromJson(json['group_call']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "group_call": groupCall.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call]: New data about a group call
  @override
  UpdateGroupCall copyWith({
    GroupCall? groupCall,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateGroupCall(
        groupCall: groupCall ?? this.groupCall,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateGroupCall';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateGroupCallParticipant** *(updateGroupCallParticipant)* - child of Update
///
/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.
///
/// * [groupCallId]: Identifier of group call.
/// * [participant]: New data about a participant.
final class UpdateGroupCallParticipant extends Update {
  /// **UpdateGroupCallParticipant** *(updateGroupCallParticipant)* - child of Update
  ///
  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.
  ///
  /// * [groupCallId]: Identifier of group call.
  /// * [participant]: New data about a participant.
  const UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
    this.extra,
    this.clientId,
  });

  /// Identifier of group call
  final int groupCallId;

  /// New data about a participant
  final GroupCallParticipant participant;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) =>
      UpdateGroupCallParticipant(
        groupCallId: json['group_call_id'],
        participant: GroupCallParticipant.fromJson(json['participant']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "group_call_id": groupCallId,
      "participant": participant.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Identifier of group call
  /// * [participant]: New data about a participant
  @override
  UpdateGroupCallParticipant copyWith({
    int? groupCallId,
    GroupCallParticipant? participant,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateGroupCallParticipant(
        groupCallId: groupCallId ?? this.groupCallId,
        participant: participant ?? this.participant,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateGroupCallParticipant';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewCallSignalingData** *(updateNewCallSignalingData)* - child of Update
///
/// New call signaling data arrived.
///
/// * [callId]: The call identifier.
/// * [data]: The data.
final class UpdateNewCallSignalingData extends Update {
  /// **UpdateNewCallSignalingData** *(updateNewCallSignalingData)* - child of Update
  ///
  /// New call signaling data arrived.
  ///
  /// * [callId]: The call identifier.
  /// * [data]: The data.
  const UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
    this.extra,
    this.clientId,
  });

  /// The call identifier
  final int callId;

  /// The data
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) =>
      UpdateNewCallSignalingData(
        callId: json['call_id'],
        data: json['data'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "call_id": callId,
      "data": data,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [call_id]: The call identifier
  /// * [data]: The data
  @override
  UpdateNewCallSignalingData copyWith({
    int? callId,
    String? data,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewCallSignalingData(
        callId: callId ?? this.callId,
        data: data ?? this.data,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewCallSignalingData';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUserPrivacySettingRules** *(updateUserPrivacySettingRules)* - child of Update
///
/// Some privacy setting rules have been changed.
///
/// * [setting]: The privacy setting.
/// * [rules]: New privacy rules.
final class UpdateUserPrivacySettingRules extends Update {
  /// **UpdateUserPrivacySettingRules** *(updateUserPrivacySettingRules)* - child of Update
  ///
  /// Some privacy setting rules have been changed.
  ///
  /// * [setting]: The privacy setting.
  /// * [rules]: New privacy rules.
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
    this.extra,
    this.clientId,
  });

  /// The privacy setting
  final UserPrivacySetting setting;

  /// New privacy rules
  final UserPrivacySettingRules rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) =>
      UpdateUserPrivacySettingRules(
        setting: UserPrivacySetting.fromJson(json['setting']),
        rules: UserPrivacySettingRules.fromJson(json['rules']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [setting]: The privacy setting
  /// * [rules]: New privacy rules
  @override
  UpdateUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUserPrivacySettingRules(
        setting: setting ?? this.setting,
        rules: rules ?? this.rules,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUserPrivacySettingRules';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUnreadMessageCount** *(updateUnreadMessageCount)* - child of Update
///
/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used.
///
/// * [chatList]: The chat list with changed number of unread messages.
/// * [unreadCount]: Total number of unread messages.
/// * [unreadUnmutedCount]: Total number of unread messages in unmuted chats.
final class UpdateUnreadMessageCount extends Update {
  /// **UpdateUnreadMessageCount** *(updateUnreadMessageCount)* - child of Update
  ///
  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used.
  ///
  /// * [chatList]: The chat list with changed number of unread messages.
  /// * [unreadCount]: Total number of unread messages.
  /// * [unreadUnmutedCount]: Total number of unread messages in unmuted chats.
  const UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    this.extra,
    this.clientId,
  });

  /// The chat list with changed number of unread messages
  final ChatList chatList;

  /// Total number of unread messages
  final int unreadCount;

  /// Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) =>
      UpdateUnreadMessageCount(
        chatList: ChatList.fromJson(json['chat_list']),
        unreadCount: json['unread_count'],
        unreadUnmutedCount: json['unread_unmuted_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_list": chatList.toJson(),
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_list]: The chat list with changed number of unread messages
  /// * [unread_count]: Total number of unread messages
  /// * [unread_unmuted_count]: Total number of unread messages in unmuted chats
  @override
  UpdateUnreadMessageCount copyWith({
    ChatList? chatList,
    int? unreadCount,
    int? unreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUnreadMessageCount(
        chatList: chatList ?? this.chatList,
        unreadCount: unreadCount ?? this.unreadCount,
        unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUnreadMessageCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUnreadChatCount** *(updateUnreadChatCount)* - child of Update
///
/// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.
///
/// * [chatList]: The chat list with changed number of unread messages.
/// * [totalCount]: Approximate total number of chats in the chat list.
/// * [unreadCount]: Total number of unread chats.
/// * [unreadUnmutedCount]: Total number of unread unmuted chats.
/// * [markedAsUnreadCount]: Total number of chats marked as unread.
/// * [markedAsUnreadUnmutedCount]: Total number of unmuted chats marked as unread.
final class UpdateUnreadChatCount extends Update {
  /// **UpdateUnreadChatCount** *(updateUnreadChatCount)* - child of Update
  ///
  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.
  ///
  /// * [chatList]: The chat list with changed number of unread messages.
  /// * [totalCount]: Approximate total number of chats in the chat list.
  /// * [unreadCount]: Total number of unread chats.
  /// * [unreadUnmutedCount]: Total number of unread unmuted chats.
  /// * [markedAsUnreadCount]: Total number of chats marked as unread.
  /// * [markedAsUnreadUnmutedCount]: Total number of unmuted chats marked as unread.
  const UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
    this.extra,
    this.clientId,
  });

  /// The chat list with changed number of unread messages
  final ChatList chatList;

  /// Approximate total number of chats in the chat list
  final int totalCount;

  /// Total number of unread chats
  final int unreadCount;

  /// Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// Total number of unmuted chats marked as unread
  final int markedAsUnreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) =>
      UpdateUnreadChatCount(
        chatList: ChatList.fromJson(json['chat_list']),
        totalCount: json['total_count'],
        unreadCount: json['unread_count'],
        unreadUnmutedCount: json['unread_unmuted_count'],
        markedAsUnreadCount: json['marked_as_unread_count'],
        markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_list": chatList.toJson(),
      "total_count": totalCount,
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
      "marked_as_unread_count": markedAsUnreadCount,
      "marked_as_unread_unmuted_count": markedAsUnreadUnmutedCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_list]: The chat list with changed number of unread messages
  /// * [total_count]: Approximate total number of chats in the chat list
  /// * [unread_count]: Total number of unread chats
  /// * [unread_unmuted_count]: Total number of unread unmuted chats
  /// * [marked_as_unread_count]: Total number of chats marked as unread
  /// * [marked_as_unread_unmuted_count]: Total number of unmuted chats marked as unread
  @override
  UpdateUnreadChatCount copyWith({
    ChatList? chatList,
    int? totalCount,
    int? unreadCount,
    int? unreadUnmutedCount,
    int? markedAsUnreadCount,
    int? markedAsUnreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUnreadChatCount(
        chatList: chatList ?? this.chatList,
        totalCount: totalCount ?? this.totalCount,
        unreadCount: unreadCount ?? this.unreadCount,
        unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
        markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
        markedAsUnreadUnmutedCount:
            markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUnreadChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStory** *(updateStory)* - child of Update
///
/// A story was changed.
///
/// * [story]: The new information about the story.
final class UpdateStory extends Update {
  /// **UpdateStory** *(updateStory)* - child of Update
  ///
  /// A story was changed.
  ///
  /// * [story]: The new information about the story.
  const UpdateStory({
    required this.story,
    this.extra,
    this.clientId,
  });

  /// The new information about the story
  final Story story;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStory.fromJson(Map<String, dynamic> json) => UpdateStory(
        story: Story.fromJson(json['story']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story": story.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story]: The new information about the story
  @override
  UpdateStory copyWith({
    Story? story,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStory(
        story: story ?? this.story,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStoryDeleted** *(updateStoryDeleted)* - child of Update
///
/// A story became inaccessible.
///
/// * [storySenderChatId]: Identifier of the chat that posted the story.
/// * [storyId]: Story identifier.
final class UpdateStoryDeleted extends Update {
  /// **UpdateStoryDeleted** *(updateStoryDeleted)* - child of Update
  ///
  /// A story became inaccessible.
  ///
  /// * [storySenderChatId]: Identifier of the chat that posted the story.
  /// * [storyId]: Story identifier.
  const UpdateStoryDeleted({
    required this.storySenderChatId,
    required this.storyId,
    this.extra,
    this.clientId,
  });

  /// Identifier of the chat that posted the story
  final int storySenderChatId;

  /// Story identifier
  final int storyId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStoryDeleted.fromJson(Map<String, dynamic> json) =>
      UpdateStoryDeleted(
        storySenderChatId: json['story_sender_chat_id'],
        storyId: json['story_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_sender_chat_id]: Identifier of the chat that posted the story
  /// * [story_id]: Story identifier
  @override
  UpdateStoryDeleted copyWith({
    int? storySenderChatId,
    int? storyId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStoryDeleted(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStoryDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStorySendSucceeded** *(updateStorySendSucceeded)* - child of Update
///
/// A story has been successfully sent.
///
/// * [story]: The sent story.
/// * [oldStoryId]: The previous temporary story identifier.
final class UpdateStorySendSucceeded extends Update {
  /// **UpdateStorySendSucceeded** *(updateStorySendSucceeded)* - child of Update
  ///
  /// A story has been successfully sent.
  ///
  /// * [story]: The sent story.
  /// * [oldStoryId]: The previous temporary story identifier.
  const UpdateStorySendSucceeded({
    required this.story,
    required this.oldStoryId,
    this.extra,
    this.clientId,
  });

  /// The sent story
  final Story story;

  /// The previous temporary story identifier
  final int oldStoryId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStorySendSucceeded.fromJson(Map<String, dynamic> json) =>
      UpdateStorySendSucceeded(
        story: Story.fromJson(json['story']),
        oldStoryId: json['old_story_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story": story.toJson(),
      "old_story_id": oldStoryId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story]: The sent story
  /// * [old_story_id]: The previous temporary story identifier
  @override
  UpdateStorySendSucceeded copyWith({
    Story? story,
    int? oldStoryId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStorySendSucceeded(
        story: story ?? this.story,
        oldStoryId: oldStoryId ?? this.oldStoryId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStorySendSucceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStorySendFailed** *(updateStorySendFailed)* - child of Update
///
/// A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update.
///
/// * [story]: The failed to send story.
/// * [error]: The cause of the story sending failure.
/// * [errorType]: Type of the error; may be null if unknown *(optional)*.
final class UpdateStorySendFailed extends Update {
  /// **UpdateStorySendFailed** *(updateStorySendFailed)* - child of Update
  ///
  /// A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update.
  ///
  /// * [story]: The failed to send story.
  /// * [error]: The cause of the story sending failure.
  /// * [errorType]: Type of the error; may be null if unknown *(optional)*.
  const UpdateStorySendFailed({
    required this.story,
    required this.error,
    this.errorType,
    this.extra,
    this.clientId,
  });

  /// The failed to send story
  final Story story;

  /// The cause of the story sending failure
  final TdError error;

  /// Type of the error; may be null if unknown
  final CanSendStoryResult? errorType;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStorySendFailed.fromJson(Map<String, dynamic> json) =>
      UpdateStorySendFailed(
        story: Story.fromJson(json['story']),
        error: TdError.fromJson(json['error']),
        errorType: json['error_type'] == null
            ? null
            : CanSendStoryResult.fromJson(json['error_type']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story": story.toJson(),
      "error": error.toJson(),
      "error_type": errorType?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story]: The failed to send story
  /// * [error]: The cause of the story sending failure
  /// * [error_type]: Type of the error; may be null if unknown
  @override
  UpdateStorySendFailed copyWith({
    Story? story,
    TdError? error,
    CanSendStoryResult? errorType,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStorySendFailed(
        story: story ?? this.story,
        error: error ?? this.error,
        errorType: errorType ?? this.errorType,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStorySendFailed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatActiveStories** *(updateChatActiveStories)* - child of Update
///
/// The list of active stories posted by a specific chat has changed.
///
/// * [activeStories]: The new list of active stories.
final class UpdateChatActiveStories extends Update {
  /// **UpdateChatActiveStories** *(updateChatActiveStories)* - child of Update
  ///
  /// The list of active stories posted by a specific chat has changed.
  ///
  /// * [activeStories]: The new list of active stories.
  const UpdateChatActiveStories({
    required this.activeStories,
    this.extra,
    this.clientId,
  });

  /// The new list of active stories
  final ChatActiveStories activeStories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatActiveStories.fromJson(Map<String, dynamic> json) =>
      UpdateChatActiveStories(
        activeStories: ChatActiveStories.fromJson(json['active_stories']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "active_stories": activeStories.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [active_stories]: The new list of active stories
  @override
  UpdateChatActiveStories copyWith({
    ChatActiveStories? activeStories,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatActiveStories(
        activeStories: activeStories ?? this.activeStories,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatActiveStories';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStoryListChatCount** *(updateStoryListChatCount)* - child of Update
///
/// Number of chats in a story list has changed.
///
/// * [storyList]: The story list.
/// * [chatCount]: Approximate total number of chats with active stories in the list.
final class UpdateStoryListChatCount extends Update {
  /// **UpdateStoryListChatCount** *(updateStoryListChatCount)* - child of Update
  ///
  /// Number of chats in a story list has changed.
  ///
  /// * [storyList]: The story list.
  /// * [chatCount]: Approximate total number of chats with active stories in the list.
  const UpdateStoryListChatCount({
    required this.storyList,
    required this.chatCount,
    this.extra,
    this.clientId,
  });

  /// The story list
  final StoryList storyList;

  /// Approximate total number of chats with active stories in the list
  final int chatCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStoryListChatCount.fromJson(Map<String, dynamic> json) =>
      UpdateStoryListChatCount(
        storyList: StoryList.fromJson(json['story_list']),
        chatCount: json['chat_count'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "story_list": storyList.toJson(),
      "chat_count": chatCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_list]: The story list
  /// * [chat_count]: Approximate total number of chats with active stories in the list
  @override
  UpdateStoryListChatCount copyWith({
    StoryList? storyList,
    int? chatCount,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStoryListChatCount(
        storyList: storyList ?? this.storyList,
        chatCount: chatCount ?? this.chatCount,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStoryListChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStoryStealthMode** *(updateStoryStealthMode)* - child of Update
///
/// Story stealth mode settings have changed.
///
/// * [activeUntilDate]: Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled.
/// * [cooldownUntilDate]: Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown.
final class UpdateStoryStealthMode extends Update {
  /// **UpdateStoryStealthMode** *(updateStoryStealthMode)* - child of Update
  ///
  /// Story stealth mode settings have changed.
  ///
  /// * [activeUntilDate]: Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled.
  /// * [cooldownUntilDate]: Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown.
  const UpdateStoryStealthMode({
    required this.activeUntilDate,
    required this.cooldownUntilDate,
    this.extra,
    this.clientId,
  });

  /// Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled
  final int activeUntilDate;

  /// Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown
  final int cooldownUntilDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStoryStealthMode.fromJson(Map<String, dynamic> json) =>
      UpdateStoryStealthMode(
        activeUntilDate: json['active_until_date'],
        cooldownUntilDate: json['cooldown_until_date'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "active_until_date": activeUntilDate,
      "cooldown_until_date": cooldownUntilDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [active_until_date]: Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled
  /// * [cooldown_until_date]: Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown
  @override
  UpdateStoryStealthMode copyWith({
    int? activeUntilDate,
    int? cooldownUntilDate,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStoryStealthMode(
        activeUntilDate: activeUntilDate ?? this.activeUntilDate,
        cooldownUntilDate: cooldownUntilDate ?? this.cooldownUntilDate,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStoryStealthMode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateOption** *(updateOption)* - child of Update
///
/// An option changed its value.
///
/// * [name]: The option name.
/// * [value]: The new option value.
final class UpdateOption extends Update {
  /// **UpdateOption** *(updateOption)* - child of Update
  ///
  /// An option changed its value.
  ///
  /// * [name]: The option name.
  /// * [value]: The new option value.
  const UpdateOption({
    required this.name,
    required this.value,
    this.extra,
    this.clientId,
  });

  /// The option name
  final String name;

  /// The new option value
  final OptionValue value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateOption.fromJson(Map<String, dynamic> json) => UpdateOption(
        name: json['name'],
        value: OptionValue.fromJson(json['value']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "name": name,
      "value": value.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: The option name
  /// * [value]: The new option value
  @override
  UpdateOption copyWith({
    String? name,
    OptionValue? value,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateOption(
        name: name ?? this.name,
        value: value ?? this.value,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateOption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateStickerSet** *(updateStickerSet)* - child of Update
///
/// A sticker set has changed.
///
/// * [stickerSet]: The sticker set.
final class UpdateStickerSet extends Update {
  /// **UpdateStickerSet** *(updateStickerSet)* - child of Update
  ///
  /// A sticker set has changed.
  ///
  /// * [stickerSet]: The sticker set.
  const UpdateStickerSet({
    required this.stickerSet,
    this.extra,
    this.clientId,
  });

  /// The sticker set
  final StickerSet stickerSet;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) =>
      UpdateStickerSet(
        stickerSet: StickerSet.fromJson(json['sticker_set']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sticker_set": stickerSet.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_set]: The sticker set
  @override
  UpdateStickerSet copyWith({
    StickerSet? stickerSet,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateStickerSet(
        stickerSet: stickerSet ?? this.stickerSet,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateStickerSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateInstalledStickerSets** *(updateInstalledStickerSets)* - child of Update
///
/// The list of installed sticker sets was updated.
///
/// * [stickerType]: Type of the affected stickers.
/// * [stickerSetIds]: The new list of installed ordinary sticker sets.
final class UpdateInstalledStickerSets extends Update {
  /// **UpdateInstalledStickerSets** *(updateInstalledStickerSets)* - child of Update
  ///
  /// The list of installed sticker sets was updated.
  ///
  /// * [stickerType]: Type of the affected stickers.
  /// * [stickerSetIds]: The new list of installed ordinary sticker sets.
  const UpdateInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
    this.extra,
    this.clientId,
  });

  /// Type of the affected stickers
  final StickerType stickerType;

  /// The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) =>
      UpdateInstalledStickerSets(
        stickerType: StickerType.fromJson(json['sticker_type']),
        stickerSetIds: List<int>.from(
            (json['sticker_set_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the affected stickers
  /// * [sticker_set_ids]: The new list of installed ordinary sticker sets
  @override
  UpdateInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
        stickerSetIds: stickerSetIds ?? this.stickerSetIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateInstalledStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateTrendingStickerSets** *(updateTrendingStickerSets)* - child of Update
///
/// The list of trending sticker sets was updated or some of them were viewed.
///
/// * [stickerType]: Type of the affected stickers.
/// * [stickerSets]: The prefix of the list of trending sticker sets with the newest trending sticker sets.
final class UpdateTrendingStickerSets extends Update {
  /// **UpdateTrendingStickerSets** *(updateTrendingStickerSets)* - child of Update
  ///
  /// The list of trending sticker sets was updated or some of them were viewed.
  ///
  /// * [stickerType]: Type of the affected stickers.
  /// * [stickerSets]: The prefix of the list of trending sticker sets with the newest trending sticker sets.
  const UpdateTrendingStickerSets({
    required this.stickerType,
    required this.stickerSets,
    this.extra,
    this.clientId,
  });

  /// Type of the affected stickers
  final StickerType stickerType;

  /// The prefix of the list of trending sticker sets with the newest trending sticker sets
  final TrendingStickerSets stickerSets;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) =>
      UpdateTrendingStickerSets(
        stickerType: StickerType.fromJson(json['sticker_type']),
        stickerSets: TrendingStickerSets.fromJson(json['sticker_sets']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "sticker_sets": stickerSets.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the affected stickers
  /// * [sticker_sets]: The prefix of the list of trending sticker sets with the newest trending sticker sets
  @override
  UpdateTrendingStickerSets copyWith({
    StickerType? stickerType,
    TrendingStickerSets? stickerSets,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateTrendingStickerSets(
        stickerType: stickerType ?? this.stickerType,
        stickerSets: stickerSets ?? this.stickerSets,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateTrendingStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateRecentStickers** *(updateRecentStickers)* - child of Update
///
/// The list of recently used stickers was updated.
///
/// * [isAttached]: True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated.
/// * [stickerIds]: The new list of file identifiers of recently used stickers.
final class UpdateRecentStickers extends Update {
  /// **UpdateRecentStickers** *(updateRecentStickers)* - child of Update
  ///
  /// The list of recently used stickers was updated.
  ///
  /// * [isAttached]: True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated.
  /// * [stickerIds]: The new list of file identifiers of recently used stickers.
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
    this.extra,
    this.clientId,
  });

  /// True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated
  final bool isAttached;

  /// The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) =>
      UpdateRecentStickers(
        isAttached: json['is_attached'],
        stickerIds: List<int>.from(
            (json['sticker_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "is_attached": isAttached,
      "sticker_ids": stickerIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_attached]: True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated
  /// * [sticker_ids]: The new list of file identifiers of recently used stickers
  @override
  UpdateRecentStickers copyWith({
    bool? isAttached,
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateRecentStickers(
        isAttached: isAttached ?? this.isAttached,
        stickerIds: stickerIds ?? this.stickerIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateRecentStickers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateFavoriteStickers** *(updateFavoriteStickers)* - child of Update
///
/// The list of favorite stickers was updated.
///
/// * [stickerIds]: The new list of file identifiers of favorite stickers.
final class UpdateFavoriteStickers extends Update {
  /// **UpdateFavoriteStickers** *(updateFavoriteStickers)* - child of Update
  ///
  /// The list of favorite stickers was updated.
  ///
  /// * [stickerIds]: The new list of file identifiers of favorite stickers.
  const UpdateFavoriteStickers({
    required this.stickerIds,
    this.extra,
    this.clientId,
  });

  /// The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) =>
      UpdateFavoriteStickers(
        stickerIds: List<int>.from(
            (json['sticker_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sticker_ids": stickerIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_ids]: The new list of file identifiers of favorite stickers
  @override
  UpdateFavoriteStickers copyWith({
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateFavoriteStickers(
        stickerIds: stickerIds ?? this.stickerIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateFavoriteStickers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSavedAnimations** *(updateSavedAnimations)* - child of Update
///
/// The list of saved animations was updated.
///
/// * [animationIds]: The new list of file identifiers of saved animations.
final class UpdateSavedAnimations extends Update {
  /// **UpdateSavedAnimations** *(updateSavedAnimations)* - child of Update
  ///
  /// The list of saved animations was updated.
  ///
  /// * [animationIds]: The new list of file identifiers of saved animations.
  const UpdateSavedAnimations({
    required this.animationIds,
    this.extra,
    this.clientId,
  });

  /// The new list of file identifiers of saved animations
  final List<int> animationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) =>
      UpdateSavedAnimations(
        animationIds: List<int>.from(
            (json['animation_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "animation_ids": animationIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [animation_ids]: The new list of file identifiers of saved animations
  @override
  UpdateSavedAnimations copyWith({
    List<int>? animationIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSavedAnimations(
        animationIds: animationIds ?? this.animationIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSavedAnimations';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSavedNotificationSounds** *(updateSavedNotificationSounds)* - child of Update
///
/// The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.
///
/// * [notificationSoundIds]: The new list of identifiers of saved notification sounds.
final class UpdateSavedNotificationSounds extends Update {
  /// **UpdateSavedNotificationSounds** *(updateSavedNotificationSounds)* - child of Update
  ///
  /// The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.
  ///
  /// * [notificationSoundIds]: The new list of identifiers of saved notification sounds.
  const UpdateSavedNotificationSounds({
    required this.notificationSoundIds,
    this.extra,
    this.clientId,
  });

  /// The new list of identifiers of saved notification sounds
  final List<int> notificationSoundIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSavedNotificationSounds.fromJson(Map<String, dynamic> json) =>
      UpdateSavedNotificationSounds(
        notificationSoundIds: List<int>.from(
            (json['notification_sound_ids'] ?? [])
                .map((item) => item)
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "notification_sound_ids": notificationSoundIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [notification_sound_ids]: The new list of identifiers of saved notification sounds
  @override
  UpdateSavedNotificationSounds copyWith({
    List<int>? notificationSoundIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSavedNotificationSounds(
        notificationSoundIds: notificationSoundIds ?? this.notificationSoundIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSavedNotificationSounds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateDefaultBackground** *(updateDefaultBackground)* - child of Update
///
/// The default background has changed.
///
/// * [forDarkTheme]: True, if default background for dark theme has changed.
/// * [background]: The new default background; may be null *(optional)*.
final class UpdateDefaultBackground extends Update {
  /// **UpdateDefaultBackground** *(updateDefaultBackground)* - child of Update
  ///
  /// The default background has changed.
  ///
  /// * [forDarkTheme]: True, if default background for dark theme has changed.
  /// * [background]: The new default background; may be null *(optional)*.
  const UpdateDefaultBackground({
    required this.forDarkTheme,
    this.background,
    this.extra,
    this.clientId,
  });

  /// True, if default background for dark theme has changed
  final bool forDarkTheme;

  /// The new default background; may be null
  final Background? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateDefaultBackground.fromJson(Map<String, dynamic> json) =>
      UpdateDefaultBackground(
        forDarkTheme: json['for_dark_theme'],
        background: json['background'] == null
            ? null
            : Background.fromJson(json['background']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "for_dark_theme": forDarkTheme,
      "background": background?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [for_dark_theme]: True, if default background for dark theme has changed
  /// * [background]: The new default background; may be null
  @override
  UpdateDefaultBackground copyWith({
    bool? forDarkTheme,
    Background? background,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateDefaultBackground(
        forDarkTheme: forDarkTheme ?? this.forDarkTheme,
        background: background ?? this.background,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateDefaultBackground';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatThemes** *(updateChatThemes)* - child of Update
///
/// The list of available chat themes has changed.
///
/// * [chatThemes]: The new list of chat themes.
final class UpdateChatThemes extends Update {
  /// **UpdateChatThemes** *(updateChatThemes)* - child of Update
  ///
  /// The list of available chat themes has changed.
  ///
  /// * [chatThemes]: The new list of chat themes.
  const UpdateChatThemes({
    required this.chatThemes,
    this.extra,
    this.clientId,
  });

  /// The new list of chat themes
  final List<ChatTheme> chatThemes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatThemes.fromJson(Map<String, dynamic> json) =>
      UpdateChatThemes(
        chatThemes: List<ChatTheme>.from((json['chat_themes'] ?? [])
            .map((item) => ChatTheme.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_themes": chatThemes.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_themes]: The new list of chat themes
  @override
  UpdateChatThemes copyWith({
    List<ChatTheme>? chatThemes,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatThemes(
        chatThemes: chatThemes ?? this.chatThemes,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatThemes';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAccentColors** *(updateAccentColors)* - child of Update
///
/// The list of supported accent colors has changed.
///
/// * [colors]: Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported. and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme.
/// * [availableAccentColorIds]: The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order.
final class UpdateAccentColors extends Update {
  /// **UpdateAccentColors** *(updateAccentColors)* - child of Update
  ///
  /// The list of supported accent colors has changed.
  ///
  /// * [colors]: Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported. and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme.
  /// * [availableAccentColorIds]: The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order.
  const UpdateAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
    this.extra,
    this.clientId,
  });

  /// Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported. and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme
  final List<AccentColor> colors;

  /// The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order
  final List<int> availableAccentColorIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateAccentColors(
        colors: List<AccentColor>.from((json['colors'] ?? [])
            .map((item) => AccentColor.fromJson(item))
            .toList()),
        availableAccentColorIds: List<int>.from(
            (json['available_accent_color_ids'] ?? [])
                .map((item) => item)
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "colors": colors.map((i) => i.toJson()).toList(),
      "available_accent_color_ids":
          availableAccentColorIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [colors]: Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported. and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme
  /// * [available_accent_color_ids]: The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order
  @override
  UpdateAccentColors copyWith({
    List<AccentColor>? colors,
    List<int>? availableAccentColorIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAccentColors(
        colors: colors ?? this.colors,
        availableAccentColorIds:
            availableAccentColorIds ?? this.availableAccentColorIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAccentColors';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateProfileAccentColors** *(updateProfileAccentColors)* - child of Update
///
/// The list of supported accent colors for user profiles has changed.
///
/// * [colors]: Information about supported colors.
/// * [availableAccentColorIds]: The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specififed order.
final class UpdateProfileAccentColors extends Update {
  /// **UpdateProfileAccentColors** *(updateProfileAccentColors)* - child of Update
  ///
  /// The list of supported accent colors for user profiles has changed.
  ///
  /// * [colors]: Information about supported colors.
  /// * [availableAccentColorIds]: The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specififed order.
  const UpdateProfileAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
    this.extra,
    this.clientId,
  });

  /// Information about supported colors
  final List<ProfileAccentColor> colors;

  /// The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specififed order
  final List<int> availableAccentColorIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateProfileAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateProfileAccentColors(
        colors: List<ProfileAccentColor>.from((json['colors'] ?? [])
            .map((item) => ProfileAccentColor.fromJson(item))
            .toList()),
        availableAccentColorIds: List<int>.from(
            (json['available_accent_color_ids'] ?? [])
                .map((item) => item)
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "colors": colors.map((i) => i.toJson()).toList(),
      "available_accent_color_ids":
          availableAccentColorIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [colors]: Information about supported colors
  /// * [available_accent_color_ids]: The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specififed order
  @override
  UpdateProfileAccentColors copyWith({
    List<ProfileAccentColor>? colors,
    List<int>? availableAccentColorIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateProfileAccentColors(
        colors: colors ?? this.colors,
        availableAccentColorIds:
            availableAccentColorIds ?? this.availableAccentColorIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateProfileAccentColors';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateLanguagePackStrings** *(updateLanguagePackStrings)* - child of Update
///
/// Some language pack strings have been updated.
///
/// * [localizationTarget]: Localization target to which the language pack belongs.
/// * [languagePackId]: Identifier of the updated language pack.
/// * [strings]: List of changed language pack strings; empty if all strings have changed.
final class UpdateLanguagePackStrings extends Update {
  /// **UpdateLanguagePackStrings** *(updateLanguagePackStrings)* - child of Update
  ///
  /// Some language pack strings have been updated.
  ///
  /// * [localizationTarget]: Localization target to which the language pack belongs.
  /// * [languagePackId]: Identifier of the updated language pack.
  /// * [strings]: List of changed language pack strings; empty if all strings have changed.
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
    this.extra,
    this.clientId,
  });

  /// Localization target to which the language pack belongs
  final String localizationTarget;

  /// Identifier of the updated language pack
  final String languagePackId;

  /// List of changed language pack strings; empty if all strings have changed
  final List<LanguagePackString> strings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) =>
      UpdateLanguagePackStrings(
        localizationTarget: json['localization_target'],
        languagePackId: json['language_pack_id'],
        strings: List<LanguagePackString>.from((json['strings'] ?? [])
            .map((item) => LanguagePackString.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "strings": strings.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [localization_target]: Localization target to which the language pack belongs
  /// * [language_pack_id]: Identifier of the updated language pack
  /// * [strings]: List of changed language pack strings; empty if all strings have changed
  @override
  UpdateLanguagePackStrings copyWith({
    String? localizationTarget,
    String? languagePackId,
    List<LanguagePackString>? strings,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateLanguagePackStrings(
        localizationTarget: localizationTarget ?? this.localizationTarget,
        languagePackId: languagePackId ?? this.languagePackId,
        strings: strings ?? this.strings,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateLanguagePackStrings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateConnectionState** *(updateConnectionState)* - child of Update
///
/// The connection state has changed. This update must be used only to show a human-readable description of the connection state.
///
/// * [state]: The new connection state.
final class UpdateConnectionState extends Update {
  /// **UpdateConnectionState** *(updateConnectionState)* - child of Update
  ///
  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state.
  ///
  /// * [state]: The new connection state.
  const UpdateConnectionState({
    required this.state,
    this.extra,
    this.clientId,
  });

  /// The new connection state
  final ConnectionState state;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) =>
      UpdateConnectionState(
        state: ConnectionState.fromJson(json['state']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "state": state.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [state]: The new connection state
  @override
  UpdateConnectionState copyWith({
    ConnectionState? state,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateConnectionState(
        state: state ?? this.state,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateConnectionState';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateTermsOfService** *(updateTermsOfService)* - child of Update
///
/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".
///
/// * [termsOfServiceId]: Identifier of the terms of service.
/// * [termsOfService]: The new terms of service.
final class UpdateTermsOfService extends Update {
  /// **UpdateTermsOfService** *(updateTermsOfService)* - child of Update
  ///
  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".
  ///
  /// * [termsOfServiceId]: Identifier of the terms of service.
  /// * [termsOfService]: The new terms of service.
  const UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
    this.extra,
    this.clientId,
  });

  /// Identifier of the terms of service
  final String termsOfServiceId;

  /// The new terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) =>
      UpdateTermsOfService(
        termsOfServiceId: json['terms_of_service_id'],
        termsOfService: TermsOfService.fromJson(json['terms_of_service']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "terms_of_service_id": termsOfServiceId,
      "terms_of_service": termsOfService.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [terms_of_service_id]: Identifier of the terms of service
  /// * [terms_of_service]: The new terms of service
  @override
  UpdateTermsOfService copyWith({
    String? termsOfServiceId,
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateTermsOfService(
        termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
        termsOfService: termsOfService ?? this.termsOfService,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateTermsOfService';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUsersNearby** *(updateUsersNearby)* - child of Update
///
/// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.
///
/// * [usersNearby]: The new list of users nearby.
final class UpdateUsersNearby extends Update {
  /// **UpdateUsersNearby** *(updateUsersNearby)* - child of Update
  ///
  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.
  ///
  /// * [usersNearby]: The new list of users nearby.
  const UpdateUsersNearby({
    required this.usersNearby,
    this.extra,
    this.clientId,
  });

  /// The new list of users nearby
  final List<ChatNearby> usersNearby;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUsersNearby.fromJson(Map<String, dynamic> json) =>
      UpdateUsersNearby(
        usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "users_nearby": usersNearby.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [users_nearby]: The new list of users nearby
  @override
  UpdateUsersNearby copyWith({
    List<ChatNearby>? usersNearby,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUsersNearby(
        usersNearby: usersNearby ?? this.usersNearby,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUsersNearby';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateUnconfirmedSession** *(updateUnconfirmedSession)* - child of Update
///
/// The first unconfirmed session has changed.
///
/// * [session]: The unconfirmed session; may be null if none *(optional)*.
final class UpdateUnconfirmedSession extends Update {
  /// **UpdateUnconfirmedSession** *(updateUnconfirmedSession)* - child of Update
  ///
  /// The first unconfirmed session has changed.
  ///
  /// * [session]: The unconfirmed session; may be null if none *(optional)*.
  const UpdateUnconfirmedSession({
    this.session,
    this.extra,
    this.clientId,
  });

  /// The unconfirmed session; may be null if none
  final UnconfirmedSession? session;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateUnconfirmedSession.fromJson(Map<String, dynamic> json) =>
      UpdateUnconfirmedSession(
        session: json['session'] == null
            ? null
            : UnconfirmedSession.fromJson(json['session']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "session": session?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [session]: The unconfirmed session; may be null if none
  @override
  UpdateUnconfirmedSession copyWith({
    UnconfirmedSession? session,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateUnconfirmedSession(
        session: session ?? this.session,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateUnconfirmedSession';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAttachmentMenuBots** *(updateAttachmentMenuBots)* - child of Update
///
/// The list of bots added to attachment or side menu has changed.
///
/// * [bots]: The new list of bots. The bots must not be shown on scheduled messages screen.
final class UpdateAttachmentMenuBots extends Update {
  /// **UpdateAttachmentMenuBots** *(updateAttachmentMenuBots)* - child of Update
  ///
  /// The list of bots added to attachment or side menu has changed.
  ///
  /// * [bots]: The new list of bots. The bots must not be shown on scheduled messages screen.
  const UpdateAttachmentMenuBots({
    required this.bots,
    this.extra,
    this.clientId,
  });

  /// The new list of bots. The bots must not be shown on scheduled messages screen
  final List<AttachmentMenuBot> bots;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAttachmentMenuBots.fromJson(Map<String, dynamic> json) =>
      UpdateAttachmentMenuBots(
        bots: List<AttachmentMenuBot>.from((json['bots'] ?? [])
            .map((item) => AttachmentMenuBot.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "bots": bots.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bots]: The new list of bots. The bots must not be shown on scheduled messages screen
  @override
  UpdateAttachmentMenuBots copyWith({
    List<AttachmentMenuBot>? bots,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAttachmentMenuBots(
        bots: bots ?? this.bots,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAttachmentMenuBots';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateWebAppMessageSent** *(updateWebAppMessageSent)* - child of Update
///
/// A message was sent by an opened Web App, so the Web App needs to be closed.
///
/// * [webAppLaunchId]: Identifier of Web App launch.
final class UpdateWebAppMessageSent extends Update {
  /// **UpdateWebAppMessageSent** *(updateWebAppMessageSent)* - child of Update
  ///
  /// A message was sent by an opened Web App, so the Web App needs to be closed.
  ///
  /// * [webAppLaunchId]: Identifier of Web App launch.
  const UpdateWebAppMessageSent({
    required this.webAppLaunchId,
    this.extra,
    this.clientId,
  });

  /// Identifier of Web App launch
  final int webAppLaunchId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateWebAppMessageSent.fromJson(Map<String, dynamic> json) =>
      UpdateWebAppMessageSent(
        webAppLaunchId: json['web_app_launch_id'] is int
            ? json['web_app_launch_id']
            : int.parse(json['web_app_launch_id']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "web_app_launch_id": webAppLaunchId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [web_app_launch_id]: Identifier of Web App launch
  @override
  UpdateWebAppMessageSent copyWith({
    int? webAppLaunchId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateWebAppMessageSent(
        webAppLaunchId: webAppLaunchId ?? this.webAppLaunchId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateWebAppMessageSent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateActiveEmojiReactions** *(updateActiveEmojiReactions)* - child of Update
///
/// The list of active emoji reactions has changed.
///
/// * [emojis]: The new list of active emoji reactions.
final class UpdateActiveEmojiReactions extends Update {
  /// **UpdateActiveEmojiReactions** *(updateActiveEmojiReactions)* - child of Update
  ///
  /// The list of active emoji reactions has changed.
  ///
  /// * [emojis]: The new list of active emoji reactions.
  const UpdateActiveEmojiReactions({
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// The new list of active emoji reactions
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateActiveEmojiReactions.fromJson(Map<String, dynamic> json) =>
      UpdateActiveEmojiReactions(
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "emojis": emojis.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [emojis]: The new list of active emoji reactions
  @override
  UpdateActiveEmojiReactions copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateActiveEmojiReactions(
        emojis: emojis ?? this.emojis,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateActiveEmojiReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateDefaultReactionType** *(updateDefaultReactionType)* - child of Update
///
/// The type of default reaction has changed.
///
/// * [reactionType]: The new type of the default reaction.
final class UpdateDefaultReactionType extends Update {
  /// **UpdateDefaultReactionType** *(updateDefaultReactionType)* - child of Update
  ///
  /// The type of default reaction has changed.
  ///
  /// * [reactionType]: The new type of the default reaction.
  const UpdateDefaultReactionType({
    required this.reactionType,
    this.extra,
    this.clientId,
  });

  /// The new type of the default reaction
  final ReactionType reactionType;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateDefaultReactionType.fromJson(Map<String, dynamic> json) =>
      UpdateDefaultReactionType(
        reactionType: ReactionType.fromJson(json['reaction_type']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "reaction_type": reactionType.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reaction_type]: The new type of the default reaction
  @override
  UpdateDefaultReactionType copyWith({
    ReactionType? reactionType,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateDefaultReactionType(
        reactionType: reactionType ?? this.reactionType,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateDefaultReactionType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSavedMessagesTags** *(updateSavedMessagesTags)* - child of Update
///
/// Tags used in Saved Messages or a Saved Messages topic have changed.
///
/// * [savedMessagesTopicId]: Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed.
/// * [tags]: The new tags.
final class UpdateSavedMessagesTags extends Update {
  /// **UpdateSavedMessagesTags** *(updateSavedMessagesTags)* - child of Update
  ///
  /// Tags used in Saved Messages or a Saved Messages topic have changed.
  ///
  /// * [savedMessagesTopicId]: Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed.
  /// * [tags]: The new tags.
  const UpdateSavedMessagesTags({
    required this.savedMessagesTopicId,
    required this.tags,
    this.extra,
    this.clientId,
  });

  /// Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed
  final int savedMessagesTopicId;

  /// The new tags
  final SavedMessagesTags tags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSavedMessagesTags.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTags(
        savedMessagesTopicId: json['saved_messages_topic_id'],
        tags: SavedMessagesTags.fromJson(json['tags']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "tags": tags.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [saved_messages_topic_id]: Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed
  /// * [tags]: The new tags
  @override
  UpdateSavedMessagesTags copyWith({
    int? savedMessagesTopicId,
    SavedMessagesTags? tags,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSavedMessagesTags(
        savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
        tags: tags ?? this.tags,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSavedMessagesTags';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSpeechRecognitionTrial** *(updateSpeechRecognitionTrial)* - child of Update
///
/// The parameters of speech recognition without Telegram Premium subscription has changed.
///
/// * [maxMediaDuration]: The maximum allowed duration of media for speech recognition without Telegram Premium subscription.
/// * [weeklyCount]: The total number of allowed speech recognitions per week; 0 if none.
/// * [leftCount]: Number of left speech recognition attempts this week.
/// * [nextResetDate]: Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown.
final class UpdateSpeechRecognitionTrial extends Update {
  /// **UpdateSpeechRecognitionTrial** *(updateSpeechRecognitionTrial)* - child of Update
  ///
  /// The parameters of speech recognition without Telegram Premium subscription has changed.
  ///
  /// * [maxMediaDuration]: The maximum allowed duration of media for speech recognition without Telegram Premium subscription.
  /// * [weeklyCount]: The total number of allowed speech recognitions per week; 0 if none.
  /// * [leftCount]: Number of left speech recognition attempts this week.
  /// * [nextResetDate]: Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown.
  const UpdateSpeechRecognitionTrial({
    required this.maxMediaDuration,
    required this.weeklyCount,
    required this.leftCount,
    required this.nextResetDate,
    this.extra,
    this.clientId,
  });

  /// The maximum allowed duration of media for speech recognition without Telegram Premium subscription
  final int maxMediaDuration;

  /// The total number of allowed speech recognitions per week; 0 if none
  final int weeklyCount;

  /// Number of left speech recognition attempts this week
  final int leftCount;

  /// Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown
  final int nextResetDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSpeechRecognitionTrial.fromJson(Map<String, dynamic> json) =>
      UpdateSpeechRecognitionTrial(
        maxMediaDuration: json['max_media_duration'],
        weeklyCount: json['weekly_count'] ?? 0,
        leftCount: json['left_count'],
        nextResetDate: json['next_reset_date'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "max_media_duration": maxMediaDuration,
      "weekly_count": weeklyCount,
      "left_count": leftCount,
      "next_reset_date": nextResetDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [max_media_duration]: The maximum allowed duration of media for speech recognition without Telegram Premium subscription
  /// * [weekly_count]: The total number of allowed speech recognitions per week; 0 if none
  /// * [left_count]: Number of left speech recognition attempts this week
  /// * [next_reset_date]: Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown
  @override
  UpdateSpeechRecognitionTrial copyWith({
    int? maxMediaDuration,
    int? weeklyCount,
    int? leftCount,
    int? nextResetDate,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSpeechRecognitionTrial(
        maxMediaDuration: maxMediaDuration ?? this.maxMediaDuration,
        weeklyCount: weeklyCount ?? this.weeklyCount,
        leftCount: leftCount ?? this.leftCount,
        nextResetDate: nextResetDate ?? this.nextResetDate,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSpeechRecognitionTrial';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateDiceEmojis** *(updateDiceEmojis)* - child of Update
///
/// The list of supported dice emojis has changed.
///
/// * [emojis]: The new list of supported dice emojis.
final class UpdateDiceEmojis extends Update {
  /// **UpdateDiceEmojis** *(updateDiceEmojis)* - child of Update
  ///
  /// The list of supported dice emojis has changed.
  ///
  /// * [emojis]: The new list of supported dice emojis.
  const UpdateDiceEmojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// The new list of supported dice emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) =>
      UpdateDiceEmojis(
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "emojis": emojis.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [emojis]: The new list of supported dice emojis
  @override
  UpdateDiceEmojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateDiceEmojis(
        emojis: emojis ?? this.emojis,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateDiceEmojis';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAnimatedEmojiMessageClicked** *(updateAnimatedEmojiMessageClicked)* - child of Update
///
/// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [sticker]: The animated sticker to be played.
final class UpdateAnimatedEmojiMessageClicked extends Update {
  /// **UpdateAnimatedEmojiMessageClicked** *(updateAnimatedEmojiMessageClicked)* - child of Update
  ///
  /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [sticker]: The animated sticker to be played.
  const UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    required this.sticker,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// The animated sticker to be played
  final Sticker sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAnimatedEmojiMessageClicked.fromJson(
          Map<String, dynamic> json) =>
      UpdateAnimatedEmojiMessageClicked(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        sticker: Sticker.fromJson(json['sticker']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "sticker": sticker.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [sticker]: The animated sticker to be played
  @override
  UpdateAnimatedEmojiMessageClicked copyWith({
    int? chatId,
    int? messageId,
    Sticker? sticker,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAnimatedEmojiMessageClicked(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        sticker: sticker ?? this.sticker,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAnimatedEmojiMessageClicked';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAnimationSearchParameters** *(updateAnimationSearchParameters)* - child of Update
///
/// The parameters of animation search through getOption("animation_search_bot_username") bot has changed.
///
/// * [provider]: Name of the animation search provider.
/// * [emojis]: The new list of emojis suggested for searching.
final class UpdateAnimationSearchParameters extends Update {
  /// **UpdateAnimationSearchParameters** *(updateAnimationSearchParameters)* - child of Update
  ///
  /// The parameters of animation search through getOption("animation_search_bot_username") bot has changed.
  ///
  /// * [provider]: Name of the animation search provider.
  /// * [emojis]: The new list of emojis suggested for searching.
  const UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// Name of the animation search provider
  final String provider;

  /// The new list of emojis suggested for searching
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) =>
      UpdateAnimationSearchParameters(
        provider: json['provider'],
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "provider": provider,
      "emojis": emojis.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [provider]: Name of the animation search provider
  /// * [emojis]: The new list of emojis suggested for searching
  @override
  UpdateAnimationSearchParameters copyWith({
    String? provider,
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAnimationSearchParameters(
        provider: provider ?? this.provider,
        emojis: emojis ?? this.emojis,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAnimationSearchParameters';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateSuggestedActions** *(updateSuggestedActions)* - child of Update
///
/// The list of suggested to the user actions has changed.
///
/// * [addedActions]: Added suggested actions.
/// * [removedActions]: Removed suggested actions.
final class UpdateSuggestedActions extends Update {
  /// **UpdateSuggestedActions** *(updateSuggestedActions)* - child of Update
  ///
  /// The list of suggested to the user actions has changed.
  ///
  /// * [addedActions]: Added suggested actions.
  /// * [removedActions]: Removed suggested actions.
  const UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
    this.extra,
    this.clientId,
  });

  /// Added suggested actions
  final List<SuggestedAction> addedActions;

  /// Removed suggested actions
  final List<SuggestedAction> removedActions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) =>
      UpdateSuggestedActions(
        addedActions: List<SuggestedAction>.from((json['added_actions'] ?? [])
            .map((item) => SuggestedAction.fromJson(item))
            .toList()),
        removedActions: List<SuggestedAction>.from(
            (json['removed_actions'] ?? [])
                .map((item) => SuggestedAction.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "added_actions": addedActions.map((i) => i.toJson()).toList(),
      "removed_actions": removedActions.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [added_actions]: Added suggested actions
  /// * [removed_actions]: Removed suggested actions
  @override
  UpdateSuggestedActions copyWith({
    List<SuggestedAction>? addedActions,
    List<SuggestedAction>? removedActions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateSuggestedActions(
        addedActions: addedActions ?? this.addedActions,
        removedActions: removedActions ?? this.removedActions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateSuggestedActions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAddChatMembersPrivacyForbidden** *(updateAddChatMembersPrivacyForbidden)* - child of Update
///
/// Adding users to a chat has failed because of their privacy settings. An invite link can be shared with the users if appropriate.
///
/// * [chatId]: Chat identifier.
/// * [userIds]: Identifiers of users, which weren't added because of their privacy settings.
final class UpdateAddChatMembersPrivacyForbidden extends Update {
  /// **UpdateAddChatMembersPrivacyForbidden** *(updateAddChatMembersPrivacyForbidden)* - child of Update
  ///
  /// Adding users to a chat has failed because of their privacy settings. An invite link can be shared with the users if appropriate.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userIds]: Identifiers of users, which weren't added because of their privacy settings.
  const UpdateAddChatMembersPrivacyForbidden({
    required this.chatId,
    required this.userIds,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifiers of users, which weren't added because of their privacy settings
  final List<int> userIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAddChatMembersPrivacyForbidden.fromJson(
          Map<String, dynamic> json) =>
      UpdateAddChatMembersPrivacyForbidden(
        chatId: json['chat_id'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [user_ids]: Identifiers of users, which weren't added because of their privacy settings
  @override
  UpdateAddChatMembersPrivacyForbidden copyWith({
    int? chatId,
    List<int>? userIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAddChatMembersPrivacyForbidden(
        chatId: chatId ?? this.chatId,
        userIds: userIds ?? this.userIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAddChatMembersPrivacyForbidden';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateAutosaveSettings** *(updateAutosaveSettings)* - child of Update
///
/// Autosave settings for some type of chats were updated.
///
/// * [scope]: Type of chats for which autosave settings were updated.
/// * [settings]: The new autosave settings; may be null if the settings are reset to default *(optional)*.
final class UpdateAutosaveSettings extends Update {
  /// **UpdateAutosaveSettings** *(updateAutosaveSettings)* - child of Update
  ///
  /// Autosave settings for some type of chats were updated.
  ///
  /// * [scope]: Type of chats for which autosave settings were updated.
  /// * [settings]: The new autosave settings; may be null if the settings are reset to default *(optional)*.
  const UpdateAutosaveSettings({
    required this.scope,
    this.settings,
    this.extra,
    this.clientId,
  });

  /// Type of chats for which autosave settings were updated
  final AutosaveSettingsScope scope;

  /// The new autosave settings; may be null if the settings are reset to default
  final ScopeAutosaveSettings? settings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateAutosaveSettings.fromJson(Map<String, dynamic> json) =>
      UpdateAutosaveSettings(
        scope: AutosaveSettingsScope.fromJson(json['scope']),
        settings: json['settings'] == null
            ? null
            : ScopeAutosaveSettings.fromJson(json['settings']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "scope": scope.toJson(),
      "settings": settings?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [scope]: Type of chats for which autosave settings were updated
  /// * [settings]: The new autosave settings; may be null if the settings are reset to default
  @override
  UpdateAutosaveSettings copyWith({
    AutosaveSettingsScope? scope,
    ScopeAutosaveSettings? settings,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateAutosaveSettings(
        scope: scope ?? this.scope,
        settings: settings ?? this.settings,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateAutosaveSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewInlineQuery** *(updateNewInlineQuery)* - child of Update
///
/// A new incoming inline query; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [userLocation]: User location; may be null *(optional)*.
/// * [chatType]: The type of the chat from which the query originated; may be null if unknown *(optional)*.
/// * [query]: Text of the query.
/// * [offset]: Offset of the first entry to return.
final class UpdateNewInlineQuery extends Update {
  /// **UpdateNewInlineQuery** *(updateNewInlineQuery)* - child of Update
  ///
  /// A new incoming inline query; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [userLocation]: User location; may be null *(optional)*.
  /// * [chatType]: The type of the chat from which the query originated; may be null if unknown *(optional)*.
  /// * [query]: Text of the query.
  /// * [offset]: Offset of the first entry to return.
  const UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
    this.extra,
    this.clientId,
  });

  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// User location; may be null
  final Location? userLocation;

  /// The type of the chat from which the query originated; may be null if unknown
  final ChatType? chatType;

  /// Text of the query
  final String query;

  /// Offset of the first entry to return
  final String offset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewInlineQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        senderUserId: json['sender_user_id'],
        userLocation: json['user_location'] == null
            ? null
            : Location.fromJson(json['user_location']),
        chatType: json['chat_type'] == null
            ? null
            : ChatType.fromJson(json['chat_type']),
        query: json['query'],
        offset: json['offset'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "chat_type": chatType?.toJson(),
      "query": query,
      "offset": offset,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique query identifier
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [user_location]: User location; may be null
  /// * [chat_type]: The type of the chat from which the query originated; may be null if unknown
  /// * [query]: Text of the query
  /// * [offset]: Offset of the first entry to return
  @override
  UpdateNewInlineQuery copyWith({
    int? id,
    int? senderUserId,
    Location? userLocation,
    ChatType? chatType,
    String? query,
    String? offset,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewInlineQuery(
        id: id ?? this.id,
        senderUserId: senderUserId ?? this.senderUserId,
        userLocation: userLocation ?? this.userLocation,
        chatType: chatType ?? this.chatType,
        query: query ?? this.query,
        offset: offset ?? this.offset,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewInlineQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewChosenInlineResult** *(updateNewChosenInlineResult)* - child of Update
///
/// The user has chosen a result of an inline query; for bots only.
///
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [userLocation]: User location; may be null *(optional)*.
/// * [query]: Text of the query.
/// * [resultId]: Identifier of the chosen result.
/// * [inlineMessageId]: Identifier of the sent inline message, if known.
final class UpdateNewChosenInlineResult extends Update {
  /// **UpdateNewChosenInlineResult** *(updateNewChosenInlineResult)* - child of Update
  ///
  /// The user has chosen a result of an inline query; for bots only.
  ///
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [userLocation]: User location; may be null *(optional)*.
  /// * [query]: Text of the query.
  /// * [resultId]: Identifier of the chosen result.
  /// * [inlineMessageId]: Identifier of the sent inline message, if known.
  const UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// User location; may be null
  final Location? userLocation;

  /// Text of the query
  final String query;

  /// Identifier of the chosen result
  final String resultId;

  /// Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) =>
      UpdateNewChosenInlineResult(
        senderUserId: json['sender_user_id'],
        userLocation: json['user_location'] == null
            ? null
            : Location.fromJson(json['user_location']),
        query: json['query'],
        resultId: json['result_id'],
        inlineMessageId: json['inline_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "query": query,
      "result_id": resultId,
      "inline_message_id": inlineMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [user_location]: User location; may be null
  /// * [query]: Text of the query
  /// * [result_id]: Identifier of the chosen result
  /// * [inline_message_id]: Identifier of the sent inline message, if known
  @override
  UpdateNewChosenInlineResult copyWith({
    int? senderUserId,
    Location? userLocation,
    String? query,
    String? resultId,
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewChosenInlineResult(
        senderUserId: senderUserId ?? this.senderUserId,
        userLocation: userLocation ?? this.userLocation,
        query: query ?? this.query,
        resultId: resultId ?? this.resultId,
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewChosenInlineResult';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewCallbackQuery** *(updateNewCallbackQuery)* - child of Update
///
/// A new incoming callback query; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [chatId]: Identifier of the chat where the query was sent.
/// * [messageId]: Identifier of the message from which the query originated.
/// * [chatInstance]: Identifier that uniquely corresponds to the chat to which the message was sent.
/// * [payload]: Query payload.
final class UpdateNewCallbackQuery extends Update {
  /// **UpdateNewCallbackQuery** *(updateNewCallbackQuery)* - child of Update
  ///
  /// A new incoming callback query; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [chatId]: Identifier of the chat where the query was sent.
  /// * [messageId]: Identifier of the message from which the query originated.
  /// * [chatInstance]: Identifier that uniquely corresponds to the chat to which the message was sent.
  /// * [payload]: Query payload.
  const UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Identifier of the chat where the query was sent
  final int chatId;

  /// Identifier of the message from which the query originated
  final int messageId;

  /// Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;

  /// Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewCallbackQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        senderUserId: json['sender_user_id'],
        chatId: json['chat_id'],
        messageId: json['message_id'],
        chatInstance: json['chat_instance'] is int
            ? json['chat_instance']
            : int.parse(json['chat_instance']),
        payload: CallbackQueryPayload.fromJson(json['payload']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_user_id": senderUserId,
      "chat_id": chatId,
      "message_id": messageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique query identifier
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [chat_id]: Identifier of the chat where the query was sent
  /// * [message_id]: Identifier of the message from which the query originated
  /// * [chat_instance]: Identifier that uniquely corresponds to the chat to which the message was sent
  /// * [payload]: Query payload
  @override
  UpdateNewCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    int? chatId,
    int? messageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewCallbackQuery(
        id: id ?? this.id,
        senderUserId: senderUserId ?? this.senderUserId,
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        chatInstance: chatInstance ?? this.chatInstance,
        payload: payload ?? this.payload,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewCallbackQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewInlineCallbackQuery** *(updateNewInlineCallbackQuery)* - child of Update
///
/// A new incoming callback query from a message sent via a bot; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [inlineMessageId]: Identifier of the inline message from which the query originated.
/// * [chatInstance]: An identifier uniquely corresponding to the chat a message was sent to.
/// * [payload]: Query payload.
final class UpdateNewInlineCallbackQuery extends Update {
  /// **UpdateNewInlineCallbackQuery** *(updateNewInlineCallbackQuery)* - child of Update
  ///
  /// A new incoming callback query from a message sent via a bot; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [inlineMessageId]: Identifier of the inline message from which the query originated.
  /// * [chatInstance]: An identifier uniquely corresponding to the chat a message was sent to.
  /// * [payload]: Query payload.
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Identifier of the inline message from which the query originated
  final String inlineMessageId;

  /// An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewInlineCallbackQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        senderUserId: json['sender_user_id'],
        inlineMessageId: json['inline_message_id'],
        chatInstance: json['chat_instance'] is int
            ? json['chat_instance']
            : int.parse(json['chat_instance']),
        payload: CallbackQueryPayload.fromJson(json['payload']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_user_id": senderUserId,
      "inline_message_id": inlineMessageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique query identifier
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [inline_message_id]: Identifier of the inline message from which the query originated
  /// * [chat_instance]: An identifier uniquely corresponding to the chat a message was sent to
  /// * [payload]: Query payload
  @override
  UpdateNewInlineCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    String? inlineMessageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewInlineCallbackQuery(
        id: id ?? this.id,
        senderUserId: senderUserId ?? this.senderUserId,
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        chatInstance: chatInstance ?? this.chatInstance,
        payload: payload ?? this.payload,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewInlineCallbackQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewShippingQuery** *(updateNewShippingQuery)* - child of Update
///
/// A new incoming shipping query; for bots only. Only for invoices with flexible price.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [invoicePayload]: Invoice payload.
/// * [shippingAddress]: User shipping address.
final class UpdateNewShippingQuery extends Update {
  /// **UpdateNewShippingQuery** *(updateNewShippingQuery)* - child of Update
  ///
  /// A new incoming shipping query; for bots only. Only for invoices with flexible price.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [invoicePayload]: Invoice payload.
  /// * [shippingAddress]: User shipping address.
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
    this.extra,
    this.clientId,
  });

  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Invoice payload
  final String invoicePayload;

  /// User shipping address
  final Address shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewShippingQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        senderUserId: json['sender_user_id'],
        invoicePayload: json['invoice_payload'],
        shippingAddress: Address.fromJson(json['shipping_address']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_user_id": senderUserId,
      "invoice_payload": invoicePayload,
      "shipping_address": shippingAddress.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique query identifier
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [invoice_payload]: Invoice payload
  /// * [shipping_address]: User shipping address
  @override
  UpdateNewShippingQuery copyWith({
    int? id,
    int? senderUserId,
    String? invoicePayload,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewShippingQuery(
        id: id ?? this.id,
        senderUserId: senderUserId ?? this.senderUserId,
        invoicePayload: invoicePayload ?? this.invoicePayload,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewShippingQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewPreCheckoutQuery** *(updateNewPreCheckoutQuery)* - child of Update
///
/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [currency]: Currency for the product price.
/// * [totalAmount]: Total price for the product, in the smallest units of the currency.
/// * [invoicePayload]: Invoice payload.
/// * [shippingOptionId]: Identifier of a shipping option chosen by the user; may be empty if not applicable.
/// * [orderInfo]: Information about the order; may be null *(optional)*.
final class UpdateNewPreCheckoutQuery extends Update {
  /// **UpdateNewPreCheckoutQuery** *(updateNewPreCheckoutQuery)* - child of Update
  ///
  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [currency]: Currency for the product price.
  /// * [totalAmount]: Total price for the product, in the smallest units of the currency.
  /// * [invoicePayload]: Invoice payload.
  /// * [shippingOptionId]: Identifier of a shipping option chosen by the user; may be empty if not applicable.
  /// * [orderInfo]: Information about the order; may be null *(optional)*.
  const UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    this.extra,
    this.clientId,
  });

  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Currency for the product price
  final String currency;

  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// Invoice payload
  final String invoicePayload;

  /// Identifier of a shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewPreCheckoutQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        senderUserId: json['sender_user_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: json['order_info'] == null
            ? null
            : OrderInfo.fromJson(json['order_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "sender_user_id": senderUserId,
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique query identifier
  /// * [sender_user_id]: Identifier of the user who sent the query
  /// * [currency]: Currency for the product price
  /// * [total_amount]: Total price for the product, in the smallest units of the currency
  /// * [invoice_payload]: Invoice payload
  /// * [shipping_option_id]: Identifier of a shipping option chosen by the user; may be empty if not applicable
  /// * [order_info]: Information about the order; may be null
  @override
  UpdateNewPreCheckoutQuery copyWith({
    int? id,
    int? senderUserId,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewPreCheckoutQuery(
        id: id ?? this.id,
        senderUserId: senderUserId ?? this.senderUserId,
        currency: currency ?? this.currency,
        totalAmount: totalAmount ?? this.totalAmount,
        invoicePayload: invoicePayload ?? this.invoicePayload,
        shippingOptionId: shippingOptionId ?? this.shippingOptionId,
        orderInfo: orderInfo ?? this.orderInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewPreCheckoutQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewCustomEvent** *(updateNewCustomEvent)* - child of Update
///
/// A new incoming event; for bots only.
///
/// * [event]: A JSON-serialized event.
final class UpdateNewCustomEvent extends Update {
  /// **UpdateNewCustomEvent** *(updateNewCustomEvent)* - child of Update
  ///
  /// A new incoming event; for bots only.
  ///
  /// * [event]: A JSON-serialized event.
  const UpdateNewCustomEvent({
    required this.event,
    this.extra,
    this.clientId,
  });

  /// A JSON-serialized event
  final String event;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) =>
      UpdateNewCustomEvent(
        event: json['event'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "event": event,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [event]: A JSON-serialized event
  @override
  UpdateNewCustomEvent copyWith({
    String? event,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewCustomEvent(
        event: event ?? this.event,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewCustomEvent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewCustomQuery** *(updateNewCustomQuery)* - child of Update
///
/// A new incoming query; for bots only.
///
/// * [id]: The query identifier.
/// * [data]: JSON-serialized query data.
/// * [timeout]: Query timeout.
final class UpdateNewCustomQuery extends Update {
  /// **UpdateNewCustomQuery** *(updateNewCustomQuery)* - child of Update
  ///
  /// A new incoming query; for bots only.
  ///
  /// * [id]: The query identifier.
  /// * [data]: JSON-serialized query data.
  /// * [timeout]: Query timeout.
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
    this.extra,
    this.clientId,
  });

  /// The query identifier
  final int id;

  /// JSON-serialized query data
  final String data;

  /// Query timeout
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewCustomQuery(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        data: json['data'],
        timeout: json['timeout'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "data": data,
      "timeout": timeout,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: The query identifier
  /// * [data]: JSON-serialized query data
  /// * [timeout]: Query timeout
  @override
  UpdateNewCustomQuery copyWith({
    int? id,
    String? data,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewCustomQuery(
        id: id ?? this.id,
        data: data ?? this.data,
        timeout: timeout ?? this.timeout,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewCustomQuery';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdatePoll** *(updatePoll)* - child of Update
///
/// A poll was updated; for bots only.
///
/// * [poll]: New data about the poll.
final class UpdatePoll extends Update {
  /// **UpdatePoll** *(updatePoll)* - child of Update
  ///
  /// A poll was updated; for bots only.
  ///
  /// * [poll]: New data about the poll.
  const UpdatePoll({
    required this.poll,
    this.extra,
    this.clientId,
  });

  /// New data about the poll
  final Poll poll;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdatePoll.fromJson(Map<String, dynamic> json) => UpdatePoll(
        poll: Poll.fromJson(json['poll']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "poll": poll.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [poll]: New data about the poll
  @override
  UpdatePoll copyWith({
    Poll? poll,
    dynamic extra,
    int? clientId,
  }) =>
      UpdatePoll(
        poll: poll ?? this.poll,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updatePoll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdatePollAnswer** *(updatePollAnswer)* - child of Update
///
/// A user changed the answer to a poll; for bots only.
///
/// * [pollId]: Unique poll identifier.
/// * [voterId]: Identifier of the message sender that changed the answer to the poll.
/// * [optionIds]: 0-based identifiers of answer options, chosen by the user.
final class UpdatePollAnswer extends Update {
  /// **UpdatePollAnswer** *(updatePollAnswer)* - child of Update
  ///
  /// A user changed the answer to a poll; for bots only.
  ///
  /// * [pollId]: Unique poll identifier.
  /// * [voterId]: Identifier of the message sender that changed the answer to the poll.
  /// * [optionIds]: 0-based identifiers of answer options, chosen by the user.
  const UpdatePollAnswer({
    required this.pollId,
    required this.voterId,
    required this.optionIds,
    this.extra,
    this.clientId,
  });

  /// Unique poll identifier
  final int pollId;

  /// Identifier of the message sender that changed the answer to the poll
  final MessageSender voterId;

  /// 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) =>
      UpdatePollAnswer(
        pollId: json['poll_id'] is int
            ? json['poll_id']
            : int.parse(json['poll_id']),
        voterId: MessageSender.fromJson(json['voter_id']),
        optionIds: List<int>.from(
            (json['option_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "poll_id": pollId,
      "voter_id": voterId.toJson(),
      "option_ids": optionIds.map((i) => i).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [poll_id]: Unique poll identifier
  /// * [voter_id]: Identifier of the message sender that changed the answer to the poll
  /// * [option_ids]: 0-based identifiers of answer options, chosen by the user
  @override
  UpdatePollAnswer copyWith({
    int? pollId,
    MessageSender? voterId,
    List<int>? optionIds,
    dynamic extra,
    int? clientId,
  }) =>
      UpdatePollAnswer(
        pollId: pollId ?? this.pollId,
        voterId: voterId ?? this.voterId,
        optionIds: optionIds ?? this.optionIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updatePollAnswer';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatMember** *(updateChatMember)* - child of Update
///
/// User rights changed in a chat; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [actorUserId]: Identifier of the user, changing the rights.
/// * [date]: Point in time (Unix timestamp) when the user rights were changed.
/// * [inviteLink]: If user has joined the chat using an invite link, the invite link; may be null *(optional)*.
/// * [viaChatFolderInviteLink]: True, if the user has joined the chat using an invite link for a chat folder.
/// * [oldChatMember]: Previous chat member.
/// * [newChatMember]: New chat member.
final class UpdateChatMember extends Update {
  /// **UpdateChatMember** *(updateChatMember)* - child of Update
  ///
  /// User rights changed in a chat; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [actorUserId]: Identifier of the user, changing the rights.
  /// * [date]: Point in time (Unix timestamp) when the user rights were changed.
  /// * [inviteLink]: If user has joined the chat using an invite link, the invite link; may be null *(optional)*.
  /// * [viaChatFolderInviteLink]: True, if the user has joined the chat using an invite link for a chat folder.
  /// * [oldChatMember]: Previous chat member.
  /// * [newChatMember]: New chat member.
  const UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.viaChatFolderInviteLink,
    required this.oldChatMember,
    required this.newChatMember,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Identifier of the user, changing the rights
  final int actorUserId;

  /// Point in time (Unix timestamp) when the user rights were changed
  final int date;

  /// If user has joined the chat using an invite link, the invite link; may be null
  final ChatInviteLink? inviteLink;

  /// True, if the user has joined the chat using an invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// Previous chat member
  final ChatMember oldChatMember;

  /// New chat member
  final ChatMember newChatMember;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatMember.fromJson(Map<String, dynamic> json) =>
      UpdateChatMember(
        chatId: json['chat_id'],
        actorUserId: json['actor_user_id'],
        date: json['date'],
        inviteLink: json['invite_link'] == null
            ? null
            : ChatInviteLink.fromJson(json['invite_link']),
        viaChatFolderInviteLink: json['via_chat_folder_invite_link'],
        oldChatMember: ChatMember.fromJson(json['old_chat_member']),
        newChatMember: ChatMember.fromJson(json['new_chat_member']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "actor_user_id": actorUserId,
      "date": date,
      "invite_link": inviteLink?.toJson(),
      "via_chat_folder_invite_link": viaChatFolderInviteLink,
      "old_chat_member": oldChatMember.toJson(),
      "new_chat_member": newChatMember.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [actor_user_id]: Identifier of the user, changing the rights
  /// * [date]: Point in time (Unix timestamp) when the user rights were changed
  /// * [invite_link]: If user has joined the chat using an invite link, the invite link; may be null
  /// * [via_chat_folder_invite_link]: True, if the user has joined the chat using an invite link for a chat folder
  /// * [old_chat_member]: Previous chat member
  /// * [new_chat_member]: New chat member
  @override
  UpdateChatMember copyWith({
    int? chatId,
    int? actorUserId,
    int? date,
    ChatInviteLink? inviteLink,
    bool? viaChatFolderInviteLink,
    ChatMember? oldChatMember,
    ChatMember? newChatMember,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatMember(
        chatId: chatId ?? this.chatId,
        actorUserId: actorUserId ?? this.actorUserId,
        date: date ?? this.date,
        inviteLink: inviteLink ?? this.inviteLink,
        viaChatFolderInviteLink:
            viaChatFolderInviteLink ?? this.viaChatFolderInviteLink,
        oldChatMember: oldChatMember ?? this.oldChatMember,
        newChatMember: newChatMember ?? this.newChatMember,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatMember';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateNewChatJoinRequest** *(updateNewChatJoinRequest)* - child of Update
///
/// A user sent a join request to a chat; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [request]: Join request.
/// * [userChatId]: Chat identifier of the private chat with the user.
/// * [inviteLink]: The invite link, which was used to send join request; may be null *(optional)*.
final class UpdateNewChatJoinRequest extends Update {
  /// **UpdateNewChatJoinRequest** *(updateNewChatJoinRequest)* - child of Update
  ///
  /// A user sent a join request to a chat; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [request]: Join request.
  /// * [userChatId]: Chat identifier of the private chat with the user.
  /// * [inviteLink]: The invite link, which was used to send join request; may be null *(optional)*.
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    required this.userChatId,
    this.inviteLink,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Join request
  final ChatJoinRequest request;

  /// Chat identifier of the private chat with the user
  final int userChatId;

  /// The invite link, which was used to send join request; may be null
  final ChatInviteLink? inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateNewChatJoinRequest.fromJson(Map<String, dynamic> json) =>
      UpdateNewChatJoinRequest(
        chatId: json['chat_id'],
        request: ChatJoinRequest.fromJson(json['request']),
        userChatId: json['user_chat_id'],
        inviteLink: json['invite_link'] == null
            ? null
            : ChatInviteLink.fromJson(json['invite_link']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "request": request.toJson(),
      "user_chat_id": userChatId,
      "invite_link": inviteLink?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [request]: Join request
  /// * [user_chat_id]: Chat identifier of the private chat with the user
  /// * [invite_link]: The invite link, which was used to send join request; may be null
  @override
  UpdateNewChatJoinRequest copyWith({
    int? chatId,
    ChatJoinRequest? request,
    int? userChatId,
    ChatInviteLink? inviteLink,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateNewChatJoinRequest(
        chatId: chatId ?? this.chatId,
        request: request ?? this.request,
        userChatId: userChatId ?? this.userChatId,
        inviteLink: inviteLink ?? this.inviteLink,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateNewChatJoinRequest';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateChatBoost** *(updateChatBoost)* - child of Update
///
/// A chat boost has changed; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [boost]: New information about the boost.
final class UpdateChatBoost extends Update {
  /// **UpdateChatBoost** *(updateChatBoost)* - child of Update
  ///
  /// A chat boost has changed; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [boost]: New information about the boost.
  const UpdateChatBoost({
    required this.chatId,
    required this.boost,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// New information about the boost
  final ChatBoost boost;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateChatBoost.fromJson(Map<String, dynamic> json) =>
      UpdateChatBoost(
        chatId: json['chat_id'],
        boost: ChatBoost.fromJson(json['boost']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "boost": boost.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [boost]: New information about the boost
  @override
  UpdateChatBoost copyWith({
    int? chatId,
    ChatBoost? boost,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateChatBoost(
        chatId: chatId ?? this.chatId,
        boost: boost ?? this.boost,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateChatBoost';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageReaction** *(updateMessageReaction)* - child of Update
///
/// User changed its reactions on a message with public reactions; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [actorId]: Identifier of the user or chat that changed reactions.
/// * [date]: Point in time (Unix timestamp) when the reactions were changed.
/// * [oldReactionTypes]: Old list of chosen reactions.
/// * [newReactionTypes]: New list of chosen reactions.
final class UpdateMessageReaction extends Update {
  /// **UpdateMessageReaction** *(updateMessageReaction)* - child of Update
  ///
  /// User changed its reactions on a message with public reactions; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [actorId]: Identifier of the user or chat that changed reactions.
  /// * [date]: Point in time (Unix timestamp) when the reactions were changed.
  /// * [oldReactionTypes]: Old list of chosen reactions.
  /// * [newReactionTypes]: New list of chosen reactions.
  const UpdateMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.actorId,
    required this.date,
    required this.oldReactionTypes,
    required this.newReactionTypes,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Identifier of the user or chat that changed reactions
  final MessageSender actorId;

  /// Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// Old list of chosen reactions
  final List<ReactionType> oldReactionTypes;

  /// New list of chosen reactions
  final List<ReactionType> newReactionTypes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageReaction.fromJson(Map<String, dynamic> json) =>
      UpdateMessageReaction(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        actorId: MessageSender.fromJson(json['actor_id']),
        date: json['date'],
        oldReactionTypes: List<ReactionType>.from(
            (json['old_reaction_types'] ?? [])
                .map((item) => ReactionType.fromJson(item))
                .toList()),
        newReactionTypes: List<ReactionType>.from(
            (json['new_reaction_types'] ?? [])
                .map((item) => ReactionType.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "actor_id": actorId.toJson(),
      "date": date,
      "old_reaction_types": oldReactionTypes.map((i) => i.toJson()).toList(),
      "new_reaction_types": newReactionTypes.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [actor_id]: Identifier of the user or chat that changed reactions
  /// * [date]: Point in time (Unix timestamp) when the reactions were changed
  /// * [old_reaction_types]: Old list of chosen reactions
  /// * [new_reaction_types]: New list of chosen reactions
  @override
  UpdateMessageReaction copyWith({
    int? chatId,
    int? messageId,
    MessageSender? actorId,
    int? date,
    List<ReactionType>? oldReactionTypes,
    List<ReactionType>? newReactionTypes,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageReaction(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        actorId: actorId ?? this.actorId,
        date: date ?? this.date,
        oldReactionTypes: oldReactionTypes ?? this.oldReactionTypes,
        newReactionTypes: newReactionTypes ?? this.newReactionTypes,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **UpdateMessageReactions** *(updateMessageReactions)* - child of Update
///
/// Reactions added to a message with anonymous reactions have changed; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [date]: Point in time (Unix timestamp) when the reactions were changed.
/// * [reactions]: The list of reactions added to the message.
final class UpdateMessageReactions extends Update {
  /// **UpdateMessageReactions** *(updateMessageReactions)* - child of Update
  ///
  /// Reactions added to a message with anonymous reactions have changed; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [date]: Point in time (Unix timestamp) when the reactions were changed.
  /// * [reactions]: The list of reactions added to the message.
  const UpdateMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.date,
    required this.reactions,
    this.extra,
    this.clientId,
  });

  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// The list of reactions added to the message
  final List<MessageReaction> reactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UpdateMessageReactions.fromJson(Map<String, dynamic> json) =>
      UpdateMessageReactions(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        date: json['date'],
        reactions: List<MessageReaction>.from((json['reactions'] ?? [])
            .map((item) => MessageReaction.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "date": date,
      "reactions": reactions.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_id]: Message identifier
  /// * [date]: Point in time (Unix timestamp) when the reactions were changed
  /// * [reactions]: The list of reactions added to the message
  @override
  UpdateMessageReactions copyWith({
    int? chatId,
    int? messageId,
    int? date,
    List<MessageReaction>? reactions,
    dynamic extra,
    int? clientId,
  }) =>
      UpdateMessageReactions(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        date: date ?? this.date,
        reactions: reactions ?? this.reactions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'updateMessageReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
