part of '../tdapi.dart';

/// **SendMessageAlbum** *(sendMessageAlbum)* - TDLib function
///
/// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages.
///
/// * [chatId]: Target chat.
/// * [messageThreadId]: If not 0, the message thread identifier in which the messages will be sent.
/// * [replyTo]: Information about the message or story to be replied; pass null if none *(optional)*.
/// * [options]: Options to be used to send the messages; pass null to use default options *(optional)*.
/// * [inputMessageContents]: Contents of messages to be sent. At most 10 messages can be added to an album.
///
/// [Messages] is returned on completion.
final class SendMessageAlbum extends TdFunction {
  
  /// **SendMessageAlbum** *(sendMessageAlbum)* - TDLib function
  ///
  /// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages.
  ///
  /// * [chatId]: Target chat.
  /// * [messageThreadId]: If not 0, the message thread identifier in which the messages will be sent.
  /// * [replyTo]: Information about the message or story to be replied; pass null if none *(optional)*.
  /// * [options]: Options to be used to send the messages; pass null to use default options *(optional)*.
  /// * [inputMessageContents]: Contents of messages to be sent. At most 10 messages can be added to an album.
  ///
  /// [Messages] is returned on completion.
  const SendMessageAlbum({
    required this.chatId,
    required this.messageThreadId,
    this.replyTo,
    this.options,
    required this.inputMessageContents,
  });
  
  /// Target chat
  final int chatId;

  /// If not 0, the message thread identifier in which the messages will be sent
  final int messageThreadId;

  /// Information about the message or story to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// Options to be used to send the messages; pass null to use default options
  final MessageSendOptions? options;

  /// Contents of messages to be sent. At most 10 messages can be added to an album
  final List<InputMessageContent> inputMessageContents;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
      "options": options?.toJson(),
      "input_message_contents": inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Target chat
  /// * [message_thread_id]: If not 0, the message thread identifier in which the messages will be sent
  /// * [reply_to]: Information about the message or story to be replied; pass null if none
  /// * [options]: Options to be used to send the messages; pass null to use default options
  /// * [input_message_contents]: Contents of messages to be sent. At most 10 messages can be added to an album
  SendMessageAlbum copyWith({
    int? chatId,
    int? messageThreadId,
    InputMessageReplyTo? replyTo,
    MessageSendOptions? options,
    List<InputMessageContent>? inputMessageContents,
  }) => SendMessageAlbum(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyTo: replyTo ?? this.replyTo,
    options: options ?? this.options,
    inputMessageContents: inputMessageContents ?? this.inputMessageContents,
  );

  /// TDLib object type
  static const String objectType = 'sendMessageAlbum';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
