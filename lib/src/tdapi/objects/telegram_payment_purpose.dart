part of '../tdapi.dart';

/// **TelegramPaymentPurpose** *(telegramPaymentPurpose)* - parent
///
/// Describes a purpose of a payment toward Telegram.
sealed class TelegramPaymentPurpose extends TdObject {
  /// **TelegramPaymentPurpose** *(telegramPaymentPurpose)* - parent
  ///
  /// Describes a purpose of a payment toward Telegram.
  const TelegramPaymentPurpose();

  /// a TelegramPaymentPurpose return type can be :
  /// * [TelegramPaymentPurposePremiumGiftCodes]
  /// * [TelegramPaymentPurposePremiumGiveaway]
  /// * [TelegramPaymentPurposeStars]
  factory TelegramPaymentPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TelegramPaymentPurposePremiumGiftCodes.defaultObjectId:
        return TelegramPaymentPurposePremiumGiftCodes.fromJson(json);
      case TelegramPaymentPurposePremiumGiveaway.defaultObjectId:
        return TelegramPaymentPurposePremiumGiveaway.fromJson(json);
      case TelegramPaymentPurposeStars.defaultObjectId:
        return TelegramPaymentPurposeStars.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TelegramPaymentPurpose)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  TelegramPaymentPurpose copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'telegramPaymentPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TelegramPaymentPurposePremiumGiftCodes** *(telegramPaymentPurposePremiumGiftCodes)* - child of TelegramPaymentPurpose
///
/// The user creating Telegram Premium gift codes for other users.
///
/// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
/// * [userIds]: Identifiers of the users which can activate the gift codes.
/// * [monthCount]: Number of months the Telegram Premium subscription will be active for the users.
final class TelegramPaymentPurposePremiumGiftCodes
    extends TelegramPaymentPurpose {
  /// **TelegramPaymentPurposePremiumGiftCodes** *(telegramPaymentPurposePremiumGiftCodes)* - child of TelegramPaymentPurpose
  ///
  /// The user creating Telegram Premium gift codes for other users.
  ///
  /// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  /// * [userIds]: Identifiers of the users which can activate the gift codes.
  /// * [monthCount]: Number of months the Telegram Premium subscription will be active for the users.
  const TelegramPaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
    required this.monthCount,
  });

  /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
  final int boostedChatId;

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Identifiers of the users which can activate the gift codes
  final List<int> userIds;

  /// Number of months the Telegram Premium subscription will be active for the users
  final int monthCount;

  /// Parse from a json
  factory TelegramPaymentPurposePremiumGiftCodes.fromJson(
          Map<String, dynamic> json) =>
      TelegramPaymentPurposePremiumGiftCodes(
        boostedChatId: json['boosted_chat_id'] ?? 0,
        currency: json['currency'],
        amount: json['amount'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
        monthCount: json['month_count'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "boosted_chat_id": boostedChatId,
      "currency": currency,
      "amount": amount,
      "user_ids": userIds.map((i) => i).toList(),
      "month_count": monthCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [boosted_chat_id]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  /// * [user_ids]: Identifiers of the users which can activate the gift codes
  /// * [month_count]: Number of months the Telegram Premium subscription will be active for the users
  @override
  TelegramPaymentPurposePremiumGiftCodes copyWith({
    int? boostedChatId,
    String? currency,
    int? amount,
    List<int>? userIds,
    int? monthCount,
  }) =>
      TelegramPaymentPurposePremiumGiftCodes(
        boostedChatId: boostedChatId ?? this.boostedChatId,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        userIds: userIds ?? this.userIds,
        monthCount: monthCount ?? this.monthCount,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'telegramPaymentPurposePremiumGiftCodes';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TelegramPaymentPurposePremiumGiveaway** *(telegramPaymentPurposePremiumGiveaway)* - child of TelegramPaymentPurpose
///
/// The user creating a Telegram Premium giveaway.
///
/// * [parameters]: Giveaway parameters.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
/// * [winnerCount]: Number of users which will be able to activate the gift codes.
/// * [monthCount]: Number of months the Telegram Premium subscription will be active for the users.
final class TelegramPaymentPurposePremiumGiveaway
    extends TelegramPaymentPurpose {
  /// **TelegramPaymentPurposePremiumGiveaway** *(telegramPaymentPurposePremiumGiveaway)* - child of TelegramPaymentPurpose
  ///
  /// The user creating a Telegram Premium giveaway.
  ///
  /// * [parameters]: Giveaway parameters.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  /// * [winnerCount]: Number of users which will be able to activate the gift codes.
  /// * [monthCount]: Number of months the Telegram Premium subscription will be active for the users.
  const TelegramPaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
  });

  /// Giveaway parameters
  final PremiumGiveawayParameters parameters;

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Number of users which will be able to activate the gift codes
  final int winnerCount;

  /// Number of months the Telegram Premium subscription will be active for the users
  final int monthCount;

  /// Parse from a json
  factory TelegramPaymentPurposePremiumGiveaway.fromJson(
          Map<String, dynamic> json) =>
      TelegramPaymentPurposePremiumGiveaway(
        parameters: PremiumGiveawayParameters.fromJson(json['parameters']),
        currency: json['currency'],
        amount: json['amount'],
        winnerCount: json['winner_count'],
        monthCount: json['month_count'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "parameters": parameters.toJson(),
      "currency": currency,
      "amount": amount,
      "winner_count": winnerCount,
      "month_count": monthCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [parameters]: Giveaway parameters
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  /// * [winner_count]: Number of users which will be able to activate the gift codes
  /// * [month_count]: Number of months the Telegram Premium subscription will be active for the users
  @override
  TelegramPaymentPurposePremiumGiveaway copyWith({
    PremiumGiveawayParameters? parameters,
    String? currency,
    int? amount,
    int? winnerCount,
    int? monthCount,
  }) =>
      TelegramPaymentPurposePremiumGiveaway(
        parameters: parameters ?? this.parameters,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        winnerCount: winnerCount ?? this.winnerCount,
        monthCount: monthCount ?? this.monthCount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'telegramPaymentPurposePremiumGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TelegramPaymentPurposeStars** *(telegramPaymentPurposeStars)* - child of TelegramPaymentPurpose
///
/// The user buying Telegram stars.
///
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
/// * [starCount]: Number of bought stars.
final class TelegramPaymentPurposeStars extends TelegramPaymentPurpose {
  /// **TelegramPaymentPurposeStars** *(telegramPaymentPurposeStars)* - child of TelegramPaymentPurpose
  ///
  /// The user buying Telegram stars.
  ///
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  /// * [starCount]: Number of bought stars.
  const TelegramPaymentPurposeStars({
    required this.currency,
    required this.amount,
    required this.starCount,
  });

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Number of bought stars
  final int starCount;

  /// Parse from a json
  factory TelegramPaymentPurposeStars.fromJson(Map<String, dynamic> json) =>
      TelegramPaymentPurposeStars(
        currency: json['currency'],
        amount: json['amount'],
        starCount: json['star_count'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "currency": currency,
      "amount": amount,
      "star_count": starCount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  /// * [star_count]: Number of bought stars
  @override
  TelegramPaymentPurposeStars copyWith({
    String? currency,
    int? amount,
    int? starCount,
  }) =>
      TelegramPaymentPurposeStars(
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        starCount: starCount ?? this.starCount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'telegramPaymentPurposeStars';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
