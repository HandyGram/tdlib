part of '../tdapi.dart';

/// **DraftMessage** *(draftMessage)* - basic class
///
/// Contains information about a message draft.
///
/// * [replyTo]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the draft was created.
/// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote.
/// * [effectId]: Identifier of the effect to apply to the message when it is sent; 0 if none.
final class DraftMessage extends TdObject {
  /// **DraftMessage** *(draftMessage)* - basic class
  ///
  /// Contains information about a message draft.
  ///
  /// * [replyTo]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the draft was created.
  /// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote.
  /// * [effectId]: Identifier of the effect to apply to the message when it is sent; 0 if none.
  const DraftMessage({
    this.replyTo,
    required this.date,
    required this.inputMessageText,
    required this.effectId,
  });

  /// Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
  final InputMessageReplyTo? replyTo;

  /// Point in time (Unix timestamp) when the draft was created
  final int date;

  /// Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
  final InputMessageContent inputMessageText;

  /// Identifier of the effect to apply to the message when it is sent; 0 if none
  final int effectId;

  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
        replyTo: json['reply_to'] == null
            ? null
            : InputMessageReplyTo.fromJson(json['reply_to']),
        date: json['date'],
        inputMessageText:
            InputMessageContent.fromJson(json['input_message_text']),
        effectId: json['effect_id'] is int
            ? json['effect_id']
            : int.tryParse(json['effect_id'] ?? "") ?? 0,
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "reply_to": replyTo?.toJson(),
      "date": date,
      "input_message_text": inputMessageText.toJson(),
      "effect_id": effectId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reply_to]: Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
  /// * [date]: Point in time (Unix timestamp) when the draft was created
  /// * [input_message_text]: Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
  /// * [effect_id]: Identifier of the effect to apply to the message when it is sent; 0 if none
  DraftMessage copyWith({
    InputMessageReplyTo? replyTo,
    int? date,
    InputMessageContent? inputMessageText,
    int? effectId,
  }) =>
      DraftMessage(
        replyTo: replyTo ?? this.replyTo,
        date: date ?? this.date,
        inputMessageText: inputMessageText ?? this.inputMessageText,
        effectId: effectId ?? this.effectId,
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
