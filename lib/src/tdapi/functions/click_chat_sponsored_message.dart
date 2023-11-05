part of '../tdapi.dart';

/// **ClickChatSponsoredMessage** *(clickChatSponsoredMessage)* - TDLib function
///
/// Informs TDLib that the user opened the sponsored chat via the button, the name, the photo, or a mention in the sponsored message.
///
/// * [chatId]: Chat identifier of the sponsored message.
/// * [messageId]: Identifier of the sponsored message.
///
/// [Ok] is returned on completion.
final class ClickChatSponsoredMessage extends TdFunction {
  
  /// **ClickChatSponsoredMessage** *(clickChatSponsoredMessage)* - TDLib function
  ///
  /// Informs TDLib that the user opened the sponsored chat via the button, the name, the photo, or a mention in the sponsored message.
  ///
  /// * [chatId]: Chat identifier of the sponsored message.
  /// * [messageId]: Identifier of the sponsored message.
  ///
  /// [Ok] is returned on completion.
  const ClickChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier of the sponsored message
  final int chatId;

  /// Identifier of the sponsored message
  final int messageId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier of the sponsored message
  /// * [message_id]: Identifier of the sponsored message
  ClickChatSponsoredMessage copyWith({
    int? chatId,
    int? messageId,
  }) => ClickChatSponsoredMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  /// TDLib object type
  static const String objectType = 'clickChatSponsoredMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
