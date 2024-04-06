part of '../tdapi.dart';

/// **InputBusinessIntro** *(inputBusinessIntro)* - basic class
///
/// Describes settings for a business account intro to set.
///
/// * [title]: Title text of the intro; 0-getOption("business_intro_title_length_max") characters.
/// * [message]: Message text of the intro; 0-getOption("business_intro_message_length_max") characters.
/// * [sticker]: Greeting sticker of the intro; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji *(optional)*.
final class InputBusinessIntro extends TdObject {
  /// **InputBusinessIntro** *(inputBusinessIntro)* - basic class
  ///
  /// Describes settings for a business account intro to set.
  ///
  /// * [title]: Title text of the intro; 0-getOption("business_intro_title_length_max") characters.
  /// * [message]: Message text of the intro; 0-getOption("business_intro_message_length_max") characters.
  /// * [sticker]: Greeting sticker of the intro; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji *(optional)*.
  const InputBusinessIntro({
    required this.title,
    required this.message,
    this.sticker,
  });

  /// Title text of the intro; 0-getOption("business_intro_title_length_max") characters
  final String title;

  /// Message text of the intro; 0-getOption("business_intro_message_length_max") characters
  final String message;

  /// Greeting sticker of the intro; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji
  final InputFile? sticker;

  /// Parse from a json
  factory InputBusinessIntro.fromJson(Map<String, dynamic> json) =>
      InputBusinessIntro(
        title: json['title'],
        message: json['message'],
        sticker: json['sticker'] == null
            ? null
            : InputFile.fromJson(json['sticker']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "title": title,
      "message": message,
      "sticker": sticker?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Title text of the intro; 0-getOption("business_intro_title_length_max") characters
  /// * [message]: Message text of the intro; 0-getOption("business_intro_message_length_max") characters
  /// * [sticker]: Greeting sticker of the intro; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji
  InputBusinessIntro copyWith({
    String? title,
    String? message,
    InputFile? sticker,
  }) =>
      InputBusinessIntro(
        title: title ?? this.title,
        message: message ?? this.message,
        sticker: sticker ?? this.sticker,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputBusinessIntro';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
