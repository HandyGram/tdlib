part of '../tdapi.dart';

/// **SentWebAppMessage** *(sentWebAppMessage)* - basic class
///
/// Information about the message sent by answerWebAppQuery.
///
/// * [inlineMessageId]: Identifier of the sent inline message, if known.
final class SentWebAppMessage extends TdObject {
  
  /// **SentWebAppMessage** *(sentWebAppMessage)* - basic class
  ///
  /// Information about the message sent by answerWebAppQuery.
  ///
  /// * [inlineMessageId]: Identifier of the sent inline message, if known.
  const SentWebAppMessage({
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) => SentWebAppMessage(
    inlineMessageId: json['inline_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "inline_message_id": inlineMessageId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [inline_message_id]: Identifier of the sent inline message, if known
  SentWebAppMessage copyWith({
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) => SentWebAppMessage(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'sentWebAppMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
