part of '../tdapi.dart';

/// **SearchEmojis** *(searchEmojis)* - TDLib function
///
/// Searches for emojis by keywords. Supported only if the file database is enabled.
///
/// * [text]: Text to search for.
/// * [exactMatch]: Pass true if only emojis, which exactly match the text, needs to be returned.
/// * [inputLanguageCodes]: List of possible IETF language tags of the user's input language; may be empty if unknown.
///
/// [Emojis] is returned on completion.
final class SearchEmojis extends TdFunction {
  
  /// **SearchEmojis** *(searchEmojis)* - TDLib function
  ///
  /// Searches for emojis by keywords. Supported only if the file database is enabled.
  ///
  /// * [text]: Text to search for.
  /// * [exactMatch]: Pass true if only emojis, which exactly match the text, needs to be returned.
  /// * [inputLanguageCodes]: List of possible IETF language tags of the user's input language; may be empty if unknown.
  ///
  /// [Emojis] is returned on completion.
  const SearchEmojis({
    required this.text,
    required this.exactMatch,
    required this.inputLanguageCodes,
  });
  
  /// Text to search for
  final String text;

  /// Pass true if only emojis, which exactly match the text, needs to be returned
  final bool exactMatch;

  /// List of possible IETF language tags of the user's input language; may be empty if unknown
  final List<String> inputLanguageCodes;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text,
      "exact_match": exactMatch,
      "input_language_codes": inputLanguageCodes.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Text to search for
  /// * [exact_match]: Pass true if only emojis, which exactly match the text, needs to be returned
  /// * [input_language_codes]: List of possible IETF language tags of the user's input language; may be empty if unknown
  SearchEmojis copyWith({
    String? text,
    bool? exactMatch,
    List<String>? inputLanguageCodes,
  }) => SearchEmojis(
    text: text ?? this.text,
    exactMatch: exactMatch ?? this.exactMatch,
    inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes,
  );

  /// TDLib object type
  static const String objectType = 'searchEmojis';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
