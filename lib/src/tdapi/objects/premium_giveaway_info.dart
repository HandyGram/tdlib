part of '../tdapi.dart';

/// **PremiumGiveawayInfo** *(premiumGiveawayInfo)* - parent
///
/// Contains information about Telegram Premium giveaway.
sealed class PremiumGiveawayInfo extends TdObject {
  /// **PremiumGiveawayInfo** *(premiumGiveawayInfo)* - parent
  ///
  /// Contains information about Telegram Premium giveaway.
  const PremiumGiveawayInfo();

  /// a PremiumGiveawayInfo return type can be :
  /// * [PremiumGiveawayInfoOngoing]
  /// * [PremiumGiveawayInfoCompleted]
  factory PremiumGiveawayInfo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumGiveawayInfoOngoing.defaultObjectId:
        return PremiumGiveawayInfoOngoing.fromJson(json);
      case PremiumGiveawayInfoCompleted.defaultObjectId:
        return PremiumGiveawayInfoCompleted.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumGiveawayInfo)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PremiumGiveawayInfo copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'premiumGiveawayInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayInfoOngoing** *(premiumGiveawayInfoOngoing)* - child of PremiumGiveawayInfo
///
/// Describes an ongoing giveaway.
///
/// * [creationDate]: Point in time (Unix timestamp) when the giveaway was created.
/// * [status]: Status of the current user in the giveaway.
/// * [isEnded]: True, if the giveaway has ended and results are being prepared.
final class PremiumGiveawayInfoOngoing extends PremiumGiveawayInfo {
  /// **PremiumGiveawayInfoOngoing** *(premiumGiveawayInfoOngoing)* - child of PremiumGiveawayInfo
  ///
  /// Describes an ongoing giveaway.
  ///
  /// * [creationDate]: Point in time (Unix timestamp) when the giveaway was created.
  /// * [status]: Status of the current user in the giveaway.
  /// * [isEnded]: True, if the giveaway has ended and results are being prepared.
  const PremiumGiveawayInfoOngoing({
    required this.creationDate,
    required this.status,
    required this.isEnded,
    this.extra,
    this.clientId,
  });

  /// Point in time (Unix timestamp) when the giveaway was created
  final int creationDate;

  /// Status of the current user in the giveaway
  final PremiumGiveawayParticipantStatus status;

  /// True, if the giveaway has ended and results are being prepared
  final bool isEnded;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory PremiumGiveawayInfoOngoing.fromJson(Map<String, dynamic> json) =>
      PremiumGiveawayInfoOngoing(
        creationDate: json['creation_date'],
        status: PremiumGiveawayParticipantStatus.fromJson(json['status']),
        isEnded: json['is_ended'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "creation_date": creationDate,
      "status": status.toJson(),
      "is_ended": isEnded,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [creation_date]: Point in time (Unix timestamp) when the giveaway was created
  /// * [status]: Status of the current user in the giveaway
  /// * [is_ended]: True, if the giveaway has ended and results are being prepared
  @override
  PremiumGiveawayInfoOngoing copyWith({
    int? creationDate,
    PremiumGiveawayParticipantStatus? status,
    bool? isEnded,
    dynamic extra,
    int? clientId,
  }) =>
      PremiumGiveawayInfoOngoing(
        creationDate: creationDate ?? this.creationDate,
        status: status ?? this.status,
        isEnded: isEnded ?? this.isEnded,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'premiumGiveawayInfoOngoing';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayInfoCompleted** *(premiumGiveawayInfoCompleted)* - child of PremiumGiveawayInfo
///
/// Describes a completed giveaway.
///
/// * [creationDate]: Point in time (Unix timestamp) when the giveaway was created.
/// * [actualWinnersSelectionDate]: Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway.
/// * [wasRefunded]: True, if the giveaway was canceled and was fully refunded.
/// * [winnerCount]: Number of winners in the giveaway.
/// * [activationCount]: Number of winners, which activated their gift codes.
/// * [giftCode]: Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway.
final class PremiumGiveawayInfoCompleted extends PremiumGiveawayInfo {
  /// **PremiumGiveawayInfoCompleted** *(premiumGiveawayInfoCompleted)* - child of PremiumGiveawayInfo
  ///
  /// Describes a completed giveaway.
  ///
  /// * [creationDate]: Point in time (Unix timestamp) when the giveaway was created.
  /// * [actualWinnersSelectionDate]: Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway.
  /// * [wasRefunded]: True, if the giveaway was canceled and was fully refunded.
  /// * [winnerCount]: Number of winners in the giveaway.
  /// * [activationCount]: Number of winners, which activated their gift codes.
  /// * [giftCode]: Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway.
  const PremiumGiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
    this.extra,
    this.clientId,
  });

  /// Point in time (Unix timestamp) when the giveaway was created
  final int creationDate;

  /// Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// Number of winners in the giveaway
  final int winnerCount;

  /// Number of winners, which activated their gift codes
  final int activationCount;

  /// Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway
  final String giftCode;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory PremiumGiveawayInfoCompleted.fromJson(Map<String, dynamic> json) =>
      PremiumGiveawayInfoCompleted(
        creationDate: json['creation_date'],
        actualWinnersSelectionDate: json['actual_winners_selection_date'],
        wasRefunded: json['was_refunded'],
        winnerCount: json['winner_count'],
        activationCount: json['activation_count'],
        giftCode: json['gift_code'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "creation_date": creationDate,
      "actual_winners_selection_date": actualWinnersSelectionDate,
      "was_refunded": wasRefunded,
      "winner_count": winnerCount,
      "activation_count": activationCount,
      "gift_code": giftCode,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [creation_date]: Point in time (Unix timestamp) when the giveaway was created
  /// * [actual_winners_selection_date]: Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
  /// * [was_refunded]: True, if the giveaway was canceled and was fully refunded
  /// * [winner_count]: Number of winners in the giveaway
  /// * [activation_count]: Number of winners, which activated their gift codes
  /// * [gift_code]: Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway
  @override
  PremiumGiveawayInfoCompleted copyWith({
    int? creationDate,
    int? actualWinnersSelectionDate,
    bool? wasRefunded,
    int? winnerCount,
    int? activationCount,
    String? giftCode,
    dynamic extra,
    int? clientId,
  }) =>
      PremiumGiveawayInfoCompleted(
        creationDate: creationDate ?? this.creationDate,
        actualWinnersSelectionDate:
            actualWinnersSelectionDate ?? this.actualWinnersSelectionDate,
        wasRefunded: wasRefunded ?? this.wasRefunded,
        winnerCount: winnerCount ?? this.winnerCount,
        activationCount: activationCount ?? this.activationCount,
        giftCode: giftCode ?? this.giftCode,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'premiumGiveawayInfoCompleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
