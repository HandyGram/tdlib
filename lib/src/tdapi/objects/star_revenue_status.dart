part of '../tdapi.dart';

/// **StarRevenueStatus** *(starRevenueStatus)* - basic class
///
/// Contains information about Telegram Stars earned by a bot or a chat.
///
/// * [totalCount]: Total number of Telegram Stars earned.
/// * [currentCount]: The number of Telegram Stars that aren't withdrawn yet.
/// * [availableCount]: The number of Telegram Stars that are available for withdrawal.
/// * [withdrawalEnabled]: True, if Telegram Stars can be withdrawn now or later.
/// * [nextWithdrawalIn]: Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now.
final class StarRevenueStatus extends TdObject {
  /// **StarRevenueStatus** *(starRevenueStatus)* - basic class
  ///
  /// Contains information about Telegram Stars earned by a bot or a chat.
  ///
  /// * [totalCount]: Total number of Telegram Stars earned.
  /// * [currentCount]: The number of Telegram Stars that aren't withdrawn yet.
  /// * [availableCount]: The number of Telegram Stars that are available for withdrawal.
  /// * [withdrawalEnabled]: True, if Telegram Stars can be withdrawn now or later.
  /// * [nextWithdrawalIn]: Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now.
  const StarRevenueStatus({
    required this.totalCount,
    required this.currentCount,
    required this.availableCount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });

  /// Total number of Telegram Stars earned
  final int totalCount;

  /// The number of Telegram Stars that aren't withdrawn yet
  final int currentCount;

  /// The number of Telegram Stars that are available for withdrawal
  final int availableCount;

  /// True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  /// Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
  final int nextWithdrawalIn;

  /// Parse from a json
  factory StarRevenueStatus.fromJson(Map<String, dynamic> json) =>
      StarRevenueStatus(
        totalCount: json['total_count'],
        currentCount: json['current_count'],
        availableCount: json['available_count'],
        withdrawalEnabled: json['withdrawal_enabled'],
        nextWithdrawalIn: json['next_withdrawal_in'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "total_count": totalCount,
      "current_count": currentCount,
      "available_count": availableCount,
      "withdrawal_enabled": withdrawalEnabled,
      "next_withdrawal_in": nextWithdrawalIn,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Total number of Telegram Stars earned
  /// * [current_count]: The number of Telegram Stars that aren't withdrawn yet
  /// * [available_count]: The number of Telegram Stars that are available for withdrawal
  /// * [withdrawal_enabled]: True, if Telegram Stars can be withdrawn now or later
  /// * [next_withdrawal_in]: Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
  StarRevenueStatus copyWith({
    int? totalCount,
    int? currentCount,
    int? availableCount,
    bool? withdrawalEnabled,
    int? nextWithdrawalIn,
  }) =>
      StarRevenueStatus(
        totalCount: totalCount ?? this.totalCount,
        currentCount: currentCount ?? this.currentCount,
        availableCount: availableCount ?? this.availableCount,
        withdrawalEnabled: withdrawalEnabled ?? this.withdrawalEnabled,
        nextWithdrawalIn: nextWithdrawalIn ?? this.nextWithdrawalIn,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starRevenueStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
