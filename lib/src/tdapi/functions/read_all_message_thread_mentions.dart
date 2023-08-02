part of '../tdapi.dart';

/// **ReadAllMessageThreadMentions** *(readAllMessageThreadMentions)* - TDLib function
///
/// Marks all mentions in a forum topic as read.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: Message thread identifier in which mentions are marked as read.
///
/// [Ok] is returned on completion.
final class ReadAllMessageThreadMentions extends TdFunction {
  
  /// **ReadAllMessageThreadMentions** *(readAllMessageThreadMentions)* - TDLib function
  ///
  /// Marks all mentions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which mentions are marked as read.
  ///
  /// [Ok] is returned on completion.
  const ReadAllMessageThreadMentions({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message thread identifier in which mentions are marked as read
  final int messageThreadId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier 
  /// * [message_thread_id]: Message thread identifier in which mentions are marked as read
  ReadAllMessageThreadMentions copyWith({
    int? chatId,
    int? messageThreadId,
  }) => ReadAllMessageThreadMentions(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  /// TDLib object type
  static const String objectType = 'readAllMessageThreadMentions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
