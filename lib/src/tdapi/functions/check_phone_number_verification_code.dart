part of '../tdapi.dart';

/// **CheckPhoneNumberVerificationCode** *(checkPhoneNumberVerificationCode)* - TDLib function
///
/// Checks the phone number verification code for Telegram Passport.
///
/// * [code]: Verification code to check.
///
/// [Ok] is returned on completion.
final class CheckPhoneNumberVerificationCode extends TdFunction {
  
  /// **CheckPhoneNumberVerificationCode** *(checkPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Checks the phone number verification code for Telegram Passport.
  ///
  /// * [code]: Verification code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckPhoneNumberVerificationCode({
    required this.code,
  });
  
  /// Verification code to check
  final String code;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "code": code,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [code]: Verification code to check
  CheckPhoneNumberVerificationCode copyWith({
    String? code,
  }) => CheckPhoneNumberVerificationCode(
    code: code ?? this.code,
  );

  /// TDLib object type
  static const String defaultObjectId = 'checkPhoneNumberVerificationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
