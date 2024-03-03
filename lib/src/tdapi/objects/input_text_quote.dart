part of '../tdapi.dart';

/// **InputTextQuote** *(inputTextQuote)* - basic class
///
/// Describes manually chosen quote from another message.
///
/// * [text]: Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote.
/// * [position]: Quote position in the original message in UTF-16 code units.
final class InputTextQuote extends TdObject {
  /// **InputTextQuote** *(inputTextQuote)* - basic class
  ///
  /// Describes manually chosen quote from another message.
  ///
  /// * [text]: Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote.
  /// * [position]: Quote position in the original message in UTF-16 code units.
  const InputTextQuote({
    required this.text,
    required this.position,
  });

  /// Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote
  final FormattedText text;

  /// Quote position in the original message in UTF-16 code units
  final int position;

  /// Parse from a json
  factory InputTextQuote.fromJson(Map<String, dynamic> json) => InputTextQuote(
        text: FormattedText.fromJson(json['text']),
        position: json['position'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "position": position,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote
  /// * [position]: Quote position in the original message in UTF-16 code units
  InputTextQuote copyWith({
    FormattedText? text,
    int? position,
  }) =>
      InputTextQuote(
        text: text ?? this.text,
        position: position ?? this.position,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputTextQuote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
