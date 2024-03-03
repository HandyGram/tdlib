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
  /// * [PremiumLimitTypePinnedSavedMessagesTopicCount]
  /// * [PremiumLimitTypeCaptionLength]
  /// * [PremiumLimitTypeBioLength]
  /// * [PremiumLimitTypeChatFolderInviteLinkCount]
  /// * [PremiumLimitTypeShareableChatFolderCount]
  /// * [PremiumLimitTypeActiveStoryCount]
  /// * [PremiumLimitTypeWeeklySentStoryCount]
  /// * [PremiumLimitTypeMonthlySentStoryCount]
  /// * [PremiumLimitTypeStoryCaptionLength]
  /// * [PremiumLimitTypeStorySuggestedReactionAreaCount]
  /// * [PremiumLimitTypeSimilarChatCount]
  factory PremiumLimitType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumLimitTypeSupergroupCount.defaultObjectId:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.defaultObjectId:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.defaultObjectId:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.defaultObjectId:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.defaultObjectId:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFolderCount.defaultObjectId:
        return PremiumLimitTypeChatFolderCount.fromJson(json);
      case PremiumLimitTypeChatFolderChosenChatCount.defaultObjectId:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.defaultObjectId:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypePinnedSavedMessagesTopicCount.defaultObjectId:
        return PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.defaultObjectId:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.defaultObjectId:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeChatFolderInviteLinkCount.defaultObjectId:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);
      case PremiumLimitTypeShareableChatFolderCount.defaultObjectId:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);
      case PremiumLimitTypeActiveStoryCount.defaultObjectId:
        return PremiumLimitTypeActiveStoryCount.fromJson(json);
      case PremiumLimitTypeWeeklySentStoryCount.defaultObjectId:
        return PremiumLimitTypeWeeklySentStoryCount.fromJson(json);
      case PremiumLimitTypeMonthlySentStoryCount.defaultObjectId:
        return PremiumLimitTypeMonthlySentStoryCount.fromJson(json);
      case PremiumLimitTypeStoryCaptionLength.defaultObjectId:
        return PremiumLimitTypeStoryCaptionLength.fromJson(json);
      case PremiumLimitTypeStorySuggestedReactionAreaCount.defaultObjectId:
        return PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(json);
      case PremiumLimitTypeSimilarChatCount.defaultObjectId:
        return PremiumLimitTypeSimilarChatCount.fromJson(json);
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
  static const String defaultObjectId = 'premiumLimitType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeSupergroupCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeSupergroupCount copyWith() =>
      const PremiumLimitTypeSupergroupCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeSupergroupCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedChatCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypePinnedChatCount copyWith() =>
      const PremiumLimitTypePinnedChatCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypePinnedChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeCreatedPublicChatCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() =>
      const PremiumLimitTypeCreatedPublicChatCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypeCreatedPublicChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeSavedAnimationCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeSavedAnimationCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeSavedAnimationCount copyWith() =>
      const PremiumLimitTypeSavedAnimationCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeSavedAnimationCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeFavoriteStickerCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeFavoriteStickerCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() =>
      const PremiumLimitTypeFavoriteStickerCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeFavoriteStickerCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeChatFolderCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderCount copyWith() =>
      const PremiumLimitTypeChatFolderCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeChatFolderCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeChatFolderChosenChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderChosenChatCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderChosenChatCount copyWith() =>
      const PremiumLimitTypeChatFolderChosenChatCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypeChatFolderChosenChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedArchivedChatCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() =>
      const PremiumLimitTypePinnedArchivedChatCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypePinnedArchivedChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypePinnedSavedMessagesTopicCount** *(premiumLimitTypePinnedSavedMessagesTopicCount)* - child of PremiumLimitType
///
/// The maximum number of pinned Saved Messages topics.
final class PremiumLimitTypePinnedSavedMessagesTopicCount
    extends PremiumLimitType {
  /// **PremiumLimitTypePinnedSavedMessagesTopicCount** *(premiumLimitTypePinnedSavedMessagesTopicCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned Saved Messages topics.
  const PremiumLimitTypePinnedSavedMessagesTopicCount();

  /// Parse from a json
  factory PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedSavedMessagesTopicCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypePinnedSavedMessagesTopicCount copyWith() =>
      const PremiumLimitTypePinnedSavedMessagesTopicCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypePinnedSavedMessagesTopicCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeCaptionLength();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeCaptionLength copyWith() =>
      const PremiumLimitTypeCaptionLength();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeCaptionLength';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeBioLength();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeBioLength copyWith() => const PremiumLimitTypeBioLength();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeBioLength';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeChatFolderInviteLinkCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderInviteLinkCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeChatFolderInviteLinkCount copyWith() =>
      const PremiumLimitTypeChatFolderInviteLinkCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypeChatFolderInviteLinkCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
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
  factory PremiumLimitTypeShareableChatFolderCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeShareableChatFolderCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeShareableChatFolderCount copyWith() =>
      const PremiumLimitTypeShareableChatFolderCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypeShareableChatFolderCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeActiveStoryCount** *(premiumLimitTypeActiveStoryCount)* - child of PremiumLimitType
///
/// The maximum number of active stories.
final class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  /// **PremiumLimitTypeActiveStoryCount** *(premiumLimitTypeActiveStoryCount)* - child of PremiumLimitType
  ///
  /// The maximum number of active stories.
  const PremiumLimitTypeActiveStoryCount();

  /// Parse from a json
  factory PremiumLimitTypeActiveStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeActiveStoryCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeActiveStoryCount copyWith() =>
      const PremiumLimitTypeActiveStoryCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeActiveStoryCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeWeeklySentStoryCount** *(premiumLimitTypeWeeklySentStoryCount)* - child of PremiumLimitType
///
/// The maximum number of stories sent per week.
final class PremiumLimitTypeWeeklySentStoryCount extends PremiumLimitType {
  /// **PremiumLimitTypeWeeklySentStoryCount** *(premiumLimitTypeWeeklySentStoryCount)* - child of PremiumLimitType
  ///
  /// The maximum number of stories sent per week.
  const PremiumLimitTypeWeeklySentStoryCount();

  /// Parse from a json
  factory PremiumLimitTypeWeeklySentStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeWeeklySentStoryCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeWeeklySentStoryCount copyWith() =>
      const PremiumLimitTypeWeeklySentStoryCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeWeeklySentStoryCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeMonthlySentStoryCount** *(premiumLimitTypeMonthlySentStoryCount)* - child of PremiumLimitType
///
/// The maximum number of stories sent per month.
final class PremiumLimitTypeMonthlySentStoryCount extends PremiumLimitType {
  /// **PremiumLimitTypeMonthlySentStoryCount** *(premiumLimitTypeMonthlySentStoryCount)* - child of PremiumLimitType
  ///
  /// The maximum number of stories sent per month.
  const PremiumLimitTypeMonthlySentStoryCount();

  /// Parse from a json
  factory PremiumLimitTypeMonthlySentStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeMonthlySentStoryCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeMonthlySentStoryCount copyWith() =>
      const PremiumLimitTypeMonthlySentStoryCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeMonthlySentStoryCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeStoryCaptionLength** *(premiumLimitTypeStoryCaptionLength)* - child of PremiumLimitType
///
/// The maximum length of captions of sent stories.
final class PremiumLimitTypeStoryCaptionLength extends PremiumLimitType {
  /// **PremiumLimitTypeStoryCaptionLength** *(premiumLimitTypeStoryCaptionLength)* - child of PremiumLimitType
  ///
  /// The maximum length of captions of sent stories.
  const PremiumLimitTypeStoryCaptionLength();

  /// Parse from a json
  factory PremiumLimitTypeStoryCaptionLength.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeStoryCaptionLength();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeStoryCaptionLength copyWith() =>
      const PremiumLimitTypeStoryCaptionLength();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeStoryCaptionLength';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeStorySuggestedReactionAreaCount** *(premiumLimitTypeStorySuggestedReactionAreaCount)* - child of PremiumLimitType
///
/// The maximum number of suggested reaction areas on a story.
final class PremiumLimitTypeStorySuggestedReactionAreaCount
    extends PremiumLimitType {
  /// **PremiumLimitTypeStorySuggestedReactionAreaCount** *(premiumLimitTypeStorySuggestedReactionAreaCount)* - child of PremiumLimitType
  ///
  /// The maximum number of suggested reaction areas on a story.
  const PremiumLimitTypeStorySuggestedReactionAreaCount();

  /// Parse from a json
  factory PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeStorySuggestedReactionAreaCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeStorySuggestedReactionAreaCount copyWith() =>
      const PremiumLimitTypeStorySuggestedReactionAreaCount();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumLimitTypeStorySuggestedReactionAreaCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumLimitTypeSimilarChatCount** *(premiumLimitTypeSimilarChatCount)* - child of PremiumLimitType
///
/// The maximum number of received similar chats.
final class PremiumLimitTypeSimilarChatCount extends PremiumLimitType {
  /// **PremiumLimitTypeSimilarChatCount** *(premiumLimitTypeSimilarChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of received similar chats.
  const PremiumLimitTypeSimilarChatCount();

  /// Parse from a json
  factory PremiumLimitTypeSimilarChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeSimilarChatCount();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumLimitTypeSimilarChatCount copyWith() =>
      const PremiumLimitTypeSimilarChatCount();

  /// TDLib object type
  static const String defaultObjectId = 'premiumLimitTypeSimilarChatCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
