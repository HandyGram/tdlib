part of '../tdapi.dart';

/// **PremiumFeature** *(premiumFeature)* - parent
///
/// Describes a feature available to Premium users.
sealed class PremiumFeature extends TdObject {
  
  /// **PremiumFeature** *(premiumFeature)* - parent
  ///
  /// Describes a feature available to Premium users.
  const PremiumFeature();
  
  /// a PremiumFeature return type can be :
  /// * [PremiumFeatureIncreasedLimits]
  /// * [PremiumFeatureIncreasedUploadFileSize]
  /// * [PremiumFeatureImprovedDownloadSpeed]
  /// * [PremiumFeatureVoiceRecognition]
  /// * [PremiumFeatureDisabledAds]
  /// * [PremiumFeatureUniqueReactions]
  /// * [PremiumFeatureUniqueStickers]
  /// * [PremiumFeatureCustomEmoji]
  /// * [PremiumFeatureAdvancedChatManagement]
  /// * [PremiumFeatureProfileBadge]
  /// * [PremiumFeatureEmojiStatus]
  /// * [PremiumFeatureAnimatedProfilePhoto]
  /// * [PremiumFeatureForumTopicIcon]
  /// * [PremiumFeatureAppIcons]
  /// * [PremiumFeatureRealTimeChatTranslation]
  /// * [PremiumFeatureUpgradedStories]
  /// * [PremiumFeatureChatBoost]
  /// * [PremiumFeatureAccentColor]
  /// * [PremiumFeatureBackgroundForBoth]
  /// * [PremiumFeatureSavedMessagesTags]
  /// * [PremiumFeatureMessagePrivacy]
  /// * [PremiumFeatureLastSeenTimes]
  factory PremiumFeature.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumFeatureIncreasedLimits.defaultObjectId:
        return PremiumFeatureIncreasedLimits.fromJson(json);
      case PremiumFeatureIncreasedUploadFileSize.defaultObjectId:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);
      case PremiumFeatureImprovedDownloadSpeed.defaultObjectId:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);
      case PremiumFeatureVoiceRecognition.defaultObjectId:
        return PremiumFeatureVoiceRecognition.fromJson(json);
      case PremiumFeatureDisabledAds.defaultObjectId:
        return PremiumFeatureDisabledAds.fromJson(json);
      case PremiumFeatureUniqueReactions.defaultObjectId:
        return PremiumFeatureUniqueReactions.fromJson(json);
      case PremiumFeatureUniqueStickers.defaultObjectId:
        return PremiumFeatureUniqueStickers.fromJson(json);
      case PremiumFeatureCustomEmoji.defaultObjectId:
        return PremiumFeatureCustomEmoji.fromJson(json);
      case PremiumFeatureAdvancedChatManagement.defaultObjectId:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);
      case PremiumFeatureProfileBadge.defaultObjectId:
        return PremiumFeatureProfileBadge.fromJson(json);
      case PremiumFeatureEmojiStatus.defaultObjectId:
        return PremiumFeatureEmojiStatus.fromJson(json);
      case PremiumFeatureAnimatedProfilePhoto.defaultObjectId:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);
      case PremiumFeatureForumTopicIcon.defaultObjectId:
        return PremiumFeatureForumTopicIcon.fromJson(json);
      case PremiumFeatureAppIcons.defaultObjectId:
        return PremiumFeatureAppIcons.fromJson(json);
      case PremiumFeatureRealTimeChatTranslation.defaultObjectId:
        return PremiumFeatureRealTimeChatTranslation.fromJson(json);
      case PremiumFeatureUpgradedStories.defaultObjectId:
        return PremiumFeatureUpgradedStories.fromJson(json);
      case PremiumFeatureChatBoost.defaultObjectId:
        return PremiumFeatureChatBoost.fromJson(json);
      case PremiumFeatureAccentColor.defaultObjectId:
        return PremiumFeatureAccentColor.fromJson(json);
      case PremiumFeatureBackgroundForBoth.defaultObjectId:
        return PremiumFeatureBackgroundForBoth.fromJson(json);
      case PremiumFeatureSavedMessagesTags.defaultObjectId:
        return PremiumFeatureSavedMessagesTags.fromJson(json);
      case PremiumFeatureMessagePrivacy.defaultObjectId:
        return PremiumFeatureMessagePrivacy.fromJson(json);
      case PremiumFeatureLastSeenTimes.defaultObjectId:
        return PremiumFeatureLastSeenTimes.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumFeature)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PremiumFeature copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeature';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
///
/// Increased limits.
final class PremiumFeatureIncreasedLimits extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
  ///
  /// Increased limits.
  const PremiumFeatureIncreasedLimits();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedLimits.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedLimits();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureIncreasedLimits copyWith() => const PremiumFeatureIncreasedLimits();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureIncreasedLimits';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
///
/// Increased maximum upload file size.
final class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
  ///
  /// Increased maximum upload file size.
  const PremiumFeatureIncreasedUploadFileSize();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedUploadFileSize.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedUploadFileSize();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureIncreasedUploadFileSize copyWith() => const PremiumFeatureIncreasedUploadFileSize();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureIncreasedUploadFileSize';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
///
/// Improved download speed.
final class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  
  /// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
  ///
  /// Improved download speed.
  const PremiumFeatureImprovedDownloadSpeed();
  
  /// Parse from a json
  factory PremiumFeatureImprovedDownloadSpeed.fromJson(Map<String, dynamic> json) => const PremiumFeatureImprovedDownloadSpeed();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureImprovedDownloadSpeed copyWith() => const PremiumFeatureImprovedDownloadSpeed();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureImprovedDownloadSpeed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
///
/// The ability to convert voice notes to text.
final class PremiumFeatureVoiceRecognition extends PremiumFeature {
  
  /// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
  ///
  /// The ability to convert voice notes to text.
  const PremiumFeatureVoiceRecognition();
  
  /// Parse from a json
  factory PremiumFeatureVoiceRecognition.fromJson(Map<String, dynamic> json) => const PremiumFeatureVoiceRecognition();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureVoiceRecognition copyWith() => const PremiumFeatureVoiceRecognition();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureVoiceRecognition';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
///
/// Disabled ads.
final class PremiumFeatureDisabledAds extends PremiumFeature {
  
  /// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
  ///
  /// Disabled ads.
  const PremiumFeatureDisabledAds();
  
  /// Parse from a json
  factory PremiumFeatureDisabledAds.fromJson(Map<String, dynamic> json) => const PremiumFeatureDisabledAds();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureDisabledAds copyWith() => const PremiumFeatureDisabledAds();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureDisabledAds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
///
/// Allowed to use more reactions.
final class PremiumFeatureUniqueReactions extends PremiumFeature {
  
  /// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
  ///
  /// Allowed to use more reactions.
  const PremiumFeatureUniqueReactions();
  
  /// Parse from a json
  factory PremiumFeatureUniqueReactions.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueReactions();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureUniqueReactions copyWith() => const PremiumFeatureUniqueReactions();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureUniqueReactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
///
/// Allowed to use premium stickers with unique effects.
final class PremiumFeatureUniqueStickers extends PremiumFeature {
  
  /// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
  ///
  /// Allowed to use premium stickers with unique effects.
  const PremiumFeatureUniqueStickers();
  
  /// Parse from a json
  factory PremiumFeatureUniqueStickers.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueStickers();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureUniqueStickers copyWith() => const PremiumFeatureUniqueStickers();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureUniqueStickers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
///
/// Allowed to use custom emoji stickers in message texts and captions.
final class PremiumFeatureCustomEmoji extends PremiumFeature {
  
  /// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
  ///
  /// Allowed to use custom emoji stickers in message texts and captions.
  const PremiumFeatureCustomEmoji();
  
  /// Parse from a json
  factory PremiumFeatureCustomEmoji.fromJson(Map<String, dynamic> json) => const PremiumFeatureCustomEmoji();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureCustomEmoji copyWith() => const PremiumFeatureCustomEmoji();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureCustomEmoji';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
///
/// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
final class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  
  /// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
  ///
  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
  const PremiumFeatureAdvancedChatManagement();
  
  /// Parse from a json
  factory PremiumFeatureAdvancedChatManagement.fromJson(Map<String, dynamic> json) => const PremiumFeatureAdvancedChatManagement();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureAdvancedChatManagement copyWith() => const PremiumFeatureAdvancedChatManagement();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureAdvancedChatManagement';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
///
/// A badge in the user's profile.
final class PremiumFeatureProfileBadge extends PremiumFeature {
  
  /// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
  ///
  /// A badge in the user's profile.
  const PremiumFeatureProfileBadge();
  
  /// Parse from a json
  factory PremiumFeatureProfileBadge.fromJson(Map<String, dynamic> json) => const PremiumFeatureProfileBadge();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureProfileBadge copyWith() => const PremiumFeatureProfileBadge();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureProfileBadge';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
///
/// An emoji status shown along with the user's name.
final class PremiumFeatureEmojiStatus extends PremiumFeature {
  
  /// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
  ///
  /// An emoji status shown along with the user's name.
  const PremiumFeatureEmojiStatus();
  
  /// Parse from a json
  factory PremiumFeatureEmojiStatus.fromJson(Map<String, dynamic> json) => const PremiumFeatureEmojiStatus();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureEmojiStatus copyWith() => const PremiumFeatureEmojiStatus();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureEmojiStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
///
/// Profile photo animation on message and chat screens.
final class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  
  /// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
  ///
  /// Profile photo animation on message and chat screens.
  const PremiumFeatureAnimatedProfilePhoto();
  
  /// Parse from a json
  factory PremiumFeatureAnimatedProfilePhoto.fromJson(Map<String, dynamic> json) => const PremiumFeatureAnimatedProfilePhoto();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureAnimatedProfilePhoto copyWith() => const PremiumFeatureAnimatedProfilePhoto();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureAnimatedProfilePhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
///
/// The ability to set a custom emoji as a forum topic icon.
final class PremiumFeatureForumTopicIcon extends PremiumFeature {
  
  /// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
  ///
  /// The ability to set a custom emoji as a forum topic icon.
  const PremiumFeatureForumTopicIcon();
  
  /// Parse from a json
  factory PremiumFeatureForumTopicIcon.fromJson(Map<String, dynamic> json) => const PremiumFeatureForumTopicIcon();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureForumTopicIcon copyWith() => const PremiumFeatureForumTopicIcon();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureForumTopicIcon';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
///
/// Allowed to set a premium application icons.
final class PremiumFeatureAppIcons extends PremiumFeature {
  
  /// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
  ///
  /// Allowed to set a premium application icons.
  const PremiumFeatureAppIcons();
  
  /// Parse from a json
  factory PremiumFeatureAppIcons.fromJson(Map<String, dynamic> json) => const PremiumFeatureAppIcons();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureAppIcons copyWith() => const PremiumFeatureAppIcons();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureAppIcons';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureRealTimeChatTranslation** *(premiumFeatureRealTimeChatTranslation)* - child of PremiumFeature
///
/// Allowed to translate chat messages real-time.
final class PremiumFeatureRealTimeChatTranslation extends PremiumFeature {
  
  /// **PremiumFeatureRealTimeChatTranslation** *(premiumFeatureRealTimeChatTranslation)* - child of PremiumFeature
  ///
  /// Allowed to translate chat messages real-time.
  const PremiumFeatureRealTimeChatTranslation();
  
  /// Parse from a json
  factory PremiumFeatureRealTimeChatTranslation.fromJson(Map<String, dynamic> json) => const PremiumFeatureRealTimeChatTranslation();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureRealTimeChatTranslation copyWith() => const PremiumFeatureRealTimeChatTranslation();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureRealTimeChatTranslation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureUpgradedStories** *(premiumFeatureUpgradedStories)* - child of PremiumFeature
///
/// Allowed to use many additional features for stories.
final class PremiumFeatureUpgradedStories extends PremiumFeature {
  
  /// **PremiumFeatureUpgradedStories** *(premiumFeatureUpgradedStories)* - child of PremiumFeature
  ///
  /// Allowed to use many additional features for stories.
  const PremiumFeatureUpgradedStories();
  
  /// Parse from a json
  factory PremiumFeatureUpgradedStories.fromJson(Map<String, dynamic> json) => const PremiumFeatureUpgradedStories();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureUpgradedStories copyWith() => const PremiumFeatureUpgradedStories();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureUpgradedStories';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureChatBoost** *(premiumFeatureChatBoost)* - child of PremiumFeature
///
/// The ability to boost chats.
final class PremiumFeatureChatBoost extends PremiumFeature {
  
  /// **PremiumFeatureChatBoost** *(premiumFeatureChatBoost)* - child of PremiumFeature
  ///
  /// The ability to boost chats.
  const PremiumFeatureChatBoost();
  
  /// Parse from a json
  factory PremiumFeatureChatBoost.fromJson(Map<String, dynamic> json) => const PremiumFeatureChatBoost();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureChatBoost copyWith() => const PremiumFeatureChatBoost();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureChatBoost';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureAccentColor** *(premiumFeatureAccentColor)* - child of PremiumFeature
///
/// The ability to choose accent color for replies and user profile.
final class PremiumFeatureAccentColor extends PremiumFeature {
  
  /// **PremiumFeatureAccentColor** *(premiumFeatureAccentColor)* - child of PremiumFeature
  ///
  /// The ability to choose accent color for replies and user profile.
  const PremiumFeatureAccentColor();
  
  /// Parse from a json
  factory PremiumFeatureAccentColor.fromJson(Map<String, dynamic> json) => const PremiumFeatureAccentColor();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureAccentColor copyWith() => const PremiumFeatureAccentColor();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureAccentColor';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureBackgroundForBoth** *(premiumFeatureBackgroundForBoth)* - child of PremiumFeature
///
/// The ability to set private chat background for both users.
final class PremiumFeatureBackgroundForBoth extends PremiumFeature {
  
  /// **PremiumFeatureBackgroundForBoth** *(premiumFeatureBackgroundForBoth)* - child of PremiumFeature
  ///
  /// The ability to set private chat background for both users.
  const PremiumFeatureBackgroundForBoth();
  
  /// Parse from a json
  factory PremiumFeatureBackgroundForBoth.fromJson(Map<String, dynamic> json) => const PremiumFeatureBackgroundForBoth();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureBackgroundForBoth copyWith() => const PremiumFeatureBackgroundForBoth();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureBackgroundForBoth';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureSavedMessagesTags** *(premiumFeatureSavedMessagesTags)* - child of PremiumFeature
///
/// The ability to use tags in Saved Messages.
final class PremiumFeatureSavedMessagesTags extends PremiumFeature {
  
  /// **PremiumFeatureSavedMessagesTags** *(premiumFeatureSavedMessagesTags)* - child of PremiumFeature
  ///
  /// The ability to use tags in Saved Messages.
  const PremiumFeatureSavedMessagesTags();
  
  /// Parse from a json
  factory PremiumFeatureSavedMessagesTags.fromJson(Map<String, dynamic> json) => const PremiumFeatureSavedMessagesTags();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureSavedMessagesTags copyWith() => const PremiumFeatureSavedMessagesTags();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureSavedMessagesTags';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureMessagePrivacy** *(premiumFeatureMessagePrivacy)* - child of PremiumFeature
///
/// The ability to disallow incoming voice and video note messages in private chats using setUserPrivacySettingRules with userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages. and to restrict incoming messages from non-contacts using setNewChatPrivacySettings.
final class PremiumFeatureMessagePrivacy extends PremiumFeature {
  
  /// **PremiumFeatureMessagePrivacy** *(premiumFeatureMessagePrivacy)* - child of PremiumFeature
  ///
  /// The ability to disallow incoming voice and video note messages in private chats using setUserPrivacySettingRules with userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages. and to restrict incoming messages from non-contacts using setNewChatPrivacySettings.
  const PremiumFeatureMessagePrivacy();
  
  /// Parse from a json
  factory PremiumFeatureMessagePrivacy.fromJson(Map<String, dynamic> json) => const PremiumFeatureMessagePrivacy();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureMessagePrivacy copyWith() => const PremiumFeatureMessagePrivacy();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureMessagePrivacy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PremiumFeatureLastSeenTimes** *(premiumFeatureLastSeenTimes)* - child of PremiumFeature
///
/// The ability to view last seen and read times of other users even they can't view last seen or read time for the current user.
final class PremiumFeatureLastSeenTimes extends PremiumFeature {
  
  /// **PremiumFeatureLastSeenTimes** *(premiumFeatureLastSeenTimes)* - child of PremiumFeature
  ///
  /// The ability to view last seen and read times of other users even they can't view last seen or read time for the current user.
  const PremiumFeatureLastSeenTimes();
  
  /// Parse from a json
  factory PremiumFeatureLastSeenTimes.fromJson(Map<String, dynamic> json) => const PremiumFeatureLastSeenTimes();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumFeatureLastSeenTimes copyWith() => const PremiumFeatureLastSeenTimes();

  /// TDLib object type
  static const String defaultObjectId = 'premiumFeatureLastSeenTimes';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
