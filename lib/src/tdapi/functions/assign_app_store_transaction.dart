part of '../tdapi.dart';

/// **AssignAppStoreTransaction** *(assignAppStoreTransaction)* - TDLib function
///
/// Informs server about a purchase through App Store. For official applications only.
///
/// * [receipt]: App Store receipt.
/// * [purpose]: Transaction purpose.
///
/// [Ok] is returned on completion.
final class AssignAppStoreTransaction extends TdFunction {
  
  /// **AssignAppStoreTransaction** *(assignAppStoreTransaction)* - TDLib function
  ///
  /// Informs server about a purchase through App Store. For official applications only.
  ///
  /// * [receipt]: App Store receipt.
  /// * [purpose]: Transaction purpose.
  ///
  /// [Ok] is returned on completion.
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.purpose,
  });
  
  /// App Store receipt 
  final String receipt;

  /// Transaction purpose
  final StorePaymentPurpose purpose;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "receipt": receipt,
      "purpose": purpose.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [receipt]: App Store receipt 
  /// * [purpose]: Transaction purpose
  AssignAppStoreTransaction copyWith({
    String? receipt,
    StorePaymentPurpose? purpose,
  }) => AssignAppStoreTransaction(
    receipt: receipt ?? this.receipt,
    purpose: purpose ?? this.purpose,
  );

  /// TDLib object type
  static const String defaultObjectId = 'assignAppStoreTransaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
