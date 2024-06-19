part of '../tdapi.dart';

/// **SupergroupFullInfo** *(supergroupFullInfo)* - basic class
///
/// Contains full information about a supergroup or channel.
///
/// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
/// * [description]: Supergroup or channel description.
/// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown.
/// * [administratorCount]: Number of privileged users in the supergroup or channel; 0 if unknown.
/// * [restrictedCount]: Number of restricted users in the supergroup; 0 if unknown.
/// * [bannedCount]: Number of users banned from chat; 0 if unknown.
/// * [linkedChatId]: Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown.
/// * [slowModeDelay]: Delay between consecutive sent messages for non-administrator supergroup members, in seconds.
/// * [slowModeDelayExpiresIn]: Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero.
/// * [canGetMembers]: True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers.
/// * [hasHiddenMembers]: True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers.
/// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators.
/// * [canSetStickerSet]: True, if the supergroup sticker set can be changed.
/// * [canSetLocation]: True, if the supergroup location can be changed.
/// * [canGetStatistics]: True, if the supergroup or channel statistics are available.
/// * [canGetRevenueStatistics]: True, if the supergroup or channel revenue statistics are available.
/// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup.
/// * [isAllHistoryAvailable]: True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators.
/// * [canHaveSponsoredMessages]: True, if the chat can have sponsored messages. The value of this field is only available to the owner of the chat.
/// * [hasAggressiveAntiSpamEnabled]: True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators.
/// * [hasPinnedStories]: True, if the supergroup or channel has pinned stories.
/// * [myBoostCount]: Number of times the current user boosted the supergroup or channel.
/// * [unrestrictBoostCount]: Number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; 0 if unspecified.
/// * [stickerSetId]: Identifier of the supergroup sticker set that must be shown before user sticker sets; 0 if none.
/// * [customEmojiStickerSetId]: Identifier of the custom emoji sticker set that can be used in the supergroup without Telegram Premium subscription; 0 if none.
/// * [location]: Location to which the supergroup is connected; may be null if none *(optional)*.
/// * [inviteLink]: Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only *(optional)*.
/// * [botCommands]: List of commands of bots in the group.
/// * [upgradedFromBasicGroupId]: Identifier of the basic group from which supergroup was upgraded; 0 if none.
/// * [upgradedFromMaxMessageId]: Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none.
final class SupergroupFullInfo extends TdObject {
  /// **SupergroupFullInfo** *(supergroupFullInfo)* - basic class
  ///
  /// Contains full information about a supergroup or channel.
  ///
  /// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
  /// * [description]: Supergroup or channel description.
  /// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown.
  /// * [administratorCount]: Number of privileged users in the supergroup or channel; 0 if unknown.
  /// * [restrictedCount]: Number of restricted users in the supergroup; 0 if unknown.
  /// * [bannedCount]: Number of users banned from chat; 0 if unknown.
  /// * [linkedChatId]: Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown.
  /// * [slowModeDelay]: Delay between consecutive sent messages for non-administrator supergroup members, in seconds.
  /// * [slowModeDelayExpiresIn]: Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero.
  /// * [canGetMembers]: True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers.
  /// * [hasHiddenMembers]: True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers.
  /// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators.
  /// * [canSetStickerSet]: True, if the supergroup sticker set can be changed.
  /// * [canSetLocation]: True, if the supergroup location can be changed.
  /// * [canGetStatistics]: True, if the supergroup or channel statistics are available.
  /// * [canGetRevenueStatistics]: True, if the supergroup or channel revenue statistics are available.
  /// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup.
  /// * [isAllHistoryAvailable]: True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators.
  /// * [canHaveSponsoredMessages]: True, if the chat can have sponsored messages. The value of this field is only available to the owner of the chat.
  /// * [hasAggressiveAntiSpamEnabled]: True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators.
  /// * [hasPinnedStories]: True, if the supergroup or channel has pinned stories.
  /// * [myBoostCount]: Number of times the current user boosted the supergroup or channel.
  /// * [unrestrictBoostCount]: Number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; 0 if unspecified.
  /// * [stickerSetId]: Identifier of the supergroup sticker set that must be shown before user sticker sets; 0 if none.
  /// * [customEmojiStickerSetId]: Identifier of the custom emoji sticker set that can be used in the supergroup without Telegram Premium subscription; 0 if none.
  /// * [location]: Location to which the supergroup is connected; may be null if none *(optional)*.
  /// * [inviteLink]: Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only *(optional)*.
  /// * [botCommands]: List of commands of bots in the group.
  /// * [upgradedFromBasicGroupId]: Identifier of the basic group from which supergroup was upgraded; 0 if none.
  /// * [upgradedFromMaxMessageId]: Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none.
  const SupergroupFullInfo({
    this.photo,
    required this.description,
    required this.memberCount,
    required this.administratorCount,
    required this.restrictedCount,
    required this.bannedCount,
    required this.linkedChatId,
    required this.slowModeDelay,
    required this.slowModeDelayExpiresIn,
    required this.canGetMembers,
    required this.hasHiddenMembers,
    required this.canHideMembers,
    required this.canSetStickerSet,
    required this.canSetLocation,
    required this.canGetStatistics,
    required this.canGetRevenueStatistics,
    required this.canToggleAggressiveAntiSpam,
    required this.isAllHistoryAvailable,
    required this.canHaveSponsoredMessages,
    required this.hasAggressiveAntiSpamEnabled,
    required this.hasPinnedStories,
    required this.myBoostCount,
    required this.unrestrictBoostCount,
    required this.stickerSetId,
    required this.customEmojiStickerSetId,
    this.location,
    this.inviteLink,
    required this.botCommands,
    required this.upgradedFromBasicGroupId,
    required this.upgradedFromMaxMessageId,
    this.extra,
    this.clientId,
  });

  /// Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// Supergroup or channel description
  final String description;

  /// Number of members in the supergroup or channel; 0 if unknown
  final int memberCount;

  /// Number of privileged users in the supergroup or channel; 0 if unknown
  final int administratorCount;

  /// Number of restricted users in the supergroup; 0 if unknown
  final int restrictedCount;

  /// Number of users banned from chat; 0 if unknown
  final int bannedCount;

  /// Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
  final int linkedChatId;

  /// Delay between consecutive sent messages for non-administrator supergroup members, in seconds
  final int slowModeDelay;

  /// Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
  final double slowModeDelayExpiresIn;

  /// True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers
  final bool canGetMembers;

  /// True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers
  final bool hasHiddenMembers;

  /// True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators
  final bool canHideMembers;

  /// True, if the supergroup sticker set can be changed
  final bool canSetStickerSet;

  /// True, if the supergroup location can be changed
  final bool canSetLocation;

  /// True, if the supergroup or channel statistics are available
  final bool canGetStatistics;

  /// True, if the supergroup or channel revenue statistics are available
  final bool canGetRevenueStatistics;

  /// True, if aggressive anti-spam checks can be enabled or disabled in the supergroup
  final bool canToggleAggressiveAntiSpam;

  /// True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators
  final bool isAllHistoryAvailable;

  /// True, if the chat can have sponsored messages. The value of this field is only available to the owner of the chat
  final bool canHaveSponsoredMessages;

  /// True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators
  final bool hasAggressiveAntiSpamEnabled;

  /// True, if the supergroup or channel has pinned stories
  final bool hasPinnedStories;

  /// Number of times the current user boosted the supergroup or channel
  final int myBoostCount;

  /// Number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; 0 if unspecified
  final int unrestrictBoostCount;

  /// Identifier of the supergroup sticker set that must be shown before user sticker sets; 0 if none
  final int stickerSetId;

  /// Identifier of the custom emoji sticker set that can be used in the supergroup without Telegram Premium subscription; 0 if none
  final int customEmojiStickerSetId;

  /// Location to which the supergroup is connected; may be null if none
  final ChatLocation? location;

  /// Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only
  final ChatInviteLink? inviteLink;

  /// List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// Identifier of the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromBasicGroupId;

  /// Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromMaxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory SupergroupFullInfo.fromJson(Map<String, dynamic> json) =>
      SupergroupFullInfo(
        photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
        description: json['description'],
        memberCount: json['member_count'],
        administratorCount: json['administrator_count'],
        restrictedCount: json['restricted_count'],
        bannedCount: json['banned_count'],
        linkedChatId: json['linked_chat_id'] ?? 0,
        slowModeDelay: json['slow_mode_delay'],
        slowModeDelayExpiresIn: json['slow_mode_delay_expires_in'],
        canGetMembers: json['can_get_members'],
        hasHiddenMembers: json['has_hidden_members'],
        canHideMembers: json['can_hide_members'],
        canSetStickerSet: json['can_set_sticker_set'],
        canSetLocation: json['can_set_location'],
        canGetStatistics: json['can_get_statistics'],
        canGetRevenueStatistics: json['can_get_revenue_statistics'],
        canToggleAggressiveAntiSpam: json['can_toggle_aggressive_anti_spam'],
        isAllHistoryAvailable: json['is_all_history_available'],
        canHaveSponsoredMessages: json['can_have_sponsored_messages'],
        hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
        hasPinnedStories: json['has_pinned_stories'],
        myBoostCount: json['my_boost_count'],
        unrestrictBoostCount: json['unrestrict_boost_count'],
        stickerSetId: json['sticker_set_id'] is int
            ? json['sticker_set_id']
            : int.tryParse(json['sticker_set_id'] ?? "") ?? 0,
        customEmojiStickerSetId: json['custom_emoji_sticker_set_id'] is int
            ? json['custom_emoji_sticker_set_id']
            : int.tryParse(json['custom_emoji_sticker_set_id'] ?? "") ?? 0,
        location: json['location'] == null
            ? null
            : ChatLocation.fromJson(json['location']),
        inviteLink: json['invite_link'] == null
            ? null
            : ChatInviteLink.fromJson(json['invite_link']),
        botCommands: List<BotCommands>.from((json['bot_commands'] ?? [])
            .map((item) => BotCommands.fromJson(item))
            .toList()),
        upgradedFromBasicGroupId: json['upgraded_from_basic_group_id'] ?? 0,
        upgradedFromMaxMessageId: json['upgraded_from_max_message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "photo": photo?.toJson(),
      "description": description,
      "member_count": memberCount,
      "administrator_count": administratorCount,
      "restricted_count": restrictedCount,
      "banned_count": bannedCount,
      "linked_chat_id": linkedChatId,
      "slow_mode_delay": slowModeDelay,
      "slow_mode_delay_expires_in": slowModeDelayExpiresIn,
      "can_get_members": canGetMembers,
      "has_hidden_members": hasHiddenMembers,
      "can_hide_members": canHideMembers,
      "can_set_sticker_set": canSetStickerSet,
      "can_set_location": canSetLocation,
      "can_get_statistics": canGetStatistics,
      "can_get_revenue_statistics": canGetRevenueStatistics,
      "can_toggle_aggressive_anti_spam": canToggleAggressiveAntiSpam,
      "is_all_history_available": isAllHistoryAvailable,
      "can_have_sponsored_messages": canHaveSponsoredMessages,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
      "has_pinned_stories": hasPinnedStories,
      "my_boost_count": myBoostCount,
      "unrestrict_boost_count": unrestrictBoostCount,
      "sticker_set_id": stickerSetId,
      "custom_emoji_sticker_set_id": customEmojiStickerSetId,
      "location": location?.toJson(),
      "invite_link": inviteLink?.toJson(),
      "bot_commands": botCommands.map((i) => i.toJson()).toList(),
      "upgraded_from_basic_group_id": upgradedFromBasicGroupId,
      "upgraded_from_max_message_id": upgradedFromMaxMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
  /// * [description]: Supergroup or channel description
  /// * [member_count]: Number of members in the supergroup or channel; 0 if unknown
  /// * [administrator_count]: Number of privileged users in the supergroup or channel; 0 if unknown
  /// * [restricted_count]: Number of restricted users in the supergroup; 0 if unknown
  /// * [banned_count]: Number of users banned from chat; 0 if unknown
  /// * [linked_chat_id]: Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
  /// * [slow_mode_delay]: Delay between consecutive sent messages for non-administrator supergroup members, in seconds
  /// * [slow_mode_delay_expires_in]: Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
  /// * [can_get_members]: True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers
  /// * [has_hidden_members]: True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers
  /// * [can_hide_members]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators
  /// * [can_set_sticker_set]: True, if the supergroup sticker set can be changed
  /// * [can_set_location]: True, if the supergroup location can be changed
  /// * [can_get_statistics]: True, if the supergroup or channel statistics are available
  /// * [can_get_revenue_statistics]: True, if the supergroup or channel revenue statistics are available
  /// * [can_toggle_aggressive_anti_spam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup
  /// * [is_all_history_available]: True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators
  /// * [can_have_sponsored_messages]: True, if the chat can have sponsored messages. The value of this field is only available to the owner of the chat
  /// * [has_aggressive_anti_spam_enabled]: True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators
  /// * [has_pinned_stories]: True, if the supergroup or channel has pinned stories
  /// * [my_boost_count]: Number of times the current user boosted the supergroup or channel
  /// * [unrestrict_boost_count]: Number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; 0 if unspecified
  /// * [sticker_set_id]: Identifier of the supergroup sticker set that must be shown before user sticker sets; 0 if none
  /// * [custom_emoji_sticker_set_id]: Identifier of the custom emoji sticker set that can be used in the supergroup without Telegram Premium subscription; 0 if none
  /// * [location]: Location to which the supergroup is connected; may be null if none
  /// * [invite_link]: Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only
  /// * [bot_commands]: List of commands of bots in the group
  /// * [upgraded_from_basic_group_id]: Identifier of the basic group from which supergroup was upgraded; 0 if none
  /// * [upgraded_from_max_message_id]: Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  SupergroupFullInfo copyWith({
    ChatPhoto? photo,
    String? description,
    int? memberCount,
    int? administratorCount,
    int? restrictedCount,
    int? bannedCount,
    int? linkedChatId,
    int? slowModeDelay,
    double? slowModeDelayExpiresIn,
    bool? canGetMembers,
    bool? hasHiddenMembers,
    bool? canHideMembers,
    bool? canSetStickerSet,
    bool? canSetLocation,
    bool? canGetStatistics,
    bool? canGetRevenueStatistics,
    bool? canToggleAggressiveAntiSpam,
    bool? isAllHistoryAvailable,
    bool? canHaveSponsoredMessages,
    bool? hasAggressiveAntiSpamEnabled,
    bool? hasPinnedStories,
    int? myBoostCount,
    int? unrestrictBoostCount,
    int? stickerSetId,
    int? customEmojiStickerSetId,
    ChatLocation? location,
    ChatInviteLink? inviteLink,
    List<BotCommands>? botCommands,
    int? upgradedFromBasicGroupId,
    int? upgradedFromMaxMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      SupergroupFullInfo(
        photo: photo ?? this.photo,
        description: description ?? this.description,
        memberCount: memberCount ?? this.memberCount,
        administratorCount: administratorCount ?? this.administratorCount,
        restrictedCount: restrictedCount ?? this.restrictedCount,
        bannedCount: bannedCount ?? this.bannedCount,
        linkedChatId: linkedChatId ?? this.linkedChatId,
        slowModeDelay: slowModeDelay ?? this.slowModeDelay,
        slowModeDelayExpiresIn:
            slowModeDelayExpiresIn ?? this.slowModeDelayExpiresIn,
        canGetMembers: canGetMembers ?? this.canGetMembers,
        hasHiddenMembers: hasHiddenMembers ?? this.hasHiddenMembers,
        canHideMembers: canHideMembers ?? this.canHideMembers,
        canSetStickerSet: canSetStickerSet ?? this.canSetStickerSet,
        canSetLocation: canSetLocation ?? this.canSetLocation,
        canGetStatistics: canGetStatistics ?? this.canGetStatistics,
        canGetRevenueStatistics:
            canGetRevenueStatistics ?? this.canGetRevenueStatistics,
        canToggleAggressiveAntiSpam:
            canToggleAggressiveAntiSpam ?? this.canToggleAggressiveAntiSpam,
        isAllHistoryAvailable:
            isAllHistoryAvailable ?? this.isAllHistoryAvailable,
        canHaveSponsoredMessages:
            canHaveSponsoredMessages ?? this.canHaveSponsoredMessages,
        hasAggressiveAntiSpamEnabled:
            hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
        hasPinnedStories: hasPinnedStories ?? this.hasPinnedStories,
        myBoostCount: myBoostCount ?? this.myBoostCount,
        unrestrictBoostCount: unrestrictBoostCount ?? this.unrestrictBoostCount,
        stickerSetId: stickerSetId ?? this.stickerSetId,
        customEmojiStickerSetId:
            customEmojiStickerSetId ?? this.customEmojiStickerSetId,
        location: location ?? this.location,
        inviteLink: inviteLink ?? this.inviteLink,
        botCommands: botCommands ?? this.botCommands,
        upgradedFromBasicGroupId:
            upgradedFromBasicGroupId ?? this.upgradedFromBasicGroupId,
        upgradedFromMaxMessageId:
            upgradedFromMaxMessageId ?? this.upgradedFromMaxMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'supergroupFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
