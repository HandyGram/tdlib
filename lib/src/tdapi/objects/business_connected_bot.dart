part of '../tdapi.dart';

/// **BusinessConnectedBot** *(businessConnectedBot)* - basic class
///
/// Describes a bot connected to a business account.
///
/// * [botUserId]: User identifier of the bot.
/// * [recipients]: Private chats that will be accessible to the bot.
/// * [canReply]: True, if the bot can send messages to the private chats; false otherwise.
final class BusinessConnectedBot extends TdObject {
  /// **BusinessConnectedBot** *(businessConnectedBot)* - basic class
  ///
  /// Describes a bot connected to a business account.
  ///
  /// * [botUserId]: User identifier of the bot.
  /// * [recipients]: Private chats that will be accessible to the bot.
  /// * [canReply]: True, if the bot can send messages to the private chats; false otherwise.
  const BusinessConnectedBot({
    required this.botUserId,
    required this.recipients,
    required this.canReply,
    this.extra,
    this.clientId,
  });

  /// User identifier of the bot
  final int botUserId;

  /// Private chats that will be accessible to the bot
  final BusinessRecipients recipients;

  /// True, if the bot can send messages to the private chats; false otherwise
  final bool canReply;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory BusinessConnectedBot.fromJson(Map<String, dynamic> json) =>
      BusinessConnectedBot(
        botUserId: json['bot_user_id'],
        recipients: BusinessRecipients.fromJson(json['recipients']),
        canReply: json['can_reply'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "bot_user_id": botUserId,
      "recipients": recipients.toJson(),
      "can_reply": canReply,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: User identifier of the bot
  /// * [recipients]: Private chats that will be accessible to the bot
  /// * [can_reply]: True, if the bot can send messages to the private chats; false otherwise
  BusinessConnectedBot copyWith({
    int? botUserId,
    BusinessRecipients? recipients,
    bool? canReply,
    dynamic extra,
    int? clientId,
  }) =>
      BusinessConnectedBot(
        botUserId: botUserId ?? this.botUserId,
        recipients: recipients ?? this.recipients,
        canReply: canReply ?? this.canReply,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'businessConnectedBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
