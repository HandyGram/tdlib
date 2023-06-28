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
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResetAuthenticationEmailAddress copyWith() => const ResetAuthenticationEmailAddress();

  static const String objectType = 'resetAuthenticationEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
