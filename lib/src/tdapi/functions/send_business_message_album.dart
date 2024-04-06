part of '../tdapi.dart';

/// **SendBusinessMessageAlbum** *(sendBusinessMessageAlbum)* - TDLib function
///
/// Sends 2-10 messages grouped together into an album on behalf of a business account; for bots only. Currently, only audio, document, photo and video messages can be grouped into an album.. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages.
///
/// * [businessConnectionId]: Unique identifier of business connection on behalf of which to send the request.
/// * [chatId]: Target chat.
/// * [replyTo]: Information about the message to be replied; pass null if none *(optional)*.
/// * [disableNotification]: Pass true to disable notification for the message.
/// * [protectContent]: Pass true if the content of the message must be protected from forwarding and saving.
/// * [inputMessageContents]: Contents of messages to be sent. At most 10 messages can be added to an album.
///
/// [BusinessMessages] is returned on completion.
final class SendBusinessMessageAlbum extends TdFunction {
  /// **SendBusinessMessageAlbum** *(sendBusinessMessageAlbum)* - TDLib function
  ///
  /// Sends 2-10 messages grouped together into an album on behalf of a business account; for bots only. Currently, only audio, document, photo and video messages can be grouped into an album.. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages.
  ///
  /// * [businessConnectionId]: Unique identifier of business connection on behalf of which to send the request.
  /// * [chatId]: Target chat.
  /// * [replyTo]: Information about the message to be replied; pass null if none *(optional)*.
  /// * [disableNotification]: Pass true to disable notification for the message.
  /// * [protectContent]: Pass true if the content of the message must be protected from forwarding and saving.
  /// * [inputMessageContents]: Contents of messages to be sent. At most 10 messages can be added to an album.
  ///
  /// [BusinessMessages] is returned on completion.
  const SendBusinessMessageAlbum({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    required this.inputMessageContents,
  });

  /// Unique identifier of business connection on behalf of which to send the request
  final String businessConnectionId;

  /// Target chat
  final int chatId;

  /// Information about the message to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// Pass true to disable notification for the message
  final bool disableNotification;

  /// Pass true if the content of the message must be protected from forwarding and saving
  final bool protectContent;

  /// Contents of messages to be sent. At most 10 messages can be added to an album
  final List<InputMessageContent> inputMessageContents;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "reply_to": replyTo?.toJson(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "input_message_contents":
          inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [business_connection_id]: Unique identifier of business connection on behalf of which to send the request
  /// * [chat_id]: Target chat
  /// * [reply_to]: Information about the message to be replied; pass null if none
  /// * [disable_notification]: Pass true to disable notification for the message
  /// * [protect_content]: Pass true if the content of the message must be protected from forwarding and saving
  /// * [input_message_contents]: Contents of messages to be sent. At most 10 messages can be added to an album
  SendBusinessMessageAlbum copyWith({
    String? businessConnectionId,
    int? chatId,
    InputMessageReplyTo? replyTo,
    bool? disableNotification,
    bool? protectContent,
    List<InputMessageContent>? inputMessageContents,
  }) =>
      SendBusinessMessageAlbum(
        businessConnectionId: businessConnectionId ?? this.businessConnectionId,
        chatId: chatId ?? this.chatId,
        replyTo: replyTo ?? this.replyTo,
        disableNotification: disableNotification ?? this.disableNotification,
        protectContent: protectContent ?? this.protectContent,
        inputMessageContents: inputMessageContents ?? this.inputMessageContents,
      );

  /// TDLib object type
  static const String defaultObjectId = 'sendBusinessMessageAlbum';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
