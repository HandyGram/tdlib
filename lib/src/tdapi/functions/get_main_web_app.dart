part of '../tdapi.dart';

/// **GetMainWebApp** *(getMainWebApp)* - TDLib function
///
/// Returns information needed to open the main Web App of a bot.
///
/// * [chatId]: Identifier of the chat in which the Web App is opened; pass 0 if none.
/// * [botUserId]: Identifier of the target bot.
/// * [startParameter]: Start parameter from internalLinkTypeMainWebApp.
/// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
/// * [applicationName]: Short name of the current application; 0-64 English letters, digits, and underscores.
///
/// [MainWebApp] is returned on completion.
final class GetMainWebApp extends TdFunction {
  /// **GetMainWebApp** *(getMainWebApp)* - TDLib function
  ///
  /// Returns information needed to open the main Web App of a bot.
  ///
  /// * [chatId]: Identifier of the chat in which the Web App is opened; pass 0 if none.
  /// * [botUserId]: Identifier of the target bot.
  /// * [startParameter]: Start parameter from internalLinkTypeMainWebApp.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the current application; 0-64 English letters, digits, and underscores.
  ///
  /// [MainWebApp] is returned on completion.
  const GetMainWebApp({
    required this.chatId,
    required this.botUserId,
    required this.startParameter,
    this.theme,
    required this.applicationName,
  });

  /// Identifier of the chat in which the Web App is opened; pass 0 if none
  final int chatId;

  /// Identifier of the target bot
  final int botUserId;

  /// Start parameter from internalLinkTypeMainWebApp
  final String startParameter;

  /// Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// Short name of the current application; 0-64 English letters, digits, and underscores
  final String applicationName;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "start_parameter": startParameter,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat in which the Web App is opened; pass 0 if none
  /// * [bot_user_id]: Identifier of the target bot
  /// * [start_parameter]: Start parameter from internalLinkTypeMainWebApp
  /// * [theme]: Preferred Web App theme; pass null to use the default theme
  /// * [application_name]: Short name of the current application; 0-64 English letters, digits, and underscores
  GetMainWebApp copyWith({
    int? chatId,
    int? botUserId,
    String? startParameter,
    ThemeParameters? theme,
    String? applicationName,
  }) =>
      GetMainWebApp(
        chatId: chatId ?? this.chatId,
        botUserId: botUserId ?? this.botUserId,
        startParameter: startParameter ?? this.startParameter,
        theme: theme ?? this.theme,
        applicationName: applicationName ?? this.applicationName,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getMainWebApp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
