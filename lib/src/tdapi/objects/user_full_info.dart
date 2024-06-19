part of '../tdapi.dart';

/// **UserFullInfo** *(userFullInfo)* - basic class
///
/// Contains full information about a user.
///
/// * [personalPhoto]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
/// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo *(optional)*.
/// * [publicPhoto]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
/// * [blockList]: Block list to which the user is added; may be null if none *(optional)*.
/// * [canBeCalled]: True, if the user can be called.
/// * [supportsVideoCalls]: True, if a video call can be created with the user.
/// * [hasPrivateCalls]: True, if the user can't be called due to their privacy settings.
/// * [hasPrivateForwards]: True, if the user can't be linked in forwarded messages due to their privacy settings.
/// * [hasRestrictedVoiceAndVideoNoteMessages]: True, if voice and video notes can't be sent or forwarded to the user.
/// * [hasPostedToProfileStories]: True, if the user has posted to profile stories.
/// * [hasSponsoredMessagesEnabled]: True, if the user always enabled sponsored messages; known only for the current user.
/// * [needPhoneNumberPrivacyException]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used.
/// * [setChatBackground]: True, if the user set chat background for both chat users and it wasn't reverted yet.
/// * [bio]: A short user bio; may be null for bots *(optional)*.
/// * [birthdate]: Birthdate of the user; may be null if unknown *(optional)*.
/// * [personalChatId]: Identifier of the personal chat of the user; 0 if none.
/// * [premiumGiftOptions]: The list of available options for gifting Telegram Premium to the user.
/// * [groupInCommonCount]: Number of group chats where both the other user and the current user are a member; 0 for the current user.
/// * [businessInfo]: Information about business settings for Telegram Business accounts; may be null if none *(optional)*.
/// * [botInfo]: For bots, information about the bot; may be null if the user isn't a bot *(optional)*.
final class UserFullInfo extends TdObject {
  /// **UserFullInfo** *(userFullInfo)* - basic class
  ///
  /// Contains full information about a user.
  ///
  /// * [personalPhoto]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
  /// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo *(optional)*.
  /// * [publicPhoto]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
  /// * [blockList]: Block list to which the user is added; may be null if none *(optional)*.
  /// * [canBeCalled]: True, if the user can be called.
  /// * [supportsVideoCalls]: True, if a video call can be created with the user.
  /// * [hasPrivateCalls]: True, if the user can't be called due to their privacy settings.
  /// * [hasPrivateForwards]: True, if the user can't be linked in forwarded messages due to their privacy settings.
  /// * [hasRestrictedVoiceAndVideoNoteMessages]: True, if voice and video notes can't be sent or forwarded to the user.
  /// * [hasPostedToProfileStories]: True, if the user has posted to profile stories.
  /// * [hasSponsoredMessagesEnabled]: True, if the user always enabled sponsored messages; known only for the current user.
  /// * [needPhoneNumberPrivacyException]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used.
  /// * [setChatBackground]: True, if the user set chat background for both chat users and it wasn't reverted yet.
  /// * [bio]: A short user bio; may be null for bots *(optional)*.
  /// * [birthdate]: Birthdate of the user; may be null if unknown *(optional)*.
  /// * [personalChatId]: Identifier of the personal chat of the user; 0 if none.
  /// * [premiumGiftOptions]: The list of available options for gifting Telegram Premium to the user.
  /// * [groupInCommonCount]: Number of group chats where both the other user and the current user are a member; 0 for the current user.
  /// * [businessInfo]: Information about business settings for Telegram Business accounts; may be null if none *(optional)*.
  /// * [botInfo]: For bots, information about the bot; may be null if the user isn't a bot *(optional)*.
  const UserFullInfo({
    this.personalPhoto,
    this.photo,
    this.publicPhoto,
    this.blockList,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.hasRestrictedVoiceAndVideoNoteMessages,
    required this.hasPostedToProfileStories,
    required this.hasSponsoredMessagesEnabled,
    required this.needPhoneNumberPrivacyException,
    required this.setChatBackground,
    this.bio,
    this.birthdate,
    required this.personalChatId,
    required this.premiumGiftOptions,
    required this.groupInCommonCount,
    this.businessInfo,
    this.botInfo,
    this.extra,
    this.clientId,
  });

  /// User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  final ChatPhoto? personalPhoto;

  /// User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo
  final ChatPhoto? photo;

  /// User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  final ChatPhoto? publicPhoto;

  /// Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// True, if the user can be called
  final bool canBeCalled;

  /// True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// True, if the user can't be called due to their privacy settings
  final bool hasPrivateCalls;

  /// True, if the user can't be linked in forwarded messages due to their privacy settings
  final bool hasPrivateForwards;

  /// True, if voice and video notes can't be sent or forwarded to the user
  final bool hasRestrictedVoiceAndVideoNoteMessages;

  /// True, if the user has posted to profile stories
  final bool hasPostedToProfileStories;

  /// True, if the user always enabled sponsored messages; known only for the current user
  final bool hasSponsoredMessagesEnabled;

  /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  final bool needPhoneNumberPrivacyException;

  /// True, if the user set chat background for both chat users and it wasn't reverted yet
  final bool setChatBackground;

  /// A short user bio; may be null for bots
  final FormattedText? bio;

  /// Birthdate of the user; may be null if unknown
  final Birthdate? birthdate;

  /// Identifier of the personal chat of the user; 0 if none
  final int personalChatId;

  /// The list of available options for gifting Telegram Premium to the user
  final List<PremiumPaymentOption> premiumGiftOptions;

  /// Number of group chats where both the other user and the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// Information about business settings for Telegram Business accounts; may be null if none
  final BusinessInfo? businessInfo;

  /// For bots, information about the bot; may be null if the user isn't a bot
  final BotInfo? botInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
        personalPhoto: json['personal_photo'] == null
            ? null
            : ChatPhoto.fromJson(json['personal_photo']),
        photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
        publicPhoto: json['public_photo'] == null
            ? null
            : ChatPhoto.fromJson(json['public_photo']),
        blockList: json['block_list'] == null
            ? null
            : BlockList.fromJson(json['block_list']),
        canBeCalled: json['can_be_called'],
        supportsVideoCalls: json['supports_video_calls'],
        hasPrivateCalls: json['has_private_calls'],
        hasPrivateForwards: json['has_private_forwards'],
        hasRestrictedVoiceAndVideoNoteMessages:
            json['has_restricted_voice_and_video_note_messages'],
        hasPostedToProfileStories: json['has_posted_to_profile_stories'],
        hasSponsoredMessagesEnabled: json['has_sponsored_messages_enabled'],
        needPhoneNumberPrivacyException:
            json['need_phone_number_privacy_exception'],
        setChatBackground: json['set_chat_background'],
        bio: json['bio'] == null ? null : FormattedText.fromJson(json['bio']),
        birthdate: json['birthdate'] == null
            ? null
            : Birthdate.fromJson(json['birthdate']),
        personalChatId: json['personal_chat_id'] ?? 0,
        premiumGiftOptions: List<PremiumPaymentOption>.from(
            (json['premium_gift_options'] ?? [])
                .map((item) => PremiumPaymentOption.fromJson(item))
                .toList()),
        groupInCommonCount: json['group_in_common_count'],
        businessInfo: json['business_info'] == null
            ? null
            : BusinessInfo.fromJson(json['business_info']),
        botInfo: json['bot_info'] == null
            ? null
            : BotInfo.fromJson(json['bot_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "personal_photo": personalPhoto?.toJson(),
      "photo": photo?.toJson(),
      "public_photo": publicPhoto?.toJson(),
      "block_list": blockList?.toJson(),
      "can_be_called": canBeCalled,
      "supports_video_calls": supportsVideoCalls,
      "has_private_calls": hasPrivateCalls,
      "has_private_forwards": hasPrivateForwards,
      "has_restricted_voice_and_video_note_messages":
          hasRestrictedVoiceAndVideoNoteMessages,
      "has_posted_to_profile_stories": hasPostedToProfileStories,
      "has_sponsored_messages_enabled": hasSponsoredMessagesEnabled,
      "need_phone_number_privacy_exception": needPhoneNumberPrivacyException,
      "set_chat_background": setChatBackground,
      "bio": bio?.toJson(),
      "birthdate": birthdate?.toJson(),
      "personal_chat_id": personalChatId,
      "premium_gift_options":
          premiumGiftOptions.map((i) => i.toJson()).toList(),
      "group_in_common_count": groupInCommonCount,
      "business_info": businessInfo?.toJson(),
      "bot_info": botInfo?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [personal_photo]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  /// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo
  /// * [public_photo]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  /// * [block_list]: Block list to which the user is added; may be null if none
  /// * [can_be_called]: True, if the user can be called
  /// * [supports_video_calls]: True, if a video call can be created with the user
  /// * [has_private_calls]: True, if the user can't be called due to their privacy settings
  /// * [has_private_forwards]: True, if the user can't be linked in forwarded messages due to their privacy settings
  /// * [has_restricted_voice_and_video_note_messages]: True, if voice and video notes can't be sent or forwarded to the user
  /// * [has_posted_to_profile_stories]: True, if the user has posted to profile stories
  /// * [has_sponsored_messages_enabled]: True, if the user always enabled sponsored messages; known only for the current user
  /// * [need_phone_number_privacy_exception]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  /// * [set_chat_background]: True, if the user set chat background for both chat users and it wasn't reverted yet
  /// * [bio]: A short user bio; may be null for bots
  /// * [birthdate]: Birthdate of the user; may be null if unknown
  /// * [personal_chat_id]: Identifier of the personal chat of the user; 0 if none
  /// * [premium_gift_options]: The list of available options for gifting Telegram Premium to the user
  /// * [group_in_common_count]: Number of group chats where both the other user and the current user are a member; 0 for the current user
  /// * [business_info]: Information about business settings for Telegram Business accounts; may be null if none
  /// * [bot_info]: For bots, information about the bot; may be null if the user isn't a bot
  UserFullInfo copyWith({
    ChatPhoto? personalPhoto,
    ChatPhoto? photo,
    ChatPhoto? publicPhoto,
    BlockList? blockList,
    bool? canBeCalled,
    bool? supportsVideoCalls,
    bool? hasPrivateCalls,
    bool? hasPrivateForwards,
    bool? hasRestrictedVoiceAndVideoNoteMessages,
    bool? hasPostedToProfileStories,
    bool? hasSponsoredMessagesEnabled,
    bool? needPhoneNumberPrivacyException,
    bool? setChatBackground,
    FormattedText? bio,
    Birthdate? birthdate,
    int? personalChatId,
    List<PremiumPaymentOption>? premiumGiftOptions,
    int? groupInCommonCount,
    BusinessInfo? businessInfo,
    BotInfo? botInfo,
    dynamic extra,
    int? clientId,
  }) =>
      UserFullInfo(
        personalPhoto: personalPhoto ?? this.personalPhoto,
        photo: photo ?? this.photo,
        publicPhoto: publicPhoto ?? this.publicPhoto,
        blockList: blockList ?? this.blockList,
        canBeCalled: canBeCalled ?? this.canBeCalled,
        supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
        hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
        hasPrivateForwards: hasPrivateForwards ?? this.hasPrivateForwards,
        hasRestrictedVoiceAndVideoNoteMessages:
            hasRestrictedVoiceAndVideoNoteMessages ??
                this.hasRestrictedVoiceAndVideoNoteMessages,
        hasPostedToProfileStories:
            hasPostedToProfileStories ?? this.hasPostedToProfileStories,
        hasSponsoredMessagesEnabled:
            hasSponsoredMessagesEnabled ?? this.hasSponsoredMessagesEnabled,
        needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ??
            this.needPhoneNumberPrivacyException,
        setChatBackground: setChatBackground ?? this.setChatBackground,
        bio: bio ?? this.bio,
        birthdate: birthdate ?? this.birthdate,
        personalChatId: personalChatId ?? this.personalChatId,
        premiumGiftOptions: premiumGiftOptions ?? this.premiumGiftOptions,
        groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
        businessInfo: businessInfo ?? this.businessInfo,
        botInfo: botInfo ?? this.botInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'userFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
