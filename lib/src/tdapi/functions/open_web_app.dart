part of '../tdapi.dart';

/// **OpenWebApp** *(openWebApp)* - TDLib function
///
/// Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert about data sent to the bot must be shown once.
///
/// * [chatId]: Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats.
/// * [botUserId]: Identifier of the bot, providing the Web App.
/// * [url]: The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise.
/// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
/// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
/// * [messageThreadId]: If not 0, the message thread identifier in which the message will be sent.
/// * [replyTo]: Information about the message or story to be replied in the message sent by the Web App; pass null if none *(optional)*.
///
/// [WebAppInfo] is returned on completion.
final class OpenWebApp extends TdFunction {
  
  /// **OpenWebApp** *(openWebApp)* - TDLib function
  ///
  /// Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert about data sent to the bot must be shown once.
  ///
  /// * [chatId]: Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats.
  /// * [botUserId]: Identifier of the bot, providing the Web App.
  /// * [url]: The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
  /// * [messageThreadId]: If not 0, the message thread identifier in which the message will be sent.
  /// * [replyTo]: Information about the message or story to be replied in the message sent by the Web App; pass null if none *(optional)*.
  ///
  /// [WebAppInfo] is returned on completion.
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
    required this.messageThreadId,
    this.replyTo,
  });
  
  /// Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats
  final int chatId;

  /// Identifier of the bot, providing the Web App
  final int botUserId;

  /// The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
  final String url;

  /// Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;

  /// If not 0, the message thread identifier in which the message will be sent
  final int messageThreadId;

  /// Information about the message or story to be replied in the message sent by the Web App; pass null if none
  final InputMessageReplyTo? replyTo;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "url": url,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats
  /// * [bot_user_id]: Identifier of the bot, providing the Web App
  /// * [url]: The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
  /// * [theme]: Preferred Web App theme; pass null to use the default theme
  /// * [application_name]: Short name of the application; 0-64 English letters, digits, and underscores
  /// * [message_thread_id]: If not 0, the message thread identifier in which the message will be sent
  /// * [reply_to]: Information about the message or story to be replied in the message sent by the Web App; pass null if none
  OpenWebApp copyWith({
    int? chatId,
    int? botUserId,
    String? url,
    ThemeParameters? theme,
    String? applicationName,
    int? messageThreadId,
    InputMessageReplyTo? replyTo,
  }) => OpenWebApp(
    chatId: chatId ?? this.chatId,
    botUserId: botUserId ?? this.botUserId,
    url: url ?? this.url,
    theme: theme ?? this.theme,
    applicationName: applicationName ?? this.applicationName,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyTo: replyTo ?? this.replyTo,
  );

  /// TDLib object type
  static const String defaultObjectId = 'openWebApp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
