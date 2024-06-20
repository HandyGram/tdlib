part of '../tdapi.dart';

/// **StorePaymentPurpose** *(storePaymentPurpose)* - parent
///
/// Describes a purpose of an in-store payment.
sealed class StorePaymentPurpose extends TdObject {
  /// **StorePaymentPurpose** *(storePaymentPurpose)* - parent
  ///
  /// Describes a purpose of an in-store payment.
  const StorePaymentPurpose();

  /// a StorePaymentPurpose return type can be :
  /// * [StorePaymentPurposePremiumSubscription]
  /// * [StorePaymentPurposeGiftedPremium]
  /// * [StorePaymentPurposePremiumGiftCodes]
  /// * [StorePaymentPurposePremiumGiveaway]
  /// * [StorePaymentPurposeStars]
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StorePaymentPurposePremiumSubscription.defaultObjectId:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeGiftedPremium.defaultObjectId:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
      case StorePaymentPurposePremiumGiftCodes.defaultObjectId:
        return StorePaymentPurposePremiumGiftCodes.fromJson(json);
      case StorePaymentPurposePremiumGiveaway.defaultObjectId:
        return StorePaymentPurposePremiumGiveaway.fromJson(json);
      case StorePaymentPurposeStars.defaultObjectId:
        return StorePaymentPurposeStars.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StorePaymentPurpose)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  StorePaymentPurpose copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'storePaymentPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
///
/// The user subscribing to Telegram Premium.
///
/// * [isRestore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
/// * [isUpgrade]: Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store.
final class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  /// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
  ///
  /// The user subscribing to Telegram Premium.
  ///
  /// * [isRestore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
  /// * [isUpgrade]: Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store.
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });

  /// Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  final bool isRestore;

  /// Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store
  final bool isUpgrade;

  /// Parse from a json
  factory StorePaymentPurposePremiumSubscription.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposePremiumSubscription(
        isRestore: json['is_restore'],
        isUpgrade: json['is_upgrade'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "is_restore": isRestore,
      "is_upgrade": isUpgrade,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_restore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  /// * [is_upgrade]: Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store
  @override
  StorePaymentPurposePremiumSubscription copyWith({
    bool? isRestore,
    bool? isUpgrade,
  }) =>
      StorePaymentPurposePremiumSubscription(
        isRestore: isRestore ?? this.isRestore,
        isUpgrade: isUpgrade ?? this.isUpgrade,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'storePaymentPurposePremiumSubscription';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
///
/// The user gifting Telegram Premium to another user.
///
/// * [userId]: Identifier of the user to which Premium was gifted.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
final class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {
  /// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
  ///
  /// The user gifting Telegram Premium to another user.
  ///
  /// * [userId]: Identifier of the user to which Premium was gifted.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });

  /// Identifier of the user to which Premium was gifted
  final int userId;

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Parse from a json
  factory StorePaymentPurposeGiftedPremium.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposeGiftedPremium(
        userId: json['user_id'],
        currency: json['currency'],
        amount: json['amount'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "currency": currency,
      "amount": amount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user to which Premium was gifted
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  @override
  StorePaymentPurposeGiftedPremium copyWith({
    int? userId,
    String? currency,
    int? amount,
  }) =>
      StorePaymentPurposeGiftedPremium(
        userId: userId ?? this.userId,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'storePaymentPurposeGiftedPremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StorePaymentPurposePremiumGiftCodes** *(storePaymentPurposePremiumGiftCodes)* - child of StorePaymentPurpose
///
/// The user creating Telegram Premium gift codes for other users.
///
/// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
/// * [userIds]: Identifiers of the users which can activate the gift codes.
final class StorePaymentPurposePremiumGiftCodes extends StorePaymentPurpose {
  /// **StorePaymentPurposePremiumGiftCodes** *(storePaymentPurposePremiumGiftCodes)* - child of StorePaymentPurpose
  ///
  /// The user creating Telegram Premium gift codes for other users.
  ///
  /// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  /// * [userIds]: Identifiers of the users which can activate the gift codes.
  const StorePaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
  });

  /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
  final int boostedChatId;

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Identifiers of the users which can activate the gift codes
  final List<int> userIds;

  /// Parse from a json
  factory StorePaymentPurposePremiumGiftCodes.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposePremiumGiftCodes(
        boostedChatId: json['boosted_chat_id'] ?? 0,
        currency: json['currency'],
        amount: json['amount'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
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
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [boosted_chat_id]: Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  /// * [user_ids]: Identifiers of the users which can activate the gift codes
  @override
  StorePaymentPurposePremiumGiftCodes copyWith({
    int? boostedChatId,
    String? currency,
    int? amount,
    List<int>? userIds,
  }) =>
      StorePaymentPurposePremiumGiftCodes(
        boostedChatId: boostedChatId ?? this.boostedChatId,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        userIds: userIds ?? this.userIds,
      );

  /// TDLib object type
  static const String defaultObjectId = 'storePaymentPurposePremiumGiftCodes';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StorePaymentPurposePremiumGiveaway** *(storePaymentPurposePremiumGiveaway)* - child of StorePaymentPurpose
///
/// The user creating a Telegram Premium giveaway.
///
/// * [parameters]: Giveaway parameters.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
final class StorePaymentPurposePremiumGiveaway extends StorePaymentPurpose {
  /// **StorePaymentPurposePremiumGiveaway** *(storePaymentPurposePremiumGiveaway)* - child of StorePaymentPurpose
  ///
  /// The user creating a Telegram Premium giveaway.
  ///
  /// * [parameters]: Giveaway parameters.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  const StorePaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
  });

  /// Giveaway parameters
  final PremiumGiveawayParameters parameters;

  /// ISO 4217 currency code of the payment currency
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;

  /// Parse from a json
  factory StorePaymentPurposePremiumGiveaway.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposePremiumGiveaway(
        parameters: PremiumGiveawayParameters.fromJson(json['parameters']),
        currency: json['currency'],
        amount: json['amount'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "parameters": parameters.toJson(),
      "currency": currency,
      "amount": amount,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [parameters]: Giveaway parameters
  /// * [currency]: ISO 4217 currency code of the payment currency
  /// * [amount]: Paid amount, in the smallest units of the currency
  @override
  StorePaymentPurposePremiumGiveaway copyWith({
    PremiumGiveawayParameters? parameters,
    String? currency,
    int? amount,
  }) =>
      StorePaymentPurposePremiumGiveaway(
        parameters: parameters ?? this.parameters,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'storePaymentPurposePremiumGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StorePaymentPurposeStars** *(storePaymentPurposeStars)* - child of StorePaymentPurpose
///
/// The user buying Telegram stars.
///
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
/// * [starCount]: Number of bought stars.
final class StorePaymentPurposeStars extends StorePaymentPurpose {
  /// **StorePaymentPurposeStars** *(storePaymentPurposeStars)* - child of StorePaymentPurpose
  ///
  /// The user buying Telegram stars.
  ///
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  /// * [starCount]: Number of bought stars.
  const StorePaymentPurposeStars({
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
  factory StorePaymentPurposeStars.fromJson(Map<String, dynamic> json) =>
      StorePaymentPurposeStars(
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
  StorePaymentPurposeStars copyWith({
    String? currency,
    int? amount,
    int? starCount,
  }) =>
      StorePaymentPurposeStars(
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        starCount: starCount ?? this.starCount,
      );

  /// TDLib object type
  static const String defaultObjectId = 'storePaymentPurposeStars';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
