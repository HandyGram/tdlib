part of '../tdapi.dart';

/// **ChatRevenueTransactions** *(chatRevenueTransactions)* - basic class
///
/// Contains a list of chat revenue transactions.
///
/// * [totalCount]: Total number of transactions.
/// * [transactions]: List of transactions.
final class ChatRevenueTransactions extends TdObject {
  /// **ChatRevenueTransactions** *(chatRevenueTransactions)* - basic class
  ///
  /// Contains a list of chat revenue transactions.
  ///
  /// * [totalCount]: Total number of transactions.
  /// * [transactions]: List of transactions.
  const ChatRevenueTransactions({
    required this.totalCount,
    required this.transactions,
    this.extra,
    this.clientId,
  });

  /// Total number of transactions
  final int totalCount;

  /// List of transactions
  final List<ChatRevenueTransaction> transactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatRevenueTransactions.fromJson(Map<String, dynamic> json) =>
      ChatRevenueTransactions(
        totalCount: json['total_count'],
        transactions: List<ChatRevenueTransaction>.from(
            (json['transactions'] ?? [])
                .map((item) => ChatRevenueTransaction.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "total_count": totalCount,
      "transactions": transactions.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Total number of transactions
  /// * [transactions]: List of transactions
  ChatRevenueTransactions copyWith({
    int? totalCount,
    List<ChatRevenueTransaction>? transactions,
    dynamic extra,
    int? clientId,
  }) =>
      ChatRevenueTransactions(
        totalCount: totalCount ?? this.totalCount,
        transactions: transactions ?? this.transactions,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatRevenueTransactions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
