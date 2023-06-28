part of '../tdapi.dart';

/// **ShareUserWithBot** *(shareUserWithBot)* - TDLib function
///
/// Shares a user after pressing a keyboardButtonTypeRequestUser button with the bot.
///
/// * [chatId]: Identifier of the chat with the bot.
/// * [messageId]: Identifier of the message with the button.
/// * [buttonId]: Identifier of the button.
/// * [sharedUserId]: Identifier of the shared user.
/// * [onlyCheck]: Pass true to check that the user can be shared by the button instead of actually sharing them.
///
/// [Ok] is returned on completion.
final class ShareUserWithBot extends TdFunction {
  
  /// **ShareUserWithBot** *(shareUserWithBot)* - TDLib function
  ///
  /// Shares a user after pressing a keyboardButtonTypeRequestUser button with the bot.
  ///
  /// * [chatId]: Identifier of the chat with the bot.
  /// * [messageId]: Identifier of the message with the button.
  /// * [buttonId]: Identifier of the button.
  /// * [sharedUserId]: Identifier of the shared user.
  /// * [onlyCheck]: Pass true to check that the user can be shared by the button instead of actually sharing them.
  ///
  /// [Ok] is returned on completion.
  const ShareUserWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserId,
    required this.onlyCheck,
  });
  
  /// Identifier of the chat with the bot
  final int chatId;

  /// Identifier of the message with the button
  final int messageId;

  /// Identifier of the button
  final int buttonId;

  /// Identifier of the shared user
  final int sharedUserId;

  /// Pass true to check that the user can be shared by the button instead of actually sharing them
  final bool onlyCheck;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_user_id": sharedUserId,
      "only_check": onlyCheck,
      "@extra": extra,
		};
	}

  
  ShareUserWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    int? sharedUserId,
    bool? onlyCheck,
  }) => ShareUserWithBot(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
    sharedUserId: sharedUserId ?? this.sharedUserId,
    onlyCheck: onlyCheck ?? this.onlyCheck,
  );

  static const String objectType = 'shareUserWithBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
