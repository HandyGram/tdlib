part of '../tdapi.dart';

/// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
///
/// Resends the code to verify a phone number to be added to a user's Telegram Passport.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendPhoneNumberVerificationCode extends TdFunction {
  /// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify a phone number to be added to a user's Telegram Passport.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberVerificationCode();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "@extra": extra,
    };
  }

  /// Copy instance with no modifications.
  ResendPhoneNumberVerificationCode copyWith() =>
      const ResendPhoneNumberVerificationCode();

  /// TDLib object type
  static const String defaultObjectId = 'resendPhoneNumberVerificationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
