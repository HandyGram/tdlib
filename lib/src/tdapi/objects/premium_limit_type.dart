part of '../tdapi.dart';

/// **PremiumLimitType** *(premiumLimitType)* - parent
///
/// Describes type of a limit, increased for Premium users.
sealed class PremiumLimitType extends TdObject {
  
  /// **PremiumLimitType** *(premiumLimitType)* - parent
  ///
  /// Describes type of a limit, increased for Premium users.
  const PremiumLimitType();
  
  /// a PremiumLimitType return type can be :
  /// * [PremiumLimitTypeSupergroupCount]
  /// * [PremiumLimitTypePinnedChatCount]
  /// * [PremiumLimitTypeCreatedPublicChatCount]
  /// * [PremiumLimitTypeSavedAnimationCount]
  /// * [PremiumLimitTypeFavoriteStickerCount]
  /// * [PremiumLimitTypeChatFolderCount]
  /// * [PremiumLimitTypeChatFolderChosenChatCount]
  /// * [PremiumLimitTypePinnedArchivedChatCount]
  /// * [PremiumLimitTypeCaptionLength]
  /// * [PremiumLimitTypeBioLength]
  /// * [PremiumLimitTypeChatFolderInviteLinkCount]
  /// * [PremiumLimitTypeShareableChatFolderCount]
  factory PremiumLimitType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumLimitTypeSupergroupCount.objectType:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.objectType:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.objectType:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.objectType:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.objectType:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFolderCount.objectType:
        return PremiumLimitTypeChatFolderCount.fromJson(json);
      case PremiumLimitTypeChatFolderChosenChatCount.objectType:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.objectType:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.objectType:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.objectType:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeChatFolderInviteLinkCount.objectType:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);
      case PremiumLimitTypeShareableChatFolderCount.objectType:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumLimitType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PremiumLimitType copyWith();

  /// TDLib object type
  static const String objectType = 'premiumLimitType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
///
/// The maximum number of joined supergroups and channels.
final class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
  ///
  /// The maximum number of joined supergroups and channels.
  const PremiumLimitTypeSupergroupCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSupergroupCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeSupergroupCount copyWith() => const PremiumLimitTypeSupergroupCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeSupergroupCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned chats in the main chat list.
final class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the main chat list.
  const PremiumLimitTypePinnedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedChatCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypePinnedChatCount copyWith() => const PremiumLimitTypePinnedChatCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypePinnedChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
///
/// The maximum number of created public chats.
final class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of created public chats.
  const PremiumLimitTypeCreatedPublicChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCreatedPublicChatCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() => const PremiumLimitTypeCreatedPublicChatCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeCreatedPublicChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
///
/// The maximum number of saved animations.
final class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
  ///
  /// The maximum number of saved animations.
  const PremiumLimitTypeSavedAnimationCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSavedAnimationCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSavedAnimationCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeSavedAnimationCount copyWith() => const PremiumLimitTypeSavedAnimationCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeSavedAnimationCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
///
/// The maximum number of favorite stickers.
final class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
  ///
  /// The maximum number of favorite stickers.
  const PremiumLimitTypeFavoriteStickerCount();
  
  /// Parse from a json
  factory PremiumLimitTypeFavoriteStickerCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeFavoriteStickerCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() => const PremiumLimitTypeFavoriteStickerCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeFavoriteStickerCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeChatFolderCount** *(premiumLimitTypeChatFolderCount)* - child of PremiumLimitType
///
/// The maximum number of chat folders.
final class PremiumLimitTypeChatFolderCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFolderCount** *(premiumLimitTypeChatFolderCount)* - child of PremiumLimitType
  ///
  /// The maximum number of chat folders.
  const PremiumLimitTypeChatFolderCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFolderCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFolderCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderCount copyWith() => const PremiumLimitTypeChatFolderCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeChatFolderCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeChatFolderChosenChatCount** *(premiumLimitTypeChatFolderChosenChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned and always included, or always excluded chats in a chat folder.
final class PremiumLimitTypeChatFolderChosenChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFolderChosenChatCount** *(premiumLimitTypeChatFolderChosenChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned and always included, or always excluded chats in a chat folder.
  const PremiumLimitTypeChatFolderChosenChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFolderChosenChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFolderChosenChatCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderChosenChatCount copyWith() => const PremiumLimitTypeChatFolderChosenChatCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeChatFolderChosenChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned chats in the archive chat list.
final class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the archive chat list.
  const PremiumLimitTypePinnedArchivedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedArchivedChatCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() => const PremiumLimitTypePinnedArchivedChatCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypePinnedArchivedChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
///
/// The maximum length of sent media caption.
final class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
  ///
  /// The maximum length of sent media caption.
  const PremiumLimitTypeCaptionLength();
  
  /// Parse from a json
  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCaptionLength();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeCaptionLength copyWith() => const PremiumLimitTypeCaptionLength();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeCaptionLength';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
///
/// The maximum length of the user's bio.
final class PremiumLimitTypeBioLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
  ///
  /// The maximum length of the user's bio.
  const PremiumLimitTypeBioLength();
  
  /// Parse from a json
  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeBioLength();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeBioLength copyWith() => const PremiumLimitTypeBioLength();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeBioLength';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeChatFolderInviteLinkCount** *(premiumLimitTypeChatFolderInviteLinkCount)* - child of PremiumLimitType
///
/// The maximum number of invite links for a chat folder.
final class PremiumLimitTypeChatFolderInviteLinkCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFolderInviteLinkCount** *(premiumLimitTypeChatFolderInviteLinkCount)* - child of PremiumLimitType
  ///
  /// The maximum number of invite links for a chat folder.
  const PremiumLimitTypeChatFolderInviteLinkCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFolderInviteLinkCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFolderInviteLinkCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderInviteLinkCount copyWith() => const PremiumLimitTypeChatFolderInviteLinkCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeChatFolderInviteLinkCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeShareableChatFolderCount** *(premiumLimitTypeShareableChatFolderCount)* - child of PremiumLimitType
///
/// The maximum number of added shareable chat folders.
final class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeShareableChatFolderCount** *(premiumLimitTypeShareableChatFolderCount)* - child of PremiumLimitType
  ///
  /// The maximum number of added shareable chat folders.
  const PremiumLimitTypeShareableChatFolderCount();
  
  /// Parse from a json
  factory PremiumLimitTypeShareableChatFolderCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeShareableChatFolderCount();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeShareableChatFolderCount copyWith() => const PremiumLimitTypeShareableChatFolderCount();

  /// TDLib object type
  static const String objectType = 'premiumLimitTypeShareableChatFolderCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
