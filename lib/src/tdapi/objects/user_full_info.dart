part of '../tdapi.dart';

/// **UserFullInfo** *(userFullInfo)* - basic class
///
/// Contains full information about a user.
///
/// * [personalPhoto]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
/// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo *(optional)*.
/// * [publicPhoto]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
/// * [isBlocked]: True, if the user is blocked by the current user.
/// * [canBeCalled]: True, if the user can be called.
/// * [supportsVideoCalls]: True, if a video call can be created with the user.
/// * [hasPrivateCalls]: True, if the user can't be called due to their privacy settings.
/// * [hasPrivateForwards]: True, if the user can't be linked in forwarded messages due to their privacy settings.
/// * [hasRestrictedVoiceAndVideoNoteMessages]: True, if voice and video notes can't be sent or forwarded to the user.
/// * [needPhoneNumberPrivacyException]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used.
/// * [bio]: A short user bio; may be null for bots *(optional)*.
/// * [premiumGiftOptions]: The list of available options for gifting Telegram Premium to the user.
/// * [groupInCommonCount]: Number of group chats where both the other user and the current user are a member; 0 for the current user.
/// * [botInfo]: For bots, information about the bot; may be null *(optional)*.
final class UserFullInfo extends TdObject {
  
  /// **UserFullInfo** *(userFullInfo)* - basic class
  ///
  /// Contains full information about a user.
  ///
  /// * [personalPhoto]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
  /// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo *(optional)*.
  /// * [publicPhoto]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos *(optional)*.
  /// * [isBlocked]: True, if the user is blocked by the current user.
  /// * [canBeCalled]: True, if the user can be called.
  /// * [supportsVideoCalls]: True, if a video call can be created with the user.
  /// * [hasPrivateCalls]: True, if the user can't be called due to their privacy settings.
  /// * [hasPrivateForwards]: True, if the user can't be linked in forwarded messages due to their privacy settings.
  /// * [hasRestrictedVoiceAndVideoNoteMessages]: True, if voice and video notes can't be sent or forwarded to the user.
  /// * [needPhoneNumberPrivacyException]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used.
  /// * [bio]: A short user bio; may be null for bots *(optional)*.
  /// * [premiumGiftOptions]: The list of available options for gifting Telegram Premium to the user.
  /// * [groupInCommonCount]: Number of group chats where both the other user and the current user are a member; 0 for the current user.
  /// * [botInfo]: For bots, information about the bot; may be null *(optional)*.
  const UserFullInfo({
    this.personalPhoto,
    this.photo,
    this.publicPhoto,
    required this.isBlocked,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.hasRestrictedVoiceAndVideoNoteMessages,
    required this.needPhoneNumberPrivacyException,
    this.bio,
    required this.premiumGiftOptions,
    required this.groupInCommonCount,
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

  /// True, if the user is blocked by the current user
  final bool isBlocked;

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

  /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  final bool needPhoneNumberPrivacyException;

  /// A short user bio; may be null for bots
  final FormattedText? bio;

  /// The list of available options for gifting Telegram Premium to the user
  final List<PremiumPaymentOption> premiumGiftOptions;

  /// Number of group chats where both the other user and the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// For bots, information about the bot; may be null
  final BotInfo? botInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
    personalPhoto: json['personal_photo'] == null ? null : ChatPhoto.fromJson(json['personal_photo']),
    photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
    publicPhoto: json['public_photo'] == null ? null : ChatPhoto.fromJson(json['public_photo']),
    isBlocked: json['is_blocked'],
    canBeCalled: json['can_be_called'],
    supportsVideoCalls: json['supports_video_calls'],
    hasPrivateCalls: json['has_private_calls'],
    hasPrivateForwards: json['has_private_forwards'],
    hasRestrictedVoiceAndVideoNoteMessages: json['has_restricted_voice_and_video_note_messages'],
    needPhoneNumberPrivacyException: json['need_phone_number_privacy_exception'],
    bio: json['bio'] == null ? null : FormattedText.fromJson(json['bio']),
    premiumGiftOptions: List<PremiumPaymentOption>.from((json['premium_gift_options'] ?? []).map((item) => PremiumPaymentOption.fromJson(item)).toList()),
    groupInCommonCount: json['group_in_common_count'],
    botInfo: json['bot_info'] == null ? null : BotInfo.fromJson(json['bot_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "personal_photo": personalPhoto?.toJson(),
      "photo": photo?.toJson(),
      "public_photo": publicPhoto?.toJson(),
      "is_blocked": isBlocked,
      "can_be_called": canBeCalled,
      "supports_video_calls": supportsVideoCalls,
      "has_private_calls": hasPrivateCalls,
      "has_private_forwards": hasPrivateForwards,
      "has_restricted_voice_and_video_note_messages": hasRestrictedVoiceAndVideoNoteMessages,
      "need_phone_number_privacy_exception": needPhoneNumberPrivacyException,
      "bio": bio?.toJson(),
      "premium_gift_options": premiumGiftOptions.map((i) => i.toJson()).toList(),
      "group_in_common_count": groupInCommonCount,
      "bot_info": botInfo?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [personal_photo]: User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  /// * [photo]: User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo
  /// * [public_photo]: User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  /// * [is_blocked]: True, if the user is blocked by the current user
  /// * [can_be_called]: True, if the user can be called
  /// * [supports_video_calls]: True, if a video call can be created with the user
  /// * [has_private_calls]: True, if the user can't be called due to their privacy settings
  /// * [has_private_forwards]: True, if the user can't be linked in forwarded messages due to their privacy settings
  /// * [has_restricted_voice_and_video_note_messages]: True, if voice and video notes can't be sent or forwarded to the user
  /// * [need_phone_number_privacy_exception]: True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  /// * [bio]: A short user bio; may be null for bots
  /// * [premium_gift_options]: The list of available options for gifting Telegram Premium to the user
  /// * [group_in_common_count]: Number of group chats where both the other user and the current user are a member; 0 for the current user
  /// * [bot_info]: For bots, information about the bot; may be null
  UserFullInfo copyWith({
    ChatPhoto? personalPhoto,
    ChatPhoto? photo,
    ChatPhoto? publicPhoto,
    bool? isBlocked,
    bool? canBeCalled,
    bool? supportsVideoCalls,
    bool? hasPrivateCalls,
    bool? hasPrivateForwards,
    bool? hasRestrictedVoiceAndVideoNoteMessages,
    bool? needPhoneNumberPrivacyException,
    FormattedText? bio,
    List<PremiumPaymentOption>? premiumGiftOptions,
    int? groupInCommonCount,
    BotInfo? botInfo,
    dynamic extra,
    int? clientId,
  }) => UserFullInfo(
    personalPhoto: personalPhoto ?? this.personalPhoto,
    photo: photo ?? this.photo,
    publicPhoto: publicPhoto ?? this.publicPhoto,
    isBlocked: isBlocked ?? this.isBlocked,
    canBeCalled: canBeCalled ?? this.canBeCalled,
    supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
    hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
    hasPrivateForwards: hasPrivateForwards ?? this.hasPrivateForwards,
    hasRestrictedVoiceAndVideoNoteMessages: hasRestrictedVoiceAndVideoNoteMessages ?? this.hasRestrictedVoiceAndVideoNoteMessages,
    needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ?? this.needPhoneNumberPrivacyException,
    bio: bio ?? this.bio,
    premiumGiftOptions: premiumGiftOptions ?? this.premiumGiftOptions,
    groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
    botInfo: botInfo ?? this.botInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'userFullInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
