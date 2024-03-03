part of '../tdapi.dart';

/// **DraftMessage** *(draftMessage)* - basic class
///
/// Contains information about a message draft.
///
/// * [replyTo]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the draft was created.
/// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote.
final class DraftMessage extends TdObject {
  /// **DraftMessage** *(draftMessage)* - basic class
  ///
  /// Contains information about a message draft.
  ///
  /// * [replyTo]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the draft was created.
  /// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote.
  const DraftMessage({
    this.replyTo,
    required this.date,
    required this.inputMessageText,
  });

  /// Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
  final InputMessageReplyTo? replyTo;

  /// Point in time (Unix timestamp) when the draft was created
  final int date;

  /// Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
  final InputMessageContent inputMessageText;

  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
        replyTo: json['reply_to'] == null
            ? null
            : InputMessageReplyTo.fromJson(json['reply_to']),
        date: json['date'],
        inputMessageText:
            InputMessageContent.fromJson(json['input_message_text']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "reply_to": replyTo?.toJson(),
      "date": date,
      "input_message_text": inputMessageText.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reply_to]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
  /// * [date]: Point in time (Unix timestamp) when the draft was created
  /// * [input_message_text]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
  DraftMessage copyWith({
    InputMessageReplyTo? replyTo,
    int? date,
    InputMessageContent? inputMessageText,
  }) =>
      DraftMessage(
        replyTo: replyTo ?? this.replyTo,
        date: date ?? this.date,
        inputMessageText: inputMessageText ?? this.inputMessageText,
      );

  /// TDLib object type
  static const String defaultObjectId = 'draftMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
