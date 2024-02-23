part of '../tdapi.dart';

/// **PremiumGiftCodePaymentOptions** *(premiumGiftCodePaymentOptions)* - basic class
///
/// Contains a list of options for creating Telegram Premium gift codes.
///
/// * [options]: The list of options.
final class PremiumGiftCodePaymentOptions extends TdObject {
  
  /// **PremiumGiftCodePaymentOptions** *(premiumGiftCodePaymentOptions)* - basic class
  ///
  /// Contains a list of options for creating Telegram Premium gift codes.
  ///
  /// * [options]: The list of options.
  const PremiumGiftCodePaymentOptions({
    required this.options,
    this.extra,
    this.clientId,
  });
  
  /// The list of options
  final List<PremiumGiftCodePaymentOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumGiftCodePaymentOptions.fromJson(Map<String, dynamic> json) => PremiumGiftCodePaymentOptions(
    options: List<PremiumGiftCodePaymentOption>.from((json['options'] ?? []).map((item) => PremiumGiftCodePaymentOption.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "options": options.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [options]: The list of options
  PremiumGiftCodePaymentOptions copyWith({
    List<PremiumGiftCodePaymentOption>? options,
    dynamic extra,
    int? clientId,
  }) => PremiumGiftCodePaymentOptions(
    options: options ?? this.options,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'premiumGiftCodePaymentOptions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
