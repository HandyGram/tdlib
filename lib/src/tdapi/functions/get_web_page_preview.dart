part of '../tdapi.dart';

/// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
///
/// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
///
/// * [text]: Message text with formatting.
///
/// [WebPage] is returned on completion.
final class GetWebPagePreview extends TdFunction {
  
  /// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
  ///
  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
  ///
  /// * [text]: Message text with formatting.
  ///
  /// [WebPage] is returned on completion.
  const GetWebPagePreview({
    required this.text,
  });
  
  /// Message text with formatting
  final FormattedText text;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Message text with formatting
  GetWebPagePreview copyWith({
    FormattedText? text,
  }) => GetWebPagePreview(
    text: text ?? this.text,
  );

  /// TDLib object type
  static const String objectType = 'getWebPagePreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
