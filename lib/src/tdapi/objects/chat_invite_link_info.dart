part of '../tdapi.dart';

/// **ChatInviteLinkInfo** *(chatInviteLinkInfo)* - basic class
///
/// Contains information about a chat invite link.
///
/// * [chatId]: Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
/// * [accessibleFor]: If non-zero, the amount of time for which read access to the chat will remain available, in seconds.
/// * [type]: Type of the chat.
/// * [title]: Title of the chat.
/// * [photo]: Chat photo; may be null *(optional)*.
/// * [accentColorId]: Identifier of the accent color for chat title and background of chat photo.
/// * [description]: Chat description.
/// * [memberCount]: Number of members in the chat.
/// * [memberUserIds]: User identifiers of some chat members that may be known to the current user.
/// * [subscriptionInfo]: Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription *(optional)*.
/// * [createsJoinRequest]: True, if the link only creates join request.
/// * [isPublic]: True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup.
/// * [isVerified]: True, if the chat is verified.
/// * [isScam]: True, if many users reported this chat as a scam.
/// * [isFake]: True, if many users reported this chat as a fake account.
final class ChatInviteLinkInfo extends TdObject {
  /// **ChatInviteLinkInfo** *(chatInviteLinkInfo)* - basic class
  ///
  /// Contains information about a chat invite link.
  ///
  /// * [chatId]: Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
  /// * [accessibleFor]: If non-zero, the amount of time for which read access to the chat will remain available, in seconds.
  /// * [type]: Type of the chat.
  /// * [title]: Title of the chat.
  /// * [photo]: Chat photo; may be null *(optional)*.
  /// * [accentColorId]: Identifier of the accent color for chat title and background of chat photo.
  /// * [description]: Chat description.
  /// * [memberCount]: Number of members in the chat.
  /// * [memberUserIds]: User identifiers of some chat members that may be known to the current user.
  /// * [subscriptionInfo]: Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription *(optional)*.
  /// * [createsJoinRequest]: True, if the link only creates join request.
  /// * [isPublic]: True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup.
  /// * [isVerified]: True, if the chat is verified.
  /// * [isScam]: True, if many users reported this chat as a scam.
  /// * [isFake]: True, if many users reported this chat as a fake account.
  const ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.description,
    required this.memberCount,
    required this.memberUserIds,
    this.subscriptionInfo,
    required this.createsJoinRequest,
    required this.isPublic,
    required this.isVerified,
    required this.isScam,
    required this.isFake,
    this.extra,
    this.clientId,
  });

  /// Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;

  /// If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;

  /// Type of the chat
  final InviteLinkChatType type;

  /// Title of the chat
  final String title;

  /// Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// Identifier of the accent color for chat title and background of chat photo
  final int accentColorId;

  /// Chat description
  final String description;

  /// Number of members in the chat
  final int memberCount;

  /// User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;

  /// Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription
  final ChatInviteLinkSubscriptionInfo? subscriptionInfo;

  /// True, if the link only creates join request
  final bool createsJoinRequest;

  /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  /// True, if the chat is verified
  final bool isVerified;

  /// True, if many users reported this chat as a scam
  final bool isScam;

  /// True, if many users reported this chat as a fake account
  final bool isFake;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) =>
      ChatInviteLinkInfo(
        chatId: json['chat_id'],
        accessibleFor: json['accessible_for'],
        type: InviteLinkChatType.fromJson(json['type']),
        title: json['title'],
        photo: json['photo'] == null
            ? null
            : ChatPhotoInfo.fromJson(json['photo']),
        accentColorId: json['accent_color_id'],
        description: json['description'],
        memberCount: json['member_count'],
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()),
        subscriptionInfo: json['subscription_info'] == null
            ? null
            : ChatInviteLinkSubscriptionInfo.fromJson(
                json['subscription_info']),
        createsJoinRequest: json['creates_join_request'],
        isPublic: json['is_public'],
        isVerified: json['is_verified'],
        isScam: json['is_scam'],
        isFake: json['is_fake'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "accessible_for": accessibleFor,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "accent_color_id": accentColorId,
      "description": description,
      "member_count": memberCount,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
      "subscription_info": subscriptionInfo?.toJson(),
      "creates_join_request": createsJoinRequest,
      "is_public": isPublic,
      "is_verified": isVerified,
      "is_scam": isScam,
      "is_fake": isFake,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  /// * [accessible_for]: If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  /// * [type]: Type of the chat
  /// * [title]: Title of the chat
  /// * [photo]: Chat photo; may be null
  /// * [accent_color_id]: Identifier of the accent color for chat title and background of chat photo
  /// * [description]: Chat description
  /// * [member_count]: Number of members in the chat
  /// * [member_user_ids]: User identifiers of some chat members that may be known to the current user
  /// * [subscription_info]: Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription
  /// * [creates_join_request]: True, if the link only creates join request
  /// * [is_public]: True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  /// * [is_verified]: True, if the chat is verified
  /// * [is_scam]: True, if many users reported this chat as a scam
  /// * [is_fake]: True, if many users reported this chat as a fake account
  ChatInviteLinkInfo copyWith({
    int? chatId,
    int? accessibleFor,
    InviteLinkChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    int? accentColorId,
    String? description,
    int? memberCount,
    List<int>? memberUserIds,
    ChatInviteLinkSubscriptionInfo? subscriptionInfo,
    bool? createsJoinRequest,
    bool? isPublic,
    bool? isVerified,
    bool? isScam,
    bool? isFake,
    dynamic extra,
    int? clientId,
  }) =>
      ChatInviteLinkInfo(
        chatId: chatId ?? this.chatId,
        accessibleFor: accessibleFor ?? this.accessibleFor,
        type: type ?? this.type,
        title: title ?? this.title,
        photo: photo ?? this.photo,
        accentColorId: accentColorId ?? this.accentColorId,
        description: description ?? this.description,
        memberCount: memberCount ?? this.memberCount,
        memberUserIds: memberUserIds ?? this.memberUserIds,
        subscriptionInfo: subscriptionInfo ?? this.subscriptionInfo,
        createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
        isPublic: isPublic ?? this.isPublic,
        isVerified: isVerified ?? this.isVerified,
        isScam: isScam ?? this.isScam,
        isFake: isFake ?? this.isFake,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatInviteLinkInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
