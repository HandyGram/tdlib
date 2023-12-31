part of '../tdapi.dart';

/// **TextEntityType** *(textEntityType)* - parent
///
/// Represents a part of the text which must be formatted differently.
sealed class TextEntityType extends TdObject {
  
  /// **TextEntityType** *(textEntityType)* - parent
  ///
  /// Represents a part of the text which must be formatted differently.
  const TextEntityType();
  
  /// a TextEntityType return type can be :
  /// * [TextEntityTypeMention]
  /// * [TextEntityTypeHashtag]
  /// * [TextEntityTypeCashtag]
  /// * [TextEntityTypeBotCommand]
  /// * [TextEntityTypeUrl]
  /// * [TextEntityTypeEmailAddress]
  /// * [TextEntityTypePhoneNumber]
  /// * [TextEntityTypeBankCardNumber]
  /// * [TextEntityTypeBold]
  /// * [TextEntityTypeItalic]
  /// * [TextEntityTypeUnderline]
  /// * [TextEntityTypeStrikethrough]
  /// * [TextEntityTypeSpoiler]
  /// * [TextEntityTypeCode]
  /// * [TextEntityTypePre]
  /// * [TextEntityTypePreCode]
  /// * [TextEntityTypeTextUrl]
  /// * [TextEntityTypeMentionName]
  /// * [TextEntityTypeCustomEmoji]
  /// * [TextEntityTypeMediaTimestamp]
  factory TextEntityType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TextEntityTypeMention.objectType:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.objectType:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.objectType:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.objectType:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.objectType:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.objectType:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.objectType:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.objectType:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.objectType:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.objectType:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.objectType:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.objectType:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeSpoiler.objectType:
        return TextEntityTypeSpoiler.fromJson(json);
      case TextEntityTypeCode.objectType:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.objectType:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.objectType:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.objectType:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.objectType:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypeCustomEmoji.objectType:
        return TextEntityTypeCustomEmoji.fromJson(json);
      case TextEntityTypeMediaTimestamp.objectType:
        return TextEntityTypeMediaTimestamp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TextEntityType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  TextEntityType copyWith();

  /// TDLib object type
  static const String objectType = 'textEntityType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeMention** *(textEntityTypeMention)* - child of TextEntityType
///
/// A mention of a user, a supergroup, or a channel by their username.
final class TextEntityTypeMention extends TextEntityType {
  
  /// **TextEntityTypeMention** *(textEntityTypeMention)* - child of TextEntityType
  ///
  /// A mention of a user, a supergroup, or a channel by their username.
  const TextEntityTypeMention();
  
  /// Parse from a json
  factory TextEntityTypeMention.fromJson(Map<String, dynamic> json) => const TextEntityTypeMention();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeMention copyWith() => const TextEntityTypeMention();

  /// TDLib object type
  static const String objectType = 'textEntityTypeMention';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeHashtag** *(textEntityTypeHashtag)* - child of TextEntityType
///
/// A hashtag text, beginning with "#".
final class TextEntityTypeHashtag extends TextEntityType {
  
  /// **TextEntityTypeHashtag** *(textEntityTypeHashtag)* - child of TextEntityType
  ///
  /// A hashtag text, beginning with "#".
  const TextEntityTypeHashtag();
  
  /// Parse from a json
  factory TextEntityTypeHashtag.fromJson(Map<String, dynamic> json) => const TextEntityTypeHashtag();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeHashtag copyWith() => const TextEntityTypeHashtag();

  /// TDLib object type
  static const String objectType = 'textEntityTypeHashtag';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeCashtag** *(textEntityTypeCashtag)* - child of TextEntityType
///
/// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").
final class TextEntityTypeCashtag extends TextEntityType {
  
  /// **TextEntityTypeCashtag** *(textEntityTypeCashtag)* - child of TextEntityType
  ///
  /// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").
  const TextEntityTypeCashtag();
  
  /// Parse from a json
  factory TextEntityTypeCashtag.fromJson(Map<String, dynamic> json) => const TextEntityTypeCashtag();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeCashtag copyWith() => const TextEntityTypeCashtag();

  /// TDLib object type
  static const String objectType = 'textEntityTypeCashtag';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeBotCommand** *(textEntityTypeBotCommand)* - child of TextEntityType
///
/// A bot command, beginning with "/".
final class TextEntityTypeBotCommand extends TextEntityType {
  
  /// **TextEntityTypeBotCommand** *(textEntityTypeBotCommand)* - child of TextEntityType
  ///
  /// A bot command, beginning with "/".
  const TextEntityTypeBotCommand();
  
  /// Parse from a json
  factory TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json) => const TextEntityTypeBotCommand();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeBotCommand copyWith() => const TextEntityTypeBotCommand();

  /// TDLib object type
  static const String objectType = 'textEntityTypeBotCommand';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeUrl** *(textEntityTypeUrl)* - child of TextEntityType
///
/// An HTTP URL.
final class TextEntityTypeUrl extends TextEntityType {
  
  /// **TextEntityTypeUrl** *(textEntityTypeUrl)* - child of TextEntityType
  ///
  /// An HTTP URL.
  const TextEntityTypeUrl();
  
  /// Parse from a json
  factory TextEntityTypeUrl.fromJson(Map<String, dynamic> json) => const TextEntityTypeUrl();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeUrl copyWith() => const TextEntityTypeUrl();

  /// TDLib object type
  static const String objectType = 'textEntityTypeUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeEmailAddress** *(textEntityTypeEmailAddress)* - child of TextEntityType
///
/// An email address.
final class TextEntityTypeEmailAddress extends TextEntityType {
  
  /// **TextEntityTypeEmailAddress** *(textEntityTypeEmailAddress)* - child of TextEntityType
  ///
  /// An email address.
  const TextEntityTypeEmailAddress();
  
  /// Parse from a json
  factory TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json) => const TextEntityTypeEmailAddress();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeEmailAddress copyWith() => const TextEntityTypeEmailAddress();

  /// TDLib object type
  static const String objectType = 'textEntityTypeEmailAddress';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypePhoneNumber** *(textEntityTypePhoneNumber)* - child of TextEntityType
///
/// A phone number.
final class TextEntityTypePhoneNumber extends TextEntityType {
  
  /// **TextEntityTypePhoneNumber** *(textEntityTypePhoneNumber)* - child of TextEntityType
  ///
  /// A phone number.
  const TextEntityTypePhoneNumber();
  
  /// Parse from a json
  factory TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json) => const TextEntityTypePhoneNumber();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypePhoneNumber copyWith() => const TextEntityTypePhoneNumber();

  /// TDLib object type
  static const String objectType = 'textEntityTypePhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeBankCardNumber** *(textEntityTypeBankCardNumber)* - child of TextEntityType
///
/// A bank card number. The getBankCardInfo method can be used to get information about the bank card.
final class TextEntityTypeBankCardNumber extends TextEntityType {
  
  /// **TextEntityTypeBankCardNumber** *(textEntityTypeBankCardNumber)* - child of TextEntityType
  ///
  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card.
  const TextEntityTypeBankCardNumber();
  
  /// Parse from a json
  factory TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json) => const TextEntityTypeBankCardNumber();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeBankCardNumber copyWith() => const TextEntityTypeBankCardNumber();

  /// TDLib object type
  static const String objectType = 'textEntityTypeBankCardNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeBold** *(textEntityTypeBold)* - child of TextEntityType
///
/// A bold text.
final class TextEntityTypeBold extends TextEntityType {
  
  /// **TextEntityTypeBold** *(textEntityTypeBold)* - child of TextEntityType
  ///
  /// A bold text.
  const TextEntityTypeBold();
  
  /// Parse from a json
  factory TextEntityTypeBold.fromJson(Map<String, dynamic> json) => const TextEntityTypeBold();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeBold copyWith() => const TextEntityTypeBold();

  /// TDLib object type
  static const String objectType = 'textEntityTypeBold';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeItalic** *(textEntityTypeItalic)* - child of TextEntityType
///
/// An italic text.
final class TextEntityTypeItalic extends TextEntityType {
  
  /// **TextEntityTypeItalic** *(textEntityTypeItalic)* - child of TextEntityType
  ///
  /// An italic text.
  const TextEntityTypeItalic();
  
  /// Parse from a json
  factory TextEntityTypeItalic.fromJson(Map<String, dynamic> json) => const TextEntityTypeItalic();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeItalic copyWith() => const TextEntityTypeItalic();

  /// TDLib object type
  static const String objectType = 'textEntityTypeItalic';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeUnderline** *(textEntityTypeUnderline)* - child of TextEntityType
///
/// An underlined text.
final class TextEntityTypeUnderline extends TextEntityType {
  
  /// **TextEntityTypeUnderline** *(textEntityTypeUnderline)* - child of TextEntityType
  ///
  /// An underlined text.
  const TextEntityTypeUnderline();
  
  /// Parse from a json
  factory TextEntityTypeUnderline.fromJson(Map<String, dynamic> json) => const TextEntityTypeUnderline();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeUnderline copyWith() => const TextEntityTypeUnderline();

  /// TDLib object type
  static const String objectType = 'textEntityTypeUnderline';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeStrikethrough** *(textEntityTypeStrikethrough)* - child of TextEntityType
///
/// A strikethrough text.
final class TextEntityTypeStrikethrough extends TextEntityType {
  
  /// **TextEntityTypeStrikethrough** *(textEntityTypeStrikethrough)* - child of TextEntityType
  ///
  /// A strikethrough text.
  const TextEntityTypeStrikethrough();
  
  /// Parse from a json
  factory TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json) => const TextEntityTypeStrikethrough();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeStrikethrough copyWith() => const TextEntityTypeStrikethrough();

  /// TDLib object type
  static const String objectType = 'textEntityTypeStrikethrough';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeSpoiler** *(textEntityTypeSpoiler)* - child of TextEntityType
///
/// A spoiler text.
final class TextEntityTypeSpoiler extends TextEntityType {
  
  /// **TextEntityTypeSpoiler** *(textEntityTypeSpoiler)* - child of TextEntityType
  ///
  /// A spoiler text.
  const TextEntityTypeSpoiler();
  
  /// Parse from a json
  factory TextEntityTypeSpoiler.fromJson(Map<String, dynamic> json) => const TextEntityTypeSpoiler();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeSpoiler copyWith() => const TextEntityTypeSpoiler();

  /// TDLib object type
  static const String objectType = 'textEntityTypeSpoiler';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeCode** *(textEntityTypeCode)* - child of TextEntityType
///
/// Text that must be formatted as if inside a code HTML tag.
final class TextEntityTypeCode extends TextEntityType {
  
  /// **TextEntityTypeCode** *(textEntityTypeCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a code HTML tag.
  const TextEntityTypeCode();
  
  /// Parse from a json
  factory TextEntityTypeCode.fromJson(Map<String, dynamic> json) => const TextEntityTypeCode();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypeCode copyWith() => const TextEntityTypeCode();

  /// TDLib object type
  static const String objectType = 'textEntityTypeCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypePre** *(textEntityTypePre)* - child of TextEntityType
///
/// Text that must be formatted as if inside a pre HTML tag.
final class TextEntityTypePre extends TextEntityType {
  
  /// **TextEntityTypePre** *(textEntityTypePre)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a pre HTML tag.
  const TextEntityTypePre();
  
  /// Parse from a json
  factory TextEntityTypePre.fromJson(Map<String, dynamic> json) => const TextEntityTypePre();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  TextEntityTypePre copyWith() => const TextEntityTypePre();

  /// TDLib object type
  static const String objectType = 'textEntityTypePre';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypePreCode** *(textEntityTypePreCode)* - child of TextEntityType
///
/// Text that must be formatted as if inside pre, and code HTML tags.
///
/// * [language]: Programming language of the code; as defined by the sender.
final class TextEntityTypePreCode extends TextEntityType {
  
  /// **TextEntityTypePreCode** *(textEntityTypePreCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside pre, and code HTML tags.
  ///
  /// * [language]: Programming language of the code; as defined by the sender.
  const TextEntityTypePreCode({
    required this.language,
  });
  
  /// Programming language of the code; as defined by the sender
  final String language;
  
  /// Parse from a json
  factory TextEntityTypePreCode.fromJson(Map<String, dynamic> json) => TextEntityTypePreCode(
    language: json['language'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "language": language,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [language]: Programming language of the code; as defined by the sender
  @override
  TextEntityTypePreCode copyWith({
    String? language,
  }) => TextEntityTypePreCode(
    language: language ?? this.language,
  );

  /// TDLib object type
  static const String objectType = 'textEntityTypePreCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeTextUrl** *(textEntityTypeTextUrl)* - child of TextEntityType
///
/// A text description shown instead of a raw URL.
///
/// * [url]: HTTP or tg:// URL to be opened when the link is clicked.
final class TextEntityTypeTextUrl extends TextEntityType {
  
  /// **TextEntityTypeTextUrl** *(textEntityTypeTextUrl)* - child of TextEntityType
  ///
  /// A text description shown instead of a raw URL.
  ///
  /// * [url]: HTTP or tg:// URL to be opened when the link is clicked.
  const TextEntityTypeTextUrl({
    required this.url,
  });
  
  /// HTTP or tg:// URL to be opened when the link is clicked
  final String url;
  
  /// Parse from a json
  factory TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) => TextEntityTypeTextUrl(
    url: json['url'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: HTTP or tg:// URL to be opened when the link is clicked
  @override
  TextEntityTypeTextUrl copyWith({
    String? url,
  }) => TextEntityTypeTextUrl(
    url: url ?? this.url,
  );

  /// TDLib object type
  static const String objectType = 'textEntityTypeTextUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeMentionName** *(textEntityTypeMentionName)* - child of TextEntityType
///
/// A text shows instead of a raw mention of the user (e.g., when the user has no username).
///
/// * [userId]: Identifier of the mentioned user.
final class TextEntityTypeMentionName extends TextEntityType {
  
  /// **TextEntityTypeMentionName** *(textEntityTypeMentionName)* - child of TextEntityType
  ///
  /// A text shows instead of a raw mention of the user (e.g., when the user has no username).
  ///
  /// * [userId]: Identifier of the mentioned user.
  const TextEntityTypeMentionName({
    required this.userId,
  });
  
  /// Identifier of the mentioned user
  final int userId;
  
  /// Parse from a json
  factory TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) => TextEntityTypeMentionName(
    userId: json['user_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the mentioned user
  @override
  TextEntityTypeMentionName copyWith({
    int? userId,
  }) => TextEntityTypeMentionName(
    userId: userId ?? this.userId,
  );

  /// TDLib object type
  static const String objectType = 'textEntityTypeMentionName';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeCustomEmoji** *(textEntityTypeCustomEmoji)* - child of TextEntityType
///
/// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji.
///
/// * [customEmojiId]: Unique identifier of the custom emoji.
final class TextEntityTypeCustomEmoji extends TextEntityType {
  
  /// **TextEntityTypeCustomEmoji** *(textEntityTypeCustomEmoji)* - child of TextEntityType
  ///
  /// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji.
  ///
  /// * [customEmojiId]: Unique identifier of the custom emoji.
  const TextEntityTypeCustomEmoji({
    required this.customEmojiId,
  });
  
  /// Unique identifier of the custom emoji
  final int customEmojiId;
  
  /// Parse from a json
  factory TextEntityTypeCustomEmoji.fromJson(Map<String, dynamic> json) => TextEntityTypeCustomEmoji(
    customEmojiId: int.parse(json['custom_emoji_id']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_emoji_id": customEmojiId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [custom_emoji_id]: Unique identifier of the custom emoji
  @override
  TextEntityTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) => TextEntityTypeCustomEmoji(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  /// TDLib object type
  static const String objectType = 'textEntityTypeCustomEmoji';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TextEntityTypeMediaTimestamp** *(textEntityTypeMediaTimestamp)* - child of TextEntityType
///
/// A media timestamp.
///
/// * [mediaTimestamp]: Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message.
final class TextEntityTypeMediaTimestamp extends TextEntityType {
  
  /// **TextEntityTypeMediaTimestamp** *(textEntityTypeMediaTimestamp)* - child of TextEntityType
  ///
  /// A media timestamp.
  ///
  /// * [mediaTimestamp]: Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message.
  const TextEntityTypeMediaTimestamp({
    required this.mediaTimestamp,
  });
  
  /// Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message
  final int mediaTimestamp;
  
  /// Parse from a json
  factory TextEntityTypeMediaTimestamp.fromJson(Map<String, dynamic> json) => TextEntityTypeMediaTimestamp(
    mediaTimestamp: json['media_timestamp'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "media_timestamp": mediaTimestamp,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [media_timestamp]: Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message
  @override
  TextEntityTypeMediaTimestamp copyWith({
    int? mediaTimestamp,
  }) => TextEntityTypeMediaTimestamp(
    mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
  );

  /// TDLib object type
  static const String objectType = 'textEntityTypeMediaTimestamp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
