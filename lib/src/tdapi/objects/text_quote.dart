part of '../tdapi.dart';

/// **TextQuote** *(textQuote)* - basic class
///
/// Describes manually or automatically chosen quote from another message.
///
/// * [text]: Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text.
/// * [position]: Approximate quote position in the original message in UTF-16 code units as specified by the message sender.
/// * [isManual]: True, if the quote was manually chosen by the message sender.
final class TextQuote extends TdObject {
  
  /// **TextQuote** *(textQuote)* - basic class
  ///
  /// Describes manually or automatically chosen quote from another message.
  ///
  /// * [text]: Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text.
  /// * [position]: Approximate quote position in the original message in UTF-16 code units as specified by the message sender.
  /// * [isManual]: True, if the quote was manually chosen by the message sender.
  const TextQuote({
    required this.text,
    required this.position,
    required this.isManual,
  });
  
  /// Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text
  final FormattedText text;

  /// Approximate quote position in the original message in UTF-16 code units as specified by the message sender
  final int position;

  /// True, if the quote was manually chosen by the message sender
  final bool isManual;
  
  /// Parse from a json
  factory TextQuote.fromJson(Map<String, dynamic> json) => TextQuote(
    text: FormattedText.fromJson(json['text']),
    position: json['position'],
    isManual: json['is_manual'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text.toJson(),
      "position": position,
      "is_manual": isManual,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text
  /// * [position]: Approximate quote position in the original message in UTF-16 code units as specified by the message sender
  /// * [is_manual]: True, if the quote was manually chosen by the message sender
  TextQuote copyWith({
    FormattedText? text,
    int? position,
    bool? isManual,
  }) => TextQuote(
    text: text ?? this.text,
    position: position ?? this.position,
    isManual: isManual ?? this.isManual,
  );

  /// TDLib object type
  static const String defaultObjectId = 'textQuote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
