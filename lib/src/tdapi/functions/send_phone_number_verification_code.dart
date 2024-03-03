part of '../tdapi.dart';

/// **SendPhoneNumberVerificationCode** *(sendPhoneNumberVerificationCode)* - TDLib function
///
/// Sends a code to verify a phone number to be added to a user's Telegram Passport.
///
/// * [phoneNumber]: The phone number of the user, in international format.
/// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class SendPhoneNumberVerificationCode extends TdFunction {
  /// **SendPhoneNumberVerificationCode** *(sendPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Sends a code to verify a phone number to be added to a user's Telegram Passport.
  ///
  /// * [phoneNumber]: The phone number of the user, in international format.
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const SendPhoneNumberVerificationCode({
    required this.phoneNumber,
    this.settings,
  });

  /// The phone number of the user, in international format
  final String phoneNumber;

  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [phone_number]: The phone number of the user, in international format
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings
  SendPhoneNumberVerificationCode copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) =>
      SendPhoneNumberVerificationCode(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        settings: settings ?? this.settings,
      );

  /// TDLib object type
  static const String defaultObjectId = 'sendPhoneNumberVerificationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
