part of '../tdapi.dart';

/// **CanPurchasePremium** *(canPurchasePremium)* - TDLib function
///
/// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase.
///
/// * [purpose]: Transaction purpose.
///
/// [Ok] is returned on completion.
final class CanPurchasePremium extends TdFunction {
  
  /// **CanPurchasePremium** *(canPurchasePremium)* - TDLib function
  ///
  /// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase.
  ///
  /// * [purpose]: Transaction purpose.
  ///
  /// [Ok] is returned on completion.
  const CanPurchasePremium({
    required this.purpose,
  });
  
  /// Transaction purpose
  final StorePaymentPurpose purpose;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "purpose": purpose.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [purpose]: Transaction purpose
  CanPurchasePremium copyWith({
    StorePaymentPurpose? purpose,
  }) => CanPurchasePremium(
    purpose: purpose ?? this.purpose,
  );

  /// TDLib object type
  static const String objectType = 'canPurchasePremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
