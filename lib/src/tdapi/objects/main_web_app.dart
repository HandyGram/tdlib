part of '../tdapi.dart';

/// **MainWebApp** *(mainWebApp)* - basic class
///
/// Contains information about the main Web App of a bot.
///
/// * [url]: URL of the Web App to open.
/// * [isCompact]: True, if the Web App must always be opened in the compact mode instead of the full-size mode.
final class MainWebApp extends TdObject {
  /// **MainWebApp** *(mainWebApp)* - basic class
  ///
  /// Contains information about the main Web App of a bot.
  ///
  /// * [url]: URL of the Web App to open.
  /// * [isCompact]: True, if the Web App must always be opened in the compact mode instead of the full-size mode.
  const MainWebApp({
    required this.url,
    required this.isCompact,
    this.extra,
    this.clientId,
  });

  /// URL of the Web App to open
  final String url;

  /// True, if the Web App must always be opened in the compact mode instead of the full-size mode
  final bool isCompact;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory MainWebApp.fromJson(Map<String, dynamic> json) => MainWebApp(
        url: json['url'],
        isCompact: json['is_compact'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "url": url,
      "is_compact": isCompact,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: URL of the Web App to open
  /// * [is_compact]: True, if the Web App must always be opened in the compact mode instead of the full-size mode
  MainWebApp copyWith({
    String? url,
    bool? isCompact,
    dynamic extra,
    int? clientId,
  }) =>
      MainWebApp(
        url: url ?? this.url,
        isCompact: isCompact ?? this.isCompact,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'mainWebApp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
