part of '../tdapi.dart';

/// **SetChatTheme** *(setChatTheme)* - TDLib function
///
/// Changes the chat theme. Supported only in private and secret chats.
///
/// * [chatId]: Chat identifier.
/// * [themeName]: Name of the new chat theme; pass an empty string to return the default theme.
///
/// [Ok] is returned on completion.
final class SetChatTheme extends TdFunction {
  /// **SetChatTheme** *(setChatTheme)* - TDLib function
  ///
  /// Changes the chat theme. Supported only in private and secret chats.
  ///
  /// * [chatId]: Chat identifier.
  /// * [themeName]: Name of the new chat theme; pass an empty string to return the default theme.
  ///
  /// [Ok] is returned on completion.
  const SetChatTheme({
    required this.chatId,
    required this.themeName,
  });

  /// Chat identifier
  final int chatId;

  /// Name of the new chat theme; pass an empty string to return the default theme
  final String themeName;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "theme_name": themeName,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [theme_name]: Name of the new chat theme; pass an empty string to return the default theme
  SetChatTheme copyWith({
    int? chatId,
    String? themeName,
  }) =>
      SetChatTheme(
        chatId: chatId ?? this.chatId,
        themeName: themeName ?? this.themeName,
      );

  /// TDLib object type
  static const String defaultObjectId = 'setChatTheme';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
