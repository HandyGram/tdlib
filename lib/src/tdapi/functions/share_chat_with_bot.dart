part of '../tdapi.dart';

/// **ShareChatWithBot** *(shareChatWithBot)* - TDLib function
///
/// Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot.
///
/// * [chatId]: Identifier of the chat with the bot.
/// * [messageId]: Identifier of the message with the button.
/// * [buttonId]: Identifier of the button.
/// * [sharedChatId]: Identifier of the shared chat.
/// * [onlyCheck]: Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions.. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat.. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights.
///
/// [Ok] is returned on completion.
final class ShareChatWithBot extends TdFunction {
  /// **ShareChatWithBot** *(shareChatWithBot)* - TDLib function
  ///
  /// Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot.
  ///
  /// * [chatId]: Identifier of the chat with the bot.
  /// * [messageId]: Identifier of the message with the button.
  /// * [buttonId]: Identifier of the button.
  /// * [sharedChatId]: Identifier of the shared chat.
  /// * [onlyCheck]: Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions.. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat.. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights.
  ///
  /// [Ok] is returned on completion.
  const ShareChatWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedChatId,
    required this.onlyCheck,
  });

  /// Identifier of the chat with the bot
  final int chatId;

  /// Identifier of the message with the button
  final int messageId;

  /// Identifier of the button
  final int buttonId;

  /// Identifier of the shared chat
  final int sharedChatId;

  /// Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions.. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat.. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights
  final bool onlyCheck;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_chat_id": sharedChatId,
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
  /// * [shared_chat_id]: Identifier of the shared chat
  /// * [only_check]: Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions.. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat.. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights
  ShareChatWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    int? sharedChatId,
    bool? onlyCheck,
  }) =>
      ShareChatWithBot(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        buttonId: buttonId ?? this.buttonId,
        sharedChatId: sharedChatId ?? this.sharedChatId,
        onlyCheck: onlyCheck ?? this.onlyCheck,
      );

  /// TDLib object type
  static const String defaultObjectId = 'shareChatWithBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
