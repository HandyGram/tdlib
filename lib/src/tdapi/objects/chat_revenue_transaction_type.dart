part of '../tdapi.dart';

/// **ChatRevenueTransactionType** *(chatRevenueTransactionType)* - parent
///
/// Describes type of transaction for revenue earned from sponsored messages in a chat.
sealed class ChatRevenueTransactionType extends TdObject {
  /// **ChatRevenueTransactionType** *(chatRevenueTransactionType)* - parent
  ///
  /// Describes type of transaction for revenue earned from sponsored messages in a chat.
  const ChatRevenueTransactionType();

  /// a ChatRevenueTransactionType return type can be :
  /// * [ChatRevenueTransactionTypeEarnings]
  /// * [ChatRevenueTransactionTypeWithdrawal]
  /// * [ChatRevenueTransactionTypeRefund]
  factory ChatRevenueTransactionType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatRevenueTransactionTypeEarnings.defaultObjectId:
        return ChatRevenueTransactionTypeEarnings.fromJson(json);
      case ChatRevenueTransactionTypeWithdrawal.defaultObjectId:
        return ChatRevenueTransactionTypeWithdrawal.fromJson(json);
      case ChatRevenueTransactionTypeRefund.defaultObjectId:
        return ChatRevenueTransactionTypeRefund.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatRevenueTransactionType)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatRevenueTransactionType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'chatRevenueTransactionType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatRevenueTransactionTypeEarnings** *(chatRevenueTransactionTypeEarnings)* - child of ChatRevenueTransactionType
///
/// Describes earnings from sponsored messages in a chat in some time frame.
///
/// * [startDate]: Point in time (Unix timestamp) when the earnings started.
/// * [endDate]: Point in time (Unix timestamp) when the earnings ended.
final class ChatRevenueTransactionTypeEarnings
    extends ChatRevenueTransactionType {
  /// **ChatRevenueTransactionTypeEarnings** *(chatRevenueTransactionTypeEarnings)* - child of ChatRevenueTransactionType
  ///
  /// Describes earnings from sponsored messages in a chat in some time frame.
  ///
  /// * [startDate]: Point in time (Unix timestamp) when the earnings started.
  /// * [endDate]: Point in time (Unix timestamp) when the earnings ended.
  const ChatRevenueTransactionTypeEarnings({
    required this.startDate,
    required this.endDate,
  });

  /// Point in time (Unix timestamp) when the earnings started
  final int startDate;

  /// Point in time (Unix timestamp) when the earnings ended
  final int endDate;

  /// Parse from a json
  factory ChatRevenueTransactionTypeEarnings.fromJson(
          Map<String, dynamic> json) =>
      ChatRevenueTransactionTypeEarnings(
        startDate: json['start_date'],
        endDate: json['end_date'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "start_date": startDate,
      "end_date": endDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [start_date]: Point in time (Unix timestamp) when the earnings started
  /// * [end_date]: Point in time (Unix timestamp) when the earnings ended
  @override
  ChatRevenueTransactionTypeEarnings copyWith({
    int? startDate,
    int? endDate,
  }) =>
      ChatRevenueTransactionTypeEarnings(
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatRevenueTransactionTypeEarnings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatRevenueTransactionTypeWithdrawal** *(chatRevenueTransactionTypeWithdrawal)* - child of ChatRevenueTransactionType
///
/// Describes a withdrawal of earnings.
///
/// * [withdrawalDate]: Point in time (Unix timestamp) when the earnings withdrawal started.
/// * [provider]: Name of the payment provider.
/// * [state]: State of the withdrawal.
final class ChatRevenueTransactionTypeWithdrawal
    extends ChatRevenueTransactionType {
  /// **ChatRevenueTransactionTypeWithdrawal** *(chatRevenueTransactionTypeWithdrawal)* - child of ChatRevenueTransactionType
  ///
  /// Describes a withdrawal of earnings.
  ///
  /// * [withdrawalDate]: Point in time (Unix timestamp) when the earnings withdrawal started.
  /// * [provider]: Name of the payment provider.
  /// * [state]: State of the withdrawal.
  const ChatRevenueTransactionTypeWithdrawal({
    required this.withdrawalDate,
    required this.provider,
    required this.state,
  });

  /// Point in time (Unix timestamp) when the earnings withdrawal started
  final int withdrawalDate;

  /// Name of the payment provider
  final String provider;

  /// State of the withdrawal
  final RevenueWithdrawalState state;

  /// Parse from a json
  factory ChatRevenueTransactionTypeWithdrawal.fromJson(
          Map<String, dynamic> json) =>
      ChatRevenueTransactionTypeWithdrawal(
        withdrawalDate: json['withdrawal_date'],
        provider: json['provider'],
        state: RevenueWithdrawalState.fromJson(json['state']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "withdrawal_date": withdrawalDate,
      "provider": provider,
      "state": state.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [withdrawal_date]: Point in time (Unix timestamp) when the earnings withdrawal started
  /// * [provider]: Name of the payment provider
  /// * [state]: State of the withdrawal
  @override
  ChatRevenueTransactionTypeWithdrawal copyWith({
    int? withdrawalDate,
    String? provider,
    RevenueWithdrawalState? state,
  }) =>
      ChatRevenueTransactionTypeWithdrawal(
        withdrawalDate: withdrawalDate ?? this.withdrawalDate,
        provider: provider ?? this.provider,
        state: state ?? this.state,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatRevenueTransactionTypeWithdrawal';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ChatRevenueTransactionTypeRefund** *(chatRevenueTransactionTypeRefund)* - child of ChatRevenueTransactionType
///
/// Describes a refund for failed withdrawal of earnings.
///
/// * [refundDate]: Point in time (Unix timestamp) when the transaction was refunded.
/// * [provider]: Name of the payment provider.
final class ChatRevenueTransactionTypeRefund
    extends ChatRevenueTransactionType {
  /// **ChatRevenueTransactionTypeRefund** *(chatRevenueTransactionTypeRefund)* - child of ChatRevenueTransactionType
  ///
  /// Describes a refund for failed withdrawal of earnings.
  ///
  /// * [refundDate]: Point in time (Unix timestamp) when the transaction was refunded.
  /// * [provider]: Name of the payment provider.
  const ChatRevenueTransactionTypeRefund({
    required this.refundDate,
    required this.provider,
  });

  /// Point in time (Unix timestamp) when the transaction was refunded
  final int refundDate;

  /// Name of the payment provider
  final String provider;

  /// Parse from a json
  factory ChatRevenueTransactionTypeRefund.fromJson(
          Map<String, dynamic> json) =>
      ChatRevenueTransactionTypeRefund(
        refundDate: json['refund_date'],
        provider: json['provider'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "refund_date": refundDate,
      "provider": provider,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [refund_date]: Point in time (Unix timestamp) when the transaction was refunded
  /// * [provider]: Name of the payment provider
  @override
  ChatRevenueTransactionTypeRefund copyWith({
    int? refundDate,
    String? provider,
  }) =>
      ChatRevenueTransactionTypeRefund(
        refundDate: refundDate ?? this.refundDate,
        provider: provider ?? this.provider,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatRevenueTransactionTypeRefund';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
