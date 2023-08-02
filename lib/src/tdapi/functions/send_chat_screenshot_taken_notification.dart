part of '../tdapi.dart';

/// **SendChatScreenshotTakenNotification** *(sendChatScreenshotTakenNotification)* - TDLib function
///
/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class SendChatScreenshotTakenNotification extends TdFunction {
  
  /// **SendChatScreenshotTakenNotification** *(sendChatScreenshotTakenNotification)* - TDLib function
  ///
  /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const SendChatScreenshotTakenNotification({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  SendChatScreenshotTakenNotification copyWith({
    int? chatId,
  }) => SendChatScreenshotTakenNotification(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'sendChatScreenshotTakenNotification';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
