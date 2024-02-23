part of '../tdapi.dart';

/// **ResendChangePhoneNumberCode** *(resendChangePhoneNumberCode)* - TDLib function
///
/// Resends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendChangePhoneNumberCode extends TdFunction {
  
  /// **ResendChangePhoneNumberCode** *(resendChangePhoneNumberCode)* - TDLib function
  ///
  /// Resends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendChangePhoneNumberCode();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResendChangePhoneNumberCode copyWith() => const ResendChangePhoneNumberCode();

  /// TDLib object type
  static const String defaultObjectId = 'resendChangePhoneNumberCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
