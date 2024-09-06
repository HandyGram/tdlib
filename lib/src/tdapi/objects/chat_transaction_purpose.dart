part of '../tdapi.dart';

/// **ChatTransactionPurpose** *(chatTransactionPurpose)* - parent
///
/// Describes purpose of a transaction with a supergroup or a channel.
sealed class ChatTransactionPurpose extends TdObject {
  /// **ChatTransactionPurpose** *(chatTransactionPurpose)* - parent
  ///
  /// Describes purpose of a transaction with a supergroup or a channel.
  const ChatTransactionPurpose();

  /// a ChatTransactionPurpose return type can be :
  /// * [ChatTransactionPurposePaidMedia]
  /// * [ChatTransactionPurposeJoin]
  /// * [ChatTransactionPurposeReaction]
  /// * [ChatTransactionPurposeGiveaway]
  factory ChatTransactionPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatTransactionPurposePaidMedia.defaultObjectId:
        return ChatTransactionPurposePaidMedia.fromJson(json);
      case ChatTransactionPurposeJoin.defaultObjectId:
        return ChatTransactionPurposeJoin.fromJson(json);
      case ChatTransactionPurposeReaction.defaultObjectId:
        return ChatTransactionPurposeReaction.fromJson(json);
      case ChatTransactionPurposeGiveaway.defaultObjectId:
        return ChatTransactionPurposeGiveaway.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatTransactionPurpose)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatTransactionPurpose copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'chatTransactionPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatTransactionPurposePaidMedia** *(chatTransactionPurposePaidMedia)* - child of ChatTransactionPurpose
///
/// Paid media were bought.
///
/// * [messageId]: Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message.
/// * [media]: The bought media if the trancastion wasn't refunded.
final class ChatTransactionPurposePaidMedia extends ChatTransactionPurpose {
  /// **ChatTransactionPurposePaidMedia** *(chatTransactionPurposePaidMedia)* - child of ChatTransactionPurpose
  ///
  /// Paid media were bought.
  ///
  /// * [messageId]: Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message.
  /// * [media]: The bought media if the trancastion wasn't refunded.
  const ChatTransactionPurposePaidMedia({
    required this.messageId,
    required this.media,
  });

  /// Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
  final int messageId;

  /// The bought media if the trancastion wasn't refunded
  final List<PaidMedia> media;

  /// Parse from a json
  factory ChatTransactionPurposePaidMedia.fromJson(Map<String, dynamic> json) =>
      ChatTransactionPurposePaidMedia(
        messageId: json['message_id'],
        media: List<PaidMedia>.from((json['media'] ?? [])
            .map((item) => PaidMedia.fromJson(item))
            .toList()),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message_id": messageId,
      "media": media.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_id]: Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
  /// * [media]: The bought media if the trancastion wasn't refunded
  @override
  ChatTransactionPurposePaidMedia copyWith({
    int? messageId,
    List<PaidMedia>? media,
  }) =>
      ChatTransactionPurposePaidMedia(
        messageId: messageId ?? this.messageId,
        media: media ?? this.media,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatTransactionPurposePaidMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatTransactionPurposeJoin** *(chatTransactionPurposeJoin)* - child of ChatTransactionPurpose
///
/// User joined the channel and subscribed to regular payments in Telegram Stars.
///
/// * [period]: The number of seconds between consecutive Telegram Star debiting.
final class ChatTransactionPurposeJoin extends ChatTransactionPurpose {
  /// **ChatTransactionPurposeJoin** *(chatTransactionPurposeJoin)* - child of ChatTransactionPurpose
  ///
  /// User joined the channel and subscribed to regular payments in Telegram Stars.
  ///
  /// * [period]: The number of seconds between consecutive Telegram Star debiting.
  const ChatTransactionPurposeJoin({
    required this.period,
  });

  /// The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// Parse from a json
  factory ChatTransactionPurposeJoin.fromJson(Map<String, dynamic> json) =>
      ChatTransactionPurposeJoin(
        period: json['period'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "period": period,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [period]: The number of seconds between consecutive Telegram Star debiting
  @override
  ChatTransactionPurposeJoin copyWith({
    int? period,
  }) =>
      ChatTransactionPurposeJoin(
        period: period ?? this.period,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatTransactionPurposeJoin';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatTransactionPurposeReaction** *(chatTransactionPurposeReaction)* - child of ChatTransactionPurpose
///
/// User paid for a reaction.
///
/// * [messageId]: Identifier of the reacted message; can be 0 or an identifier of a deleted message.
final class ChatTransactionPurposeReaction extends ChatTransactionPurpose {
  /// **ChatTransactionPurposeReaction** *(chatTransactionPurposeReaction)* - child of ChatTransactionPurpose
  ///
  /// User paid for a reaction.
  ///
  /// * [messageId]: Identifier of the reacted message; can be 0 or an identifier of a deleted message.
  const ChatTransactionPurposeReaction({
    required this.messageId,
  });

  /// Identifier of the reacted message; can be 0 or an identifier of a deleted message
  final int messageId;

  /// Parse from a json
  factory ChatTransactionPurposeReaction.fromJson(Map<String, dynamic> json) =>
      ChatTransactionPurposeReaction(
        messageId: json['message_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "message_id": messageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [message_id]: Identifier of the reacted message; can be 0 or an identifier of a deleted message
  @override
  ChatTransactionPurposeReaction copyWith({
    int? messageId,
  }) =>
      ChatTransactionPurposeReaction(
        messageId: messageId ?? this.messageId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatTransactionPurposeReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatTransactionPurposeGiveaway** *(chatTransactionPurposeGiveaway)* - child of ChatTransactionPurpose
///
/// User received Telegram Stars from a giveaway.
///
/// * [giveawayMessageId]: Identifier of the message with giveaway; can be 0 or an identifier of a deleted message.
final class ChatTransactionPurposeGiveaway extends ChatTransactionPurpose {
  /// **ChatTransactionPurposeGiveaway** *(chatTransactionPurposeGiveaway)* - child of ChatTransactionPurpose
  ///
  /// User received Telegram Stars from a giveaway.
  ///
  /// * [giveawayMessageId]: Identifier of the message with giveaway; can be 0 or an identifier of a deleted message.
  const ChatTransactionPurposeGiveaway({
    required this.giveawayMessageId,
  });

  /// Identifier of the message with giveaway; can be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// Parse from a json
  factory ChatTransactionPurposeGiveaway.fromJson(Map<String, dynamic> json) =>
      ChatTransactionPurposeGiveaway(
        giveawayMessageId: json['giveaway_message_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "giveaway_message_id": giveawayMessageId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [giveaway_message_id]: Identifier of the message with giveaway; can be 0 or an identifier of a deleted message
  @override
  ChatTransactionPurposeGiveaway copyWith({
    int? giveawayMessageId,
  }) =>
      ChatTransactionPurposeGiveaway(
        giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatTransactionPurposeGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
