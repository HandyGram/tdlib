part of '../tdapi.dart';

/// **Supergroup** *(supergroup)* - basic class
///
/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup:. only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos.. Unlike supergroups, channels can have an unlimited number of subscribers.
///
/// * [id]: Supergroup or channel identifier.
/// * [usernames]: Usernames of the supergroup or channel; may be null *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member.
/// * [status]: Status of the current user in the supergroup or channel; custom title will always be empty.
/// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through. getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats,. getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id,. or for chats with messages or stories from publicForwards and foundStories.
/// * [boostLevel]: Approximate boost level for the chat.
/// * [hasLinkedChat]: True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel.
/// * [hasLocation]: True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup.
/// * [signMessages]: True, if messages sent to the channel contains name of the sender. This field is only applicable to channels.
/// * [showMessageSender]: True, if messages sent to the channel have information about the sender user. This field is only applicable to channels.
/// * [joinToSendMessages]: True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups.
/// * [joinByRequest]: True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat.
/// * [isSlowModeEnabled]: True, if the slow mode is enabled in the supergroup.
/// * [isChannel]: True, if the supergroup is a channel.
/// * [isBroadcastGroup]: True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members.
/// * [isForum]: True, if the supergroup is a forum with topics.
/// * [isVerified]: True, if the supergroup or channel is verified.
/// * [hasSensitiveContent]: True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler.
/// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted.
/// * [isScam]: True, if many users reported this supergroup or channel as a scam.
/// * [isFake]: True, if many users reported this supergroup or channel as a fake account.
/// * [hasActiveStories]: True, if the supergroup or channel has non-expired stories available to the current user.
/// * [hasUnreadActiveStories]: True, if the supergroup or channel has unread non-expired stories available to the current user.
final class Supergroup extends TdObject {
  /// **Supergroup** *(supergroup)* - basic class
  ///
  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup:. only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos.. Unlike supergroups, channels can have an unlimited number of subscribers.
  ///
  /// * [id]: Supergroup or channel identifier.
  /// * [usernames]: Usernames of the supergroup or channel; may be null *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member.
  /// * [status]: Status of the current user in the supergroup or channel; custom title will always be empty.
  /// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through. getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats,. getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id,. or for chats with messages or stories from publicForwards and foundStories.
  /// * [boostLevel]: Approximate boost level for the chat.
  /// * [hasLinkedChat]: True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel.
  /// * [hasLocation]: True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup.
  /// * [signMessages]: True, if messages sent to the channel contains name of the sender. This field is only applicable to channels.
  /// * [showMessageSender]: True, if messages sent to the channel have information about the sender user. This field is only applicable to channels.
  /// * [joinToSendMessages]: True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups.
  /// * [joinByRequest]: True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat.
  /// * [isSlowModeEnabled]: True, if the slow mode is enabled in the supergroup.
  /// * [isChannel]: True, if the supergroup is a channel.
  /// * [isBroadcastGroup]: True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members.
  /// * [isForum]: True, if the supergroup is a forum with topics.
  /// * [isVerified]: True, if the supergroup or channel is verified.
  /// * [hasSensitiveContent]: True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler.
  /// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted.
  /// * [isScam]: True, if many users reported this supergroup or channel as a scam.
  /// * [isFake]: True, if many users reported this supergroup or channel as a fake account.
  /// * [hasActiveStories]: True, if the supergroup or channel has non-expired stories available to the current user.
  /// * [hasUnreadActiveStories]: True, if the supergroup or channel has unread non-expired stories available to the current user.
  const Supergroup({
    required this.id,
    this.usernames,
    required this.date,
    required this.status,
    required this.memberCount,
    required this.boostLevel,
    required this.hasLinkedChat,
    required this.hasLocation,
    required this.signMessages,
    required this.showMessageSender,
    required this.joinToSendMessages,
    required this.joinByRequest,
    required this.isSlowModeEnabled,
    required this.isChannel,
    required this.isBroadcastGroup,
    required this.isForum,
    required this.isVerified,
    required this.hasSensitiveContent,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    this.extra,
    this.clientId,
  });

  /// Supergroup or channel identifier
  final int id;

  /// Usernames of the supergroup or channel; may be null
  final Usernames? usernames;

  /// Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;

  /// Status of the current user in the supergroup or channel; custom title will always be empty
  final ChatMemberStatus status;

  /// Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through. getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats,. getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id,. or for chats with messages or stories from publicForwards and foundStories
  final int memberCount;

  /// Approximate boost level for the chat
  final int boostLevel;

  /// True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;

  /// True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;

  /// True, if messages sent to the channel contains name of the sender. This field is only applicable to channels
  final bool signMessages;

  /// True, if messages sent to the channel have information about the sender user. This field is only applicable to channels
  final bool showMessageSender;

  /// True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups
  final bool joinToSendMessages;

  /// True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
  final bool joinByRequest;

  /// True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;

  /// True, if the supergroup is a channel
  final bool isChannel;

  /// True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
  final bool isBroadcastGroup;

  /// True, if the supergroup is a forum with topics
  final bool isForum;

  /// True, if the supergroup or channel is verified
  final bool isVerified;

  /// True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler
  final bool hasSensitiveContent;

  /// If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;

  /// True, if many users reported this supergroup or channel as a scam
  final bool isScam;

  /// True, if many users reported this supergroup or channel as a fake account
  final bool isFake;

  /// True, if the supergroup or channel has non-expired stories available to the current user
  final bool hasActiveStories;

  /// True, if the supergroup or channel has unread non-expired stories available to the current user
  final bool hasUnreadActiveStories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Supergroup.fromJson(Map<String, dynamic> json) => Supergroup(
        id: json['id'],
        usernames: json['usernames'] == null
            ? null
            : Usernames.fromJson(json['usernames']),
        date: json['date'],
        status: ChatMemberStatus.fromJson(json['status']),
        memberCount: json['member_count'],
        boostLevel: json['boost_level'],
        hasLinkedChat: json['has_linked_chat'],
        hasLocation: json['has_location'],
        signMessages: json['sign_messages'],
        showMessageSender: json['show_message_sender'],
        joinToSendMessages: json['join_to_send_messages'],
        joinByRequest: json['join_by_request'],
        isSlowModeEnabled: json['is_slow_mode_enabled'],
        isChannel: json['is_channel'],
        isBroadcastGroup: json['is_broadcast_group'],
        isForum: json['is_forum'],
        isVerified: json['is_verified'],
        hasSensitiveContent: json['has_sensitive_content'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        isFake: json['is_fake'],
        hasActiveStories: json['has_active_stories'],
        hasUnreadActiveStories: json['has_unread_active_stories'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "usernames": usernames?.toJson(),
      "date": date,
      "status": status.toJson(),
      "member_count": memberCount,
      "boost_level": boostLevel,
      "has_linked_chat": hasLinkedChat,
      "has_location": hasLocation,
      "sign_messages": signMessages,
      "show_message_sender": showMessageSender,
      "join_to_send_messages": joinToSendMessages,
      "join_by_request": joinByRequest,
      "is_slow_mode_enabled": isSlowModeEnabled,
      "is_channel": isChannel,
      "is_broadcast_group": isBroadcastGroup,
      "is_forum": isForum,
      "is_verified": isVerified,
      "has_sensitive_content": hasSensitiveContent,
      "restriction_reason": restrictionReason,
      "is_scam": isScam,
      "is_fake": isFake,
      "has_active_stories": hasActiveStories,
      "has_unread_active_stories": hasUnreadActiveStories,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Supergroup or channel identifier
  /// * [usernames]: Usernames of the supergroup or channel; may be null
  /// * [date]: Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  /// * [status]: Status of the current user in the supergroup or channel; custom title will always be empty
  /// * [member_count]: Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through. getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats,. getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id,. or for chats with messages or stories from publicForwards and foundStories
  /// * [boost_level]: Approximate boost level for the chat
  /// * [has_linked_chat]: True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  /// * [has_location]: True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  /// * [sign_messages]: True, if messages sent to the channel contains name of the sender. This field is only applicable to channels
  /// * [show_message_sender]: True, if messages sent to the channel have information about the sender user. This field is only applicable to channels
  /// * [join_to_send_messages]: True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups
  /// * [join_by_request]: True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
  /// * [is_slow_mode_enabled]: True, if the slow mode is enabled in the supergroup
  /// * [is_channel]: True, if the supergroup is a channel
  /// * [is_broadcast_group]: True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
  /// * [is_forum]: True, if the supergroup is a forum with topics
  /// * [is_verified]: True, if the supergroup or channel is verified
  /// * [has_sensitive_content]: True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler
  /// * [restriction_reason]: If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  /// * [is_scam]: True, if many users reported this supergroup or channel as a scam
  /// * [is_fake]: True, if many users reported this supergroup or channel as a fake account
  /// * [has_active_stories]: True, if the supergroup or channel has non-expired stories available to the current user
  /// * [has_unread_active_stories]: True, if the supergroup or channel has unread non-expired stories available to the current user
  Supergroup copyWith({
    int? id,
    Usernames? usernames,
    int? date,
    ChatMemberStatus? status,
    int? memberCount,
    int? boostLevel,
    bool? hasLinkedChat,
    bool? hasLocation,
    bool? signMessages,
    bool? showMessageSender,
    bool? joinToSendMessages,
    bool? joinByRequest,
    bool? isSlowModeEnabled,
    bool? isChannel,
    bool? isBroadcastGroup,
    bool? isForum,
    bool? isVerified,
    bool? hasSensitiveContent,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    bool? hasActiveStories,
    bool? hasUnreadActiveStories,
    dynamic extra,
    int? clientId,
  }) =>
      Supergroup(
        id: id ?? this.id,
        usernames: usernames ?? this.usernames,
        date: date ?? this.date,
        status: status ?? this.status,
        memberCount: memberCount ?? this.memberCount,
        boostLevel: boostLevel ?? this.boostLevel,
        hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
        hasLocation: hasLocation ?? this.hasLocation,
        signMessages: signMessages ?? this.signMessages,
        showMessageSender: showMessageSender ?? this.showMessageSender,
        joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
        joinByRequest: joinByRequest ?? this.joinByRequest,
        isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
        isChannel: isChannel ?? this.isChannel,
        isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
        isForum: isForum ?? this.isForum,
        isVerified: isVerified ?? this.isVerified,
        hasSensitiveContent: hasSensitiveContent ?? this.hasSensitiveContent,
        restrictionReason: restrictionReason ?? this.restrictionReason,
        isScam: isScam ?? this.isScam,
        isFake: isFake ?? this.isFake,
        hasActiveStories: hasActiveStories ?? this.hasActiveStories,
        hasUnreadActiveStories:
            hasUnreadActiveStories ?? this.hasUnreadActiveStories,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'supergroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
