part of '../tdapi.dart';

/// **ResetAuthenticationEmailAddress** *(resetAuthenticationEmailAddress)* - TDLib function
///
/// Resets the login email address. May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending.. Works only when the current authorization state is authorizationStateWaitEmailCode and authorization_state.can_reset_email_address == true.
///
/// [Ok] is returned on completion.
final class ResetAuthenticationEmailAddress extends TdFunction {
  
  /// **ResetAuthenticationEmailAddress** *(resetAuthenticationEmailAddress)* - TDLib function
  ///
  /// Resets the login email address. May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending.. Works only when the current authorization state is authorizationStateWaitEmailCode and authorization_state.can_reset_email_address == true.
  ///
  /// [Ok] is returned on completion.
  const ResetAuthenticationEmailAddress();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResetAuthenticationEmailAddress copyWith() => const ResetAuthenticationEmailAddress();

  /// TDLib object type
  static const String objectType = 'resetAuthenticationEmailAddress';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
