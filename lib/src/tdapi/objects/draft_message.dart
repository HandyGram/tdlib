part of '../tdapi.dart';

/// **DraftMessage** *(draftMessage)* - basic class
///
/// Contains information about a message draft.
///
/// * [replyToMessageId]: Identifier of the replied message; 0 if none.
/// * [date]: Point in time (Unix timestamp) when the draft was created.
/// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText.
final class DraftMessage extends TdObject {
  
  /// **DraftMessage** *(draftMessage)* - basic class
  ///
  /// Contains information about a message draft.
  ///
  /// * [replyToMessageId]: Identifier of the replied message; 0 if none.
  /// * [date]: Point in time (Unix timestamp) when the draft was created.
  /// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText.
  const DraftMessage({
    required this.replyToMessageId,
    required this.date,
    required this.inputMessageText,
  });
  
  /// Identifier of the replied message; 0 if none
  final int replyToMessageId;

  /// Point in time (Unix timestamp) when the draft was created
  final int date;

  /// Content of the message draft; must be of the type inputMessageText
  final InputMessageContent inputMessageText;
  
  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
    replyToMessageId: json['reply_to_message_id'] ?? 0,
    date: json['date'],
    inputMessageText: InputMessageContent.fromJson(json['input_message_text']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reply_to_message_id": replyToMessageId,
      "date": date,
      "input_message_text": inputMessageText.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reply_to_message_id]: Identifier of the replied message; 0 if none
  /// * [date]: Point in time (Unix timestamp) when the draft was created
  /// * [input_message_text]: Content of the message draft; must be of the type inputMessageText
  DraftMessage copyWith({
    int? replyToMessageId,
    int? date,
    InputMessageContent? inputMessageText,
  }) => DraftMessage(
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    date: date ?? this.date,
    inputMessageText: inputMessageText ?? this.inputMessageText,
  );

  /// TDLib object type
  static const String objectType = 'draftMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
