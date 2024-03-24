part of '../tdapi.dart';

/// **PrepaidPremiumGiveaway** *(prepaidPremiumGiveaway)* - basic class
///
/// Describes a prepaid Telegram Premium giveaway.
///
/// * [id]: Unique identifier of the prepaid giveaway.
/// * [winnerCount]: Number of users which will receive Telegram Premium subscription gift codes.
/// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation.
/// * [paymentDate]: Point in time (Unix timestamp) when the giveaway was paid.
final class PrepaidPremiumGiveaway extends TdObject {
  /// **PrepaidPremiumGiveaway** *(prepaidPremiumGiveaway)* - basic class
  ///
  /// Describes a prepaid Telegram Premium giveaway.
  ///
  /// * [id]: Unique identifier of the prepaid giveaway.
  /// * [winnerCount]: Number of users which will receive Telegram Premium subscription gift codes.
  /// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation.
  /// * [paymentDate]: Point in time (Unix timestamp) when the giveaway was paid.
  const PrepaidPremiumGiveaway({
    required this.id,
    required this.winnerCount,
    required this.monthCount,
    required this.paymentDate,
  });

  /// Unique identifier of the prepaid giveaway
  final int id;

  /// Number of users which will receive Telegram Premium subscription gift codes
  final int winnerCount;

  /// Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;

  /// Point in time (Unix timestamp) when the giveaway was paid
  final int paymentDate;

  /// Parse from a json
  factory PrepaidPremiumGiveaway.fromJson(Map<String, dynamic> json) =>
      PrepaidPremiumGiveaway(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        winnerCount: json['winner_count'],
        monthCount: json['month_count'],
        paymentDate: json['payment_date'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "winner_count": winnerCount,
      "month_count": monthCount,
      "payment_date": paymentDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the prepaid giveaway
  /// * [winner_count]: Number of users which will receive Telegram Premium subscription gift codes
  /// * [month_count]: Number of months the Telegram Premium subscription will be active after code activation
  /// * [payment_date]: Point in time (Unix timestamp) when the giveaway was paid
  PrepaidPremiumGiveaway copyWith({
    int? id,
    int? winnerCount,
    int? monthCount,
    int? paymentDate,
  }) =>
      PrepaidPremiumGiveaway(
        id: id ?? this.id,
        winnerCount: winnerCount ?? this.winnerCount,
        monthCount: monthCount ?? this.monthCount,
        paymentDate: paymentDate ?? this.paymentDate,
      );

  /// TDLib object type
  static const String defaultObjectId = 'prepaidPremiumGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
