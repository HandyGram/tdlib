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
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StorePaymentPurposePremiumSubscription.objectType:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeGiftedPremium.objectType:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
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
  static const String objectType = 'storePaymentPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
///
/// The user subscribed to Telegram Premium.
///
/// * [isRestore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
/// * [isUpgrade]: Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store.
final class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  
  /// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
  ///
  /// The user subscribed to Telegram Premium.
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
  factory StorePaymentPurposePremiumSubscription.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumSubscription(
    isRestore: json['is_restore'],
    isUpgrade: json['is_upgrade'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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
  }) => StorePaymentPurposePremiumSubscription(
    isRestore: isRestore ?? this.isRestore,
    isUpgrade: isUpgrade ?? this.isUpgrade,
  );

  /// TDLib object type
  static const String objectType = 'storePaymentPurposePremiumSubscription';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
///
/// The user gifted Telegram Premium to another user.
///
/// * [userId]: Identifier of the user for which Premium was gifted.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
final class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {
  
  /// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
  ///
  /// The user gifted Telegram Premium to another user.
  ///
  /// * [userId]: Identifier of the user for which Premium was gifted.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });
  
  /// Identifier of the user for which Premium was gifted 
  final int userId;

  /// ISO 4217 currency code of the payment currency 
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory StorePaymentPurposeGiftedPremium.fromJson(Map<String, dynamic> json) => StorePaymentPurposeGiftedPremium(
    userId: json['user_id'],
    currency: json['currency'],
    amount: json['amount'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "currency": currency,
      "amount": amount,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user for which Premium was gifted 
  /// * [currency]: ISO 4217 currency code of the payment currency 
  /// * [amount]: Paid amount, in the smallest units of the currency
  @override
  StorePaymentPurposeGiftedPremium copyWith({
    int? userId,
    String? currency,
    int? amount,
  }) => StorePaymentPurposeGiftedPremium(
    userId: userId ?? this.userId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
  );

  /// TDLib object type
  static const String objectType = 'storePaymentPurposeGiftedPremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
