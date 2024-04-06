part of '../tdapi.dart';

/// **BusinessIntro** *(businessIntro)* - basic class
///
/// Describes settings for a business account intro.
///
/// * [title]: Title text of the intro.
/// * [message]: Message text of the intro.
/// * [sticker]: Greeting sticker of the intro; may be null if none *(optional)*.
final class BusinessIntro extends TdObject {
  /// **BusinessIntro** *(businessIntro)* - basic class
  ///
  /// Describes settings for a business account intro.
  ///
  /// * [title]: Title text of the intro.
  /// * [message]: Message text of the intro.
  /// * [sticker]: Greeting sticker of the intro; may be null if none *(optional)*.
  const BusinessIntro({
    required this.title,
    required this.message,
    this.sticker,
  });

  /// Title text of the intro
  final String title;

  /// Message text of the intro
  final String message;

  /// Greeting sticker of the intro; may be null if none
  final Sticker? sticker;

  /// Parse from a json
  factory BusinessIntro.fromJson(Map<String, dynamic> json) => BusinessIntro(
        title: json['title'],
        message: json['message'],
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
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
  /// * [title]: Title text of the intro
  /// * [message]: Message text of the intro
  /// * [sticker]: Greeting sticker of the intro; may be null if none
  BusinessIntro copyWith({
    String? title,
    String? message,
    Sticker? sticker,
  }) =>
      BusinessIntro(
        title: title ?? this.title,
        message: message ?? this.message,
        sticker: sticker ?? this.sticker,
      );

  /// TDLib object type
  static const String defaultObjectId = 'businessIntro';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
