part of '../tdapi.dart';

/// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
///
/// Resends phone number confirmation code.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendPhoneNumberConfirmationCode extends TdFunction {
  
  /// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Resends phone number confirmation code.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberConfirmationCode();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResendPhoneNumberConfirmationCode copyWith() => const ResendPhoneNumberConfirmationCode();

  /// TDLib object type
  static const String objectType = 'resendPhoneNumberConfirmationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
