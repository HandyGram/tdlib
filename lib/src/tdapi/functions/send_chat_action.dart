part of '../tdapi.dart';

/// **SendChatAction** *(sendChatAction)* - TDLib function
///
/// Sends a notification about user activity in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
/// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
///
/// [Ok] is returned on completion.
final class SendChatAction extends TdFunction {
  
  /// **SendChatAction** *(sendChatAction)* - TDLib function
  ///
  /// Sends a notification about user activity in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
  /// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    this.action,
  });
  
  /// Chat identifier 
  final int chatId;

  /// If not 0, a message thread identifier in which the action was performed 
  final int messageThreadId;

  /// The action description; pass null to cancel the currently active action
  final ChatAction? action;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "action": action?.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier 
  /// * [message_thread_id]: If not 0, a message thread identifier in which the action was performed 
  /// * [action]: The action description; pass null to cancel the currently active action
  SendChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    ChatAction? action,
  }) => SendChatAction(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    action: action ?? this.action,
  );

  /// TDLib object type
  static const String objectType = 'sendChatAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
