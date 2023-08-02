part of '../tdapi.dart';

/// **AssignGooglePlayTransaction** *(assignGooglePlayTransaction)* - TDLib function
///
/// Informs server about a purchase through Google Play. For official applications only.
///
/// * [packageName]: Application package name.
/// * [storeProductId]: Identifier of the purchased store product.
/// * [purchaseToken]: Google Play purchase token.
/// * [purpose]: Transaction purpose.
///
/// [Ok] is returned on completion.
final class AssignGooglePlayTransaction extends TdFunction {
  
  /// **AssignGooglePlayTransaction** *(assignGooglePlayTransaction)* - TDLib function
  ///
  /// Informs server about a purchase through Google Play. For official applications only.
  ///
  /// * [packageName]: Application package name.
  /// * [storeProductId]: Identifier of the purchased store product.
  /// * [purchaseToken]: Google Play purchase token.
  /// * [purpose]: Transaction purpose.
  ///
  /// [Ok] is returned on completion.
  const AssignGooglePlayTransaction({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
    required this.purpose,
  });
  
  /// Application package name
  final String packageName;

  /// Identifier of the purchased store product
  final String storeProductId;

  /// Google Play purchase token
  final String purchaseToken;

  /// Transaction purpose
  final StorePaymentPurpose purpose;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "package_name": packageName,
      "store_product_id": storeProductId,
      "purchase_token": purchaseToken,
      "purpose": purpose.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [package_name]: Application package name
  /// * [store_product_id]: Identifier of the purchased store product
  /// * [purchase_token]: Google Play purchase token
  /// * [purpose]: Transaction purpose
  AssignGooglePlayTransaction copyWith({
    String? packageName,
    String? storeProductId,
    String? purchaseToken,
    StorePaymentPurpose? purpose,
  }) => AssignGooglePlayTransaction(
    packageName: packageName ?? this.packageName,
    storeProductId: storeProductId ?? this.storeProductId,
    purchaseToken: purchaseToken ?? this.purchaseToken,
    purpose: purpose ?? this.purpose,
  );

  /// TDLib object type
  static const String objectType = 'assignGooglePlayTransaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
