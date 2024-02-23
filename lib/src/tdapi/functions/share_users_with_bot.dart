part of '../tdapi.dart';

/// **ShareUsersWithBot** *(shareUsersWithBot)* - TDLib function
///
/// Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot.
///
/// * [chatId]: Identifier of the chat with the bot.
/// * [messageId]: Identifier of the message with the button.
/// * [buttonId]: Identifier of the button.
/// * [sharedUserIds]: Identifiers of the shared users.
/// * [onlyCheck]: Pass true to check that the users can be shared by the button instead of actually sharing them.
///
/// [Ok] is returned on completion.
final class ShareUsersWithBot extends TdFunction {
  
  /// **ShareUsersWithBot** *(shareUsersWithBot)* - TDLib function
  ///
  /// Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot.
  ///
  /// * [chatId]: Identifier of the chat with the bot.
  /// * [messageId]: Identifier of the message with the button.
  /// * [buttonId]: Identifier of the button.
  /// * [sharedUserIds]: Identifiers of the shared users.
  /// * [onlyCheck]: Pass true to check that the users can be shared by the button instead of actually sharing them.
  ///
  /// [Ok] is returned on completion.
  const ShareUsersWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserIds,
    required this.onlyCheck,
  });
  
  /// Identifier of the chat with the bot
  final int chatId;

  /// Identifier of the message with the button
  final int messageId;

  /// Identifier of the button
  final int buttonId;

  /// Identifiers of the shared users
  final List<int> sharedUserIds;

  /// Pass true to check that the users can be shared by the button instead of actually sharing them
  final bool onlyCheck;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_user_ids": sharedUserIds.map((i) => i).toList(),
      "only_check": onlyCheck,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat with the bot
  /// * [message_id]: Identifier of the message with the button
  /// * [button_id]: Identifier of the button
  /// * [shared_user_ids]: Identifiers of the shared users
  /// * [only_check]: Pass true to check that the users can be shared by the button instead of actually sharing them
  ShareUsersWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    List<int>? sharedUserIds,
    bool? onlyCheck,
  }) => ShareUsersWithBot(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
    sharedUserIds: sharedUserIds ?? this.sharedUserIds,
    onlyCheck: onlyCheck ?? this.onlyCheck,
  );

  /// TDLib object type
  static const String objectType = 'shareUsersWithBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
