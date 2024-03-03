part of '../tdapi.dart';

/// **ChangePhoneNumber** *(changePhoneNumber)* - TDLib function
///
/// Changes the phone number of the user and sends an authentication code to the user's new phone number; for official Android and iOS applications only. On success, returns information about the sent code.
///
/// * [phoneNumber]: The new phone number of the user in international format.
/// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ChangePhoneNumber extends TdFunction {
  /// **ChangePhoneNumber** *(changePhoneNumber)* - TDLib function
  ///
  /// Changes the phone number of the user and sends an authentication code to the user's new phone number; for official Android and iOS applications only. On success, returns information about the sent code.
  ///
  /// * [phoneNumber]: The new phone number of the user in international format.
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ChangePhoneNumber({
    required this.phoneNumber,
    this.settings,
  });

  /// The new phone number of the user in international format
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
  /// * [phone_number]: The new phone number of the user in international format
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings
  ChangePhoneNumber copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) =>
      ChangePhoneNumber(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        settings: settings ?? this.settings,
      );

  /// TDLib object type
  static const String defaultObjectId = 'changePhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
