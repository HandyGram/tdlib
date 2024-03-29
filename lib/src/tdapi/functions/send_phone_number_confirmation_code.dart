part of '../tdapi.dart';

/// **SendPhoneNumberConfirmationCode** *(sendPhoneNumberConfirmationCode)* - TDLib function
///
/// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation.
///
/// * [hash]: Hash value from the link.
/// * [phoneNumber]: Phone number value from the link.
/// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class SendPhoneNumberConfirmationCode extends TdFunction {
  /// **SendPhoneNumberConfirmationCode** *(sendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation.
  ///
  /// * [hash]: Hash value from the link.
  /// * [phoneNumber]: Phone number value from the link.
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const SendPhoneNumberConfirmationCode({
    required this.hash,
    required this.phoneNumber,
    this.settings,
  });

  /// Hash value from the link
  final String hash;

  /// Phone number value from the link
  final String phoneNumber;

  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "hash": hash,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [hash]: Hash value from the link
  /// * [phone_number]: Phone number value from the link
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings
  SendPhoneNumberConfirmationCode copyWith({
    String? hash,
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) =>
      SendPhoneNumberConfirmationCode(
        hash: hash ?? this.hash,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        settings: settings ?? this.settings,
      );

  /// TDLib object type
  static const String defaultObjectId = 'sendPhoneNumberConfirmationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
