part of '../tdapi.dart';

/// **GetWebPageInstantView** *(getWebPageInstantView)* - TDLib function
///
/// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
///
/// * [url]: The web page URL.
/// * [forceFull]: Pass true to get full instant view for the web page.
///
/// [WebPageInstantView] is returned on completion.
final class GetWebPageInstantView extends TdFunction {
  /// **GetWebPageInstantView** *(getWebPageInstantView)* - TDLib function
  ///
  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
  ///
  /// * [url]: The web page URL.
  /// * [forceFull]: Pass true to get full instant view for the web page.
  ///
  /// [WebPageInstantView] is returned on completion.
  const GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });

  /// The web page URL
  final String url;

  /// Pass true to get full instant view for the web page
  final bool forceFull;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "url": url,
      "force_full": forceFull,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: The web page URL
  /// * [force_full]: Pass true to get full instant view for the web page
  GetWebPageInstantView copyWith({
    String? url,
    bool? forceFull,
  }) =>
      GetWebPageInstantView(
        url: url ?? this.url,
        forceFull: forceFull ?? this.forceFull,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getWebPageInstantView';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
