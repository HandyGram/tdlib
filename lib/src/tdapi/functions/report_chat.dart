part of '../tdapi.dart';

/// **ReportChat** *(reportChat)* - TDLib function
///
/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported.
///
/// * [chatId]: Chat identifier.
/// * [messageIds]: Identifiers of reported messages; may be empty to report the whole chat. Use messageProperties.can_be_reported to check whether the message can be reported.
/// * [reason]: The reason for reporting the chat.
/// * [text]: Additional report details; 0-1024 characters.
///
/// [Ok] is returned on completion.
final class ReportChat extends TdFunction {
  /// **ReportChat** *(reportChat)* - TDLib function
  ///
  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageIds]: Identifiers of reported messages; may be empty to report the whole chat. Use messageProperties.can_be_reported to check whether the message can be reported.
  /// * [reason]: The reason for reporting the chat.
  /// * [text]: Additional report details; 0-1024 characters.
  ///
  /// [Ok] is returned on completion.
  const ReportChat({
    required this.chatId,
    required this.messageIds,
    required this.reason,
    required this.text,
  });

  /// Chat identifier
  final int chatId;

  /// Identifiers of reported messages; may be empty to report the whole chat. Use messageProperties.can_be_reported to check whether the message can be reported
  final List<int> messageIds;

  /// The reason for reporting the chat
  final ReportReason reason;

  /// Additional report details; 0-1024 characters
  final String text;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "reason": reason.toJson(),
      "text": text,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_ids]: Identifiers of reported messages; may be empty to report the whole chat. Use messageProperties.can_be_reported to check whether the message can be reported
  /// * [reason]: The reason for reporting the chat
  /// * [text]: Additional report details; 0-1024 characters
  ReportChat copyWith({
    int? chatId,
    List<int>? messageIds,
    ReportReason? reason,
    String? text,
  }) =>
      ReportChat(
        chatId: chatId ?? this.chatId,
        messageIds: messageIds ?? this.messageIds,
        reason: reason ?? this.reason,
        text: text ?? this.text,
      );

  /// TDLib object type
  static const String defaultObjectId = 'reportChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
