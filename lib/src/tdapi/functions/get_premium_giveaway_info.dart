part of '../tdapi.dart';

/// **GetPremiumGiveawayInfo** *(getPremiumGiveawayInfo)* - TDLib function
///
/// Returns information about a Telegram Premium giveaway.
///
/// * [chatId]: Identifier of the channel chat which started the giveaway.
/// * [messageId]: Identifier of the giveaway or a giveaway winners message in the chat.
///
/// [PremiumGiveawayInfo] is returned on completion.
final class GetPremiumGiveawayInfo extends TdFunction {
  /// **GetPremiumGiveawayInfo** *(getPremiumGiveawayInfo)* - TDLib function
  ///
  /// Returns information about a Telegram Premium giveaway.
  ///
  /// * [chatId]: Identifier of the channel chat which started the giveaway.
  /// * [messageId]: Identifier of the giveaway or a giveaway winners message in the chat.
  ///
  /// [PremiumGiveawayInfo] is returned on completion.
  const GetPremiumGiveawayInfo({
    required this.chatId,
    required this.messageId,
  });

  /// Identifier of the channel chat which started the giveaway
  final int chatId;

  /// Identifier of the giveaway or a giveaway winners message in the chat
  final int messageId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the channel chat which started the giveaway
  /// * [message_id]: Identifier of the giveaway or a giveaway winners message in the chat
  GetPremiumGiveawayInfo copyWith({
    int? chatId,
    int? messageId,
  }) =>
      GetPremiumGiveawayInfo(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getPremiumGiveawayInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
