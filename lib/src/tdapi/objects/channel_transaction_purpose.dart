part of '../tdapi.dart';

/// **ChannelTransactionPurpose** *(channelTransactionPurpose)* - parent
///
/// Describes purpose of a transaction with a channel.
sealed class ChannelTransactionPurpose extends TdObject {
  /// **ChannelTransactionPurpose** *(channelTransactionPurpose)* - parent
  ///
  /// Describes purpose of a transaction with a channel.
  const ChannelTransactionPurpose();

  /// a ChannelTransactionPurpose return type can be :
  /// * [ChannelTransactionPurposePaidMedia]
  /// * [ChannelTransactionPurposeJoin]
  /// * [ChannelTransactionPurposeReaction]
  factory ChannelTransactionPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChannelTransactionPurposePaidMedia.defaultObjectId:
        return ChannelTransactionPurposePaidMedia.fromJson(json);
      case ChannelTransactionPurposeJoin.defaultObjectId:
        return ChannelTransactionPurposeJoin.fromJson(json);
      case ChannelTransactionPurposeReaction.defaultObjectId:
        return ChannelTransactionPurposeReaction.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChannelTransactionPurpose)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChannelTransactionPurpose copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'channelTransactionPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChannelTransactionPurposePaidMedia** *(channelTransactionPurposePaidMedia)* - child of ChannelTransactionPurpose
///
/// Paid media were bought.
///
/// * [messageId]: Identifier of the corresponding message with paid media; can be an identifier of a deleted message.
/// * [media]: The bought media if the trancastion wasn't refunded.
final class ChannelTransactionPurposePaidMedia
    extends ChannelTransactionPurpose {
  /// **ChannelTransactionPurposePaidMedia** *(channelTransactionPurposePaidMedia)* - child of ChannelTransactionPurpose
  ///
  /// Paid media were bought.
  ///
  /// * [messageId]: Identifier of the corresponding message with paid media; can be an identifier of a deleted message.
  /// * [media]: The bought media if the trancastion wasn't refunded.
  const ChannelTransactionPurposePaidMedia({
    required this.messageId,
    required this.media,
  });

  /// Identifier of the corresponding message with paid media; can be an identifier of a deleted message
  final int messageId;

  /// The bought media if the trancastion wasn't refunded
  final List<PaidMedia> media;

  /// Parse from a json
  factory ChannelTransactionPurposePaidMedia.fromJson(
          Map<String, dynamic> json) =>
      ChannelTransactionPurposePaidMedia(
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
  /// * [message_id]: Identifier of the corresponding message with paid media; can be an identifier of a deleted message
  /// * [media]: The bought media if the trancastion wasn't refunded
  @override
  ChannelTransactionPurposePaidMedia copyWith({
    int? messageId,
    List<PaidMedia>? media,
  }) =>
      ChannelTransactionPurposePaidMedia(
        messageId: messageId ?? this.messageId,
        media: media ?? this.media,
      );

  /// TDLib object type
  static const String defaultObjectId = 'channelTransactionPurposePaidMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChannelTransactionPurposeJoin** *(channelTransactionPurposeJoin)* - child of ChannelTransactionPurpose
///
/// User joined the channel and subscribed to regular payments in Telegram Stars.
///
/// * [period]: The number of seconds between consecutive Telegram Star debiting.
final class ChannelTransactionPurposeJoin extends ChannelTransactionPurpose {
  /// **ChannelTransactionPurposeJoin** *(channelTransactionPurposeJoin)* - child of ChannelTransactionPurpose
  ///
  /// User joined the channel and subscribed to regular payments in Telegram Stars.
  ///
  /// * [period]: The number of seconds between consecutive Telegram Star debiting.
  const ChannelTransactionPurposeJoin({
    required this.period,
  });

  /// The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// Parse from a json
  factory ChannelTransactionPurposeJoin.fromJson(Map<String, dynamic> json) =>
      ChannelTransactionPurposeJoin(
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
  ChannelTransactionPurposeJoin copyWith({
    int? period,
  }) =>
      ChannelTransactionPurposeJoin(
        period: period ?? this.period,
      );

  /// TDLib object type
  static const String defaultObjectId = 'channelTransactionPurposeJoin';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChannelTransactionPurposeReaction** *(channelTransactionPurposeReaction)* - child of ChannelTransactionPurpose
///
/// User paid for a reaction.
///
/// * [messageId]: Identifier of the reacted message; can be an identifier of a deleted message.
final class ChannelTransactionPurposeReaction
    extends ChannelTransactionPurpose {
  /// **ChannelTransactionPurposeReaction** *(channelTransactionPurposeReaction)* - child of ChannelTransactionPurpose
  ///
  /// User paid for a reaction.
  ///
  /// * [messageId]: Identifier of the reacted message; can be an identifier of a deleted message.
  const ChannelTransactionPurposeReaction({
    required this.messageId,
  });

  /// Identifier of the reacted message; can be an identifier of a deleted message
  final int messageId;

  /// Parse from a json
  factory ChannelTransactionPurposeReaction.fromJson(
          Map<String, dynamic> json) =>
      ChannelTransactionPurposeReaction(
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
  /// * [message_id]: Identifier of the reacted message; can be an identifier of a deleted message
  @override
  ChannelTransactionPurposeReaction copyWith({
    int? messageId,
  }) =>
      ChannelTransactionPurposeReaction(
        messageId: messageId ?? this.messageId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'channelTransactionPurposeReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
