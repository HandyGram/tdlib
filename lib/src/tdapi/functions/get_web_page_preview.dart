part of '../tdapi.dart';

/// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
///
/// Returns a link preview by the text of a message. Do not call this function too often. Returns a 404 error if the text has no link preview.
///
/// * [text]: Message text with formatting.
/// * [linkPreviewOptions]: Options to be used for generation of the link preview; pass null to use default link preview options *(optional)*.
///
/// [WebPage] is returned on completion.
final class GetWebPagePreview extends TdFunction {
  /// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
  ///
  /// Returns a link preview by the text of a message. Do not call this function too often. Returns a 404 error if the text has no link preview.
  ///
  /// * [text]: Message text with formatting.
  /// * [linkPreviewOptions]: Options to be used for generation of the link preview; pass null to use default link preview options *(optional)*.
  ///
  /// [WebPage] is returned on completion.
  const GetWebPagePreview({
    required this.text,
    this.linkPreviewOptions,
  });

  /// Message text with formatting
  final FormattedText text;

  /// Options to be used for generation of the link preview; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Message text with formatting
  /// * [link_preview_options]: Options to be used for generation of the link preview; pass null to use default link preview options
  GetWebPagePreview copyWith({
    FormattedText? text,
    LinkPreviewOptions? linkPreviewOptions,
  }) =>
      GetWebPagePreview(
        text: text ?? this.text,
        linkPreviewOptions: linkPreviewOptions ?? this.linkPreviewOptions,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getWebPagePreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
