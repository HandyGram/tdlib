part of '../tdapi.dart';

/// **GetPremiumGiftCodePaymentOptions** *(getPremiumGiftCodePaymentOptions)* - TDLib function
///
/// Returns available options for Telegram Premium gift code or giveaway creation.
///
/// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user; 0 if none.
///
/// [PremiumGiftCodePaymentOptions] is returned on completion.
final class GetPremiumGiftCodePaymentOptions extends TdFunction {
  /// **GetPremiumGiftCodePaymentOptions** *(getPremiumGiftCodePaymentOptions)* - TDLib function
  ///
  /// Returns available options for Telegram Premium gift code or giveaway creation.
  ///
  /// * [boostedChatId]: Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user; 0 if none.
  ///
  /// [PremiumGiftCodePaymentOptions] is returned on completion.
  const GetPremiumGiftCodePaymentOptions({
    required this.boostedChatId,
  });

  /// Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user; 0 if none
  final int boostedChatId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "boosted_chat_id": boostedChatId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [boosted_chat_id]: Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user; 0 if none
  GetPremiumGiftCodePaymentOptions copyWith({
    int? boostedChatId,
  }) =>
      GetPremiumGiftCodePaymentOptions(
        boostedChatId: boostedChatId ?? this.boostedChatId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getPremiumGiftCodePaymentOptions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
