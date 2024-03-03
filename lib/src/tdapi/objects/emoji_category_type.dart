part of '../tdapi.dart';

/// **EmojiCategoryType** *(emojiCategoryType)* - parent
///
/// Describes type of an emoji category.
sealed class EmojiCategoryType extends TdObject {
  /// **EmojiCategoryType** *(emojiCategoryType)* - parent
  ///
  /// Describes type of an emoji category.
  const EmojiCategoryType();

  /// a EmojiCategoryType return type can be :
  /// * [EmojiCategoryTypeDefault]
  /// * [EmojiCategoryTypeEmojiStatus]
  /// * [EmojiCategoryTypeChatPhoto]
  factory EmojiCategoryType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case EmojiCategoryTypeDefault.defaultObjectId:
        return EmojiCategoryTypeDefault.fromJson(json);
      case EmojiCategoryTypeEmojiStatus.defaultObjectId:
        return EmojiCategoryTypeEmojiStatus.fromJson(json);
      case EmojiCategoryTypeChatPhoto.defaultObjectId:
        return EmojiCategoryTypeChatPhoto.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of EmojiCategoryType)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  EmojiCategoryType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'emojiCategoryType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **EmojiCategoryTypeDefault** *(emojiCategoryTypeDefault)* - child of EmojiCategoryType
///
/// The category must be used by default.
final class EmojiCategoryTypeDefault extends EmojiCategoryType {
  /// **EmojiCategoryTypeDefault** *(emojiCategoryTypeDefault)* - child of EmojiCategoryType
  ///
  /// The category must be used by default.
  const EmojiCategoryTypeDefault();

  /// Parse from a json
  factory EmojiCategoryTypeDefault.fromJson(Map<String, dynamic> json) =>
      const EmojiCategoryTypeDefault();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  EmojiCategoryTypeDefault copyWith() => const EmojiCategoryTypeDefault();

  /// TDLib object type
  static const String defaultObjectId = 'emojiCategoryTypeDefault';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **EmojiCategoryTypeEmojiStatus** *(emojiCategoryTypeEmojiStatus)* - child of EmojiCategoryType
///
/// The category must be used for emoji status selection.
final class EmojiCategoryTypeEmojiStatus extends EmojiCategoryType {
  /// **EmojiCategoryTypeEmojiStatus** *(emojiCategoryTypeEmojiStatus)* - child of EmojiCategoryType
  ///
  /// The category must be used for emoji status selection.
  const EmojiCategoryTypeEmojiStatus();

  /// Parse from a json
  factory EmojiCategoryTypeEmojiStatus.fromJson(Map<String, dynamic> json) =>
      const EmojiCategoryTypeEmojiStatus();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  EmojiCategoryTypeEmojiStatus copyWith() =>
      const EmojiCategoryTypeEmojiStatus();

  /// TDLib object type
  static const String defaultObjectId = 'emojiCategoryTypeEmojiStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **EmojiCategoryTypeChatPhoto** *(emojiCategoryTypeChatPhoto)* - child of EmojiCategoryType
///
/// The category must be used for chat photo emoji selection.
final class EmojiCategoryTypeChatPhoto extends EmojiCategoryType {
  /// **EmojiCategoryTypeChatPhoto** *(emojiCategoryTypeChatPhoto)* - child of EmojiCategoryType
  ///
  /// The category must be used for chat photo emoji selection.
  const EmojiCategoryTypeChatPhoto();

  /// Parse from a json
  factory EmojiCategoryTypeChatPhoto.fromJson(Map<String, dynamic> json) =>
      const EmojiCategoryTypeChatPhoto();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  EmojiCategoryTypeChatPhoto copyWith() => const EmojiCategoryTypeChatPhoto();

  /// TDLib object type
  static const String defaultObjectId = 'emojiCategoryTypeChatPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
