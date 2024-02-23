part of '../tdapi.dart';

/// **SetChatDraftMessage** *(setChatDraftMessage)* - TDLib function
///
/// Changes the draft message in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, the message thread identifier in which the draft was changed.
/// * [draftMessage]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored *(optional)*.
///
/// [Ok] is returned on completion.
final class SetChatDraftMessage extends TdFunction {
  
  /// **SetChatDraftMessage** *(setChatDraftMessage)* - TDLib function
  ///
  /// Changes the draft message in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, the message thread identifier in which the draft was changed.
  /// * [draftMessage]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetChatDraftMessage({
    required this.chatId,
    required this.messageThreadId,
    this.draftMessage,
  });
  
  /// Chat identifier
  final int chatId;

  /// If not 0, the message thread identifier in which the draft was changed
  final int messageThreadId;

  /// New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
  final DraftMessage? draftMessage;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "draft_message": draftMessage?.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [message_thread_id]: If not 0, the message thread identifier in which the draft was changed
  /// * [draft_message]: New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
  SetChatDraftMessage copyWith({
    int? chatId,
    int? messageThreadId,
    DraftMessage? draftMessage,
  }) => SetChatDraftMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    draftMessage: draftMessage ?? this.draftMessage,
  );

  /// TDLib object type
  static const String objectType = 'setChatDraftMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
