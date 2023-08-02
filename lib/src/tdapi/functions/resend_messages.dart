part of '../tdapi.dart';

/// **ResendMessages** *(resendMessages)* - TDLib function
///
/// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message.
///
/// * [chatId]: Identifier of the chat to send messages.
/// * [messageIds]: Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order.
///
/// [Messages] is returned on completion.
final class ResendMessages extends TdFunction {
  
  /// **ResendMessages** *(resendMessages)* - TDLib function
  ///
  /// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message.
  ///
  /// * [chatId]: Identifier of the chat to send messages.
  /// * [messageIds]: Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order.
  ///
  /// [Messages] is returned on completion.
  const ResendMessages({
    required this.chatId,
    required this.messageIds,
  });
  
  /// Identifier of the chat to send messages
  final int chatId;

  /// Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
  final List<int> messageIds;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to send messages
  /// * [message_ids]: Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
  ResendMessages copyWith({
    int? chatId,
    List<int>? messageIds,
  }) => ResendMessages(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
  );

  /// TDLib object type
  static const String objectType = 'resendMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
