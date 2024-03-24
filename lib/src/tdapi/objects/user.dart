part of '../tdapi.dart';

/// **User** *(user)* - basic class
///
/// Represents a user.
///
/// * [id]: User identifier.
/// * [firstName]: First name of the user.
/// * [lastName]: Last name of the user.
/// * [usernames]: Usernames of the user; may be null *(optional)*.
/// * [phoneNumber]: Phone number of the user.
/// * [status]: Current online status of the user.
/// * [profilePhoto]: Profile photo of the user; may be null *(optional)*.
/// * [accentColorId]: Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only.
/// * [backgroundCustomEmojiId]: Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. For Telegram Premium users only.
/// * [profileAccentColorId]: Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only.
/// * [profileBackgroundCustomEmojiId]: Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only.
/// * [emojiStatus]: Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only *(optional)*.
/// * [isContact]: The user is a contact of the current user.
/// * [isMutualContact]: The user is a contact of the current user and the current user is a contact of the user.
/// * [isCloseFriend]: The user is a close friend of the current user; implies that the user is a contact.
/// * [isVerified]: True, if the user is verified.
/// * [isPremium]: True, if the user is a Telegram Premium user.
/// * [isSupport]: True, if the user is Telegram support account.
/// * [restrictionReason]: If non-empty, it contains a human-readable description of the reason why access to this user must be restricted.
/// * [isScam]: True, if many users reported this user as a scam.
/// * [isFake]: True, if many users reported this user as a fake account.
/// * [hasActiveStories]: True, if the user has non-expired stories available to the current user.
/// * [hasUnreadActiveStories]: True, if the user has unread non-expired stories available to the current user.
/// * [restrictsNewChats]: True, if the user may restrict new chats with non-contacts. Use canSendMessageToUser to check whether the current user can message the user or try to create a chat with them.
/// * [haveAccess]: If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method.
/// * [type]: Type of the user.
/// * [languageCode]: IETF language tag of the user's language; only available to bots.
/// * [addedToAttachmentMenu]: True, if the user added the current bot to attachment menu; only available to bots.
final class User extends TdObject {
  /// **User** *(user)* - basic class
  ///
  /// Represents a user.
  ///
  /// * [id]: User identifier.
  /// * [firstName]: First name of the user.
  /// * [lastName]: Last name of the user.
  /// * [usernames]: Usernames of the user; may be null *(optional)*.
  /// * [phoneNumber]: Phone number of the user.
  /// * [status]: Current online status of the user.
  /// * [profilePhoto]: Profile photo of the user; may be null *(optional)*.
  /// * [accentColorId]: Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only.
  /// * [backgroundCustomEmojiId]: Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. For Telegram Premium users only.
  /// * [profileAccentColorId]: Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only.
  /// * [profileBackgroundCustomEmojiId]: Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only.
  /// * [emojiStatus]: Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only *(optional)*.
  /// * [isContact]: The user is a contact of the current user.
  /// * [isMutualContact]: The user is a contact of the current user and the current user is a contact of the user.
  /// * [isCloseFriend]: The user is a close friend of the current user; implies that the user is a contact.
  /// * [isVerified]: True, if the user is verified.
  /// * [isPremium]: True, if the user is a Telegram Premium user.
  /// * [isSupport]: True, if the user is Telegram support account.
  /// * [restrictionReason]: If non-empty, it contains a human-readable description of the reason why access to this user must be restricted.
  /// * [isScam]: True, if many users reported this user as a scam.
  /// * [isFake]: True, if many users reported this user as a fake account.
  /// * [hasActiveStories]: True, if the user has non-expired stories available to the current user.
  /// * [hasUnreadActiveStories]: True, if the user has unread non-expired stories available to the current user.
  /// * [restrictsNewChats]: True, if the user may restrict new chats with non-contacts. Use canSendMessageToUser to check whether the current user can message the user or try to create a chat with them.
  /// * [haveAccess]: If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method.
  /// * [type]: Type of the user.
  /// * [languageCode]: IETF language tag of the user's language; only available to bots.
  /// * [addedToAttachmentMenu]: True, if the user added the current bot to attachment menu; only available to bots.
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.usernames,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    required this.isVerified,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    required this.restrictsNewChats,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
    this.extra,
    this.clientId,
  });

  /// User identifier
  final int id;

  /// First name of the user
  final String firstName;

  /// Last name of the user
  final String lastName;

  /// Usernames of the user; may be null
  final Usernames? usernames;

  /// Phone number of the user
  final String phoneNumber;

  /// Current online status of the user
  final UserStatus status;

  /// Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only
  final int accentColorId;

  /// Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. For Telegram Premium users only
  final int backgroundCustomEmojiId;

  /// Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only
  final int profileAccentColorId;

  /// Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only
  final int profileBackgroundCustomEmojiId;

  /// Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
  final EmojiStatus? emojiStatus;

  /// The user is a contact of the current user
  final bool isContact;

  /// The user is a contact of the current user and the current user is a contact of the user
  final bool isMutualContact;

  /// The user is a close friend of the current user; implies that the user is a contact
  final bool isCloseFriend;

  /// True, if the user is verified
  final bool isVerified;

  /// True, if the user is a Telegram Premium user
  final bool isPremium;

  /// True, if the user is Telegram support account
  final bool isSupport;

  /// If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  final String restrictionReason;

  /// True, if many users reported this user as a scam
  final bool isScam;

  /// True, if many users reported this user as a fake account
  final bool isFake;

  /// True, if the user has non-expired stories available to the current user
  final bool hasActiveStories;

  /// True, if the user has unread non-expired stories available to the current user
  final bool hasUnreadActiveStories;

  /// True, if the user may restrict new chats with non-contacts. Use canSendMessageToUser to check whether the current user can message the user or try to create a chat with them
  final bool restrictsNewChats;

  /// If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method
  final bool haveAccess;

  /// Type of the user
  final UserType type;

  /// IETF language tag of the user's language; only available to bots
  final String languageCode;

  /// True, if the user added the current bot to attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        usernames: json['usernames'] == null
            ? null
            : Usernames.fromJson(json['usernames']),
        phoneNumber: json['phone_number'],
        status: UserStatus.fromJson(json['status']),
        profilePhoto: json['profile_photo'] == null
            ? null
            : ProfilePhoto.fromJson(json['profile_photo']),
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
        emojiStatus: json['emoji_status'] == null
            ? null
            : EmojiStatus.fromJson(json['emoji_status']),
        isContact: json['is_contact'],
        isMutualContact: json['is_mutual_contact'],
        isCloseFriend: json['is_close_friend'],
        isVerified: json['is_verified'],
        isPremium: json['is_premium'],
        isSupport: json['is_support'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        isFake: json['is_fake'],
        hasActiveStories: json['has_active_stories'],
        hasUnreadActiveStories: json['has_unread_active_stories'],
        restrictsNewChats: json['restricts_new_chats'],
        haveAccess: json['have_access'],
        type: UserType.fromJson(json['type']),
        languageCode: json['language_code'],
        addedToAttachmentMenu: json['added_to_attachment_menu'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "first_name": firstName,
      "last_name": lastName,
      "usernames": usernames?.toJson(),
      "phone_number": phoneNumber,
      "status": status.toJson(),
      "profile_photo": profilePhoto?.toJson(),
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
      "emoji_status": emojiStatus?.toJson(),
      "is_contact": isContact,
      "is_mutual_contact": isMutualContact,
      "is_close_friend": isCloseFriend,
      "is_verified": isVerified,
      "is_premium": isPremium,
      "is_support": isSupport,
      "restriction_reason": restrictionReason,
      "is_scam": isScam,
      "is_fake": isFake,
      "has_active_stories": hasActiveStories,
      "has_unread_active_stories": hasUnreadActiveStories,
      "restricts_new_chats": restrictsNewChats,
      "have_access": haveAccess,
      "type": type.toJson(),
      "language_code": languageCode,
      "added_to_attachment_menu": addedToAttachmentMenu,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: User identifier
  /// * [first_name]: First name of the user
  /// * [last_name]: Last name of the user
  /// * [usernames]: Usernames of the user; may be null
  /// * [phone_number]: Phone number of the user
  /// * [status]: Current online status of the user
  /// * [profile_photo]: Profile photo of the user; may be null
  /// * [accent_color_id]: Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only
  /// * [background_custom_emoji_id]: Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. For Telegram Premium users only
  /// * [profile_accent_color_id]: Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only
  /// * [profile_background_custom_emoji_id]: Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only
  /// * [emoji_status]: Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
  /// * [is_contact]: The user is a contact of the current user
  /// * [is_mutual_contact]: The user is a contact of the current user and the current user is a contact of the user
  /// * [is_close_friend]: The user is a close friend of the current user; implies that the user is a contact
  /// * [is_verified]: True, if the user is verified
  /// * [is_premium]: True, if the user is a Telegram Premium user
  /// * [is_support]: True, if the user is Telegram support account
  /// * [restriction_reason]: If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  /// * [is_scam]: True, if many users reported this user as a scam
  /// * [is_fake]: True, if many users reported this user as a fake account
  /// * [has_active_stories]: True, if the user has non-expired stories available to the current user
  /// * [has_unread_active_stories]: True, if the user has unread non-expired stories available to the current user
  /// * [restricts_new_chats]: True, if the user may restrict new chats with non-contacts. Use canSendMessageToUser to check whether the current user can message the user or try to create a chat with them
  /// * [have_access]: If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method
  /// * [type]: Type of the user
  /// * [language_code]: IETF language tag of the user's language; only available to bots
  /// * [added_to_attachment_menu]: True, if the user added the current bot to attachment menu; only available to bots
  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    Usernames? usernames,
    String? phoneNumber,
    UserStatus? status,
    ProfilePhoto? profilePhoto,
    int? accentColorId,
    int? backgroundCustomEmojiId,
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
    EmojiStatus? emojiStatus,
    bool? isContact,
    bool? isMutualContact,
    bool? isCloseFriend,
    bool? isVerified,
    bool? isPremium,
    bool? isSupport,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    bool? hasActiveStories,
    bool? hasUnreadActiveStories,
    bool? restrictsNewChats,
    bool? haveAccess,
    UserType? type,
    String? languageCode,
    bool? addedToAttachmentMenu,
    dynamic extra,
    int? clientId,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        usernames: usernames ?? this.usernames,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        status: status ?? this.status,
        profilePhoto: profilePhoto ?? this.profilePhoto,
        accentColorId: accentColorId ?? this.accentColorId,
        backgroundCustomEmojiId:
            backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
        profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
        profileBackgroundCustomEmojiId: profileBackgroundCustomEmojiId ??
            this.profileBackgroundCustomEmojiId,
        emojiStatus: emojiStatus ?? this.emojiStatus,
        isContact: isContact ?? this.isContact,
        isMutualContact: isMutualContact ?? this.isMutualContact,
        isCloseFriend: isCloseFriend ?? this.isCloseFriend,
        isVerified: isVerified ?? this.isVerified,
        isPremium: isPremium ?? this.isPremium,
        isSupport: isSupport ?? this.isSupport,
        restrictionReason: restrictionReason ?? this.restrictionReason,
        isScam: isScam ?? this.isScam,
        isFake: isFake ?? this.isFake,
        hasActiveStories: hasActiveStories ?? this.hasActiveStories,
        hasUnreadActiveStories:
            hasUnreadActiveStories ?? this.hasUnreadActiveStories,
        restrictsNewChats: restrictsNewChats ?? this.restrictsNewChats,
        haveAccess: haveAccess ?? this.haveAccess,
        type: type ?? this.type,
        languageCode: languageCode ?? this.languageCode,
        addedToAttachmentMenu:
            addedToAttachmentMenu ?? this.addedToAttachmentMenu,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'user';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
