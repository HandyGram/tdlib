part of '../tdapi.dart';

/// **ResendAuthenticationCode** *(resendAuthenticationCode)* - TDLib function
///
/// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed,. or when the current authorization state is authorizationStateWaitEmailCode.
///
/// [Ok] is returned on completion.
final class ResendAuthenticationCode extends TdFunction {
  
  /// **ResendAuthenticationCode** *(resendAuthenticationCode)* - TDLib function
  ///
  /// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed,. or when the current authorization state is authorizationStateWaitEmailCode.
  ///
  /// [Ok] is returned on completion.
  const ResendAuthenticationCode();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResendAuthenticationCode copyWith() => const ResendAuthenticationCode();

  /// TDLib object type
  static const String defaultObjectId = 'resendAuthenticationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
