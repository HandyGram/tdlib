part of '../tdapi.dart';

/// **GetWebAppUrl** *(getWebAppUrl)* - TDLib function
///
/// Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, an inlineQueryResultsButtonTypeWebApp button, or an internalLinkTypeSideMenuBot link.
///
/// * [botUserId]: Identifier of the target bot.
/// * [url]: The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot link, or an empty when the bot is opened from the side menu.
/// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
/// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
///
/// [HttpUrl] is returned on completion.
final class GetWebAppUrl extends TdFunction {
  
  /// **GetWebAppUrl** *(getWebAppUrl)* - TDLib function
  ///
  /// Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, an inlineQueryResultsButtonTypeWebApp button, or an internalLinkTypeSideMenuBot link.
  ///
  /// * [botUserId]: Identifier of the target bot.
  /// * [url]: The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot link, or an empty when the bot is opened from the side menu.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
  ///
  /// [HttpUrl] is returned on completion.
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
  });
  
  /// Identifier of the target bot
  final int botUserId;

  /// The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot link, or an empty when the bot is opened from the side menu
  final String url;

  /// Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "url": url,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: Identifier of the target bot
  /// * [url]: The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot link, or an empty when the bot is opened from the side menu
  /// * [theme]: Preferred Web App theme; pass null to use the default theme
  /// * [application_name]: Short name of the application; 0-64 English letters, digits, and underscores
  GetWebAppUrl copyWith({
    int? botUserId,
    String? url,
    ThemeParameters? theme,
    String? applicationName,
  }) => GetWebAppUrl(
    botUserId: botUserId ?? this.botUserId,
    url: url ?? this.url,
    theme: theme ?? this.theme,
    applicationName: applicationName ?? this.applicationName,
  );

  /// TDLib object type
  static const String objectType = 'getWebAppUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
