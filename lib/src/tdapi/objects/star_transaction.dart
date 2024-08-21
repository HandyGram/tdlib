part of '../tdapi.dart';

/// **StarTransaction** *(starTransaction)* - basic class
///
/// Represents a transaction changing the amount of owned Telegram Stars.
///
/// * [id]: Unique identifier of the transaction.
/// * [starCount]: The amount of added owned Telegram Stars; negative for outgoing transactions.
/// * [isRefund]: True, if the transaction is a refund of a previous transaction.
/// * [date]: Point in time (Unix timestamp) when the transaction was completed.
/// * [partner]: Source of the incoming transaction, or its recipient for outgoing transactions.
final class StarTransaction extends TdObject {
  /// **StarTransaction** *(starTransaction)* - basic class
  ///
  /// Represents a transaction changing the amount of owned Telegram Stars.
  ///
  /// * [id]: Unique identifier of the transaction.
  /// * [starCount]: The amount of added owned Telegram Stars; negative for outgoing transactions.
  /// * [isRefund]: True, if the transaction is a refund of a previous transaction.
  /// * [date]: Point in time (Unix timestamp) when the transaction was completed.
  /// * [partner]: Source of the incoming transaction, or its recipient for outgoing transactions.
  const StarTransaction({
    required this.id,
    required this.starCount,
    required this.isRefund,
    required this.date,
    required this.partner,
  });

  /// Unique identifier of the transaction
  final String id;

  /// The amount of added owned Telegram Stars; negative for outgoing transactions
  final int starCount;

  /// True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// Source of the incoming transaction, or its recipient for outgoing transactions
  final StarTransactionPartner partner;

  /// Parse from a json
  factory StarTransaction.fromJson(Map<String, dynamic> json) =>
      StarTransaction(
        id: json['id'],
        starCount: json['star_count'],
        isRefund: json['is_refund'],
        date: json['date'],
        partner: StarTransactionPartner.fromJson(json['partner']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "star_count": starCount,
      "is_refund": isRefund,
      "date": date,
      "partner": partner.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the transaction
  /// * [star_count]: The amount of added owned Telegram Stars; negative for outgoing transactions
  /// * [is_refund]: True, if the transaction is a refund of a previous transaction
  /// * [date]: Point in time (Unix timestamp) when the transaction was completed
  /// * [partner]: Source of the incoming transaction, or its recipient for outgoing transactions
  StarTransaction copyWith({
    String? id,
    int? starCount,
    bool? isRefund,
    int? date,
    StarTransactionPartner? partner,
  }) =>
      StarTransaction(
        id: id ?? this.id,
        starCount: starCount ?? this.starCount,
        isRefund: isRefund ?? this.isRefund,
        date: date ?? this.date,
        partner: partner ?? this.partner,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
