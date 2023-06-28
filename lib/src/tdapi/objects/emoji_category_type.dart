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
  factory EmojiCategoryType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmojiCategoryTypeDefault.objectType:
        return EmojiCategoryTypeDefault.fromJson(json);
      case EmojiCategoryTypeEmojiStatus.objectType:
        return EmojiCategoryTypeEmojiStatus.fromJson(json);
      case EmojiCategoryTypeChatPhoto.objectType:
        return EmojiCategoryTypeChatPhoto.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of EmojiCategoryType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  EmojiCategoryType copyWith();

  static const String objectType = 'emojiCategoryType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
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
  factory EmojiCategoryTypeDefault.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeDefault();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  EmojiCategoryTypeDefault copyWith() => const EmojiCategoryTypeDefault();

  static const String objectType = 'emojiCategoryTypeDefault';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
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
  factory EmojiCategoryTypeEmojiStatus.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeEmojiStatus();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  EmojiCategoryTypeEmojiStatus copyWith() => const EmojiCategoryTypeEmojiStatus();

  static const String objectType = 'emojiCategoryTypeEmojiStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
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
  factory EmojiCategoryTypeChatPhoto.fromJson(Map<String, dynamic> json) => const EmojiCategoryTypeChatPhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  EmojiCategoryTypeChatPhoto copyWith() => const EmojiCategoryTypeChatPhoto();

  static const String objectType = 'emojiCategoryTypeChatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
