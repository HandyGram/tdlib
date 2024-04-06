part of '../tdapi.dart';

/// **SendChatAction** *(sendChatAction)* - TDLib function
///
/// Sends a notification about user activity in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, the message thread identifier in which the action was performed.
/// * [businessConnectionId]: Unique identifier of business connection on behalf of which to send the request; for bots only.
/// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
///
/// [Ok] is returned on completion.
final class SendChatAction extends TdFunction {
  /// **SendChatAction** *(sendChatAction)* - TDLib function
  ///
  /// Sends a notification about user activity in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, the message thread identifier in which the action was performed.
  /// * [businessConnectionId]: Unique identifier of business connection on behalf of which to send the request; for bots only.
  /// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.businessConnectionId,
    this.action,
  });

  /// Chat identifier
  final int chatId;

  /// If not 0, the message thread identifier in which the action was performed
  final int messageThreadId;

  /// Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// The action description; pass null to cancel the currently active action
  final ChatAction? action;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "business_connection_id": businessConnectionId,
      "action": action?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: If not 0, the message thread identifier in which the action was performed
  /// * [business_connection_id]: Unique identifier of business connection on behalf of which to send the request; for bots only
  /// * [action]: The action description; pass null to cancel the currently active action
  SendChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    String? businessConnectionId,
    ChatAction? action,
  }) =>
      SendChatAction(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        businessConnectionId: businessConnectionId ?? this.businessConnectionId,
        action: action ?? this.action,
      );

  /// TDLib object type
  static const String defaultObjectId = 'sendChatAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
