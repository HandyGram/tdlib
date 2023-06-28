part of '../tdapi.dart';

/// **SendAuthenticationFirebaseSms** *(sendAuthenticationFirebaseSms)* - TDLib function
///
/// Sends Firebase Authentication SMS to the phone number of the user. Works only when the current authorization state is authorizationStateWaitCode and the server returned code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos.
///
/// * [token]: SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application.
///
/// [Ok] is returned on completion.
final class SendAuthenticationFirebaseSms extends TdFunction {
  
  /// **SendAuthenticationFirebaseSms** *(sendAuthenticationFirebaseSms)* - TDLib function
  ///
  /// Sends Firebase Authentication SMS to the phone number of the user. Works only when the current authorization state is authorizationStateWaitCode and the server returned code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos.
  ///
  /// * [token]: SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application.
  ///
  /// [Ok] is returned on completion.
  const SendAuthenticationFirebaseSms({
    required this.token,
  });
  
  /// SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "token": token,
      "@extra": extra,
		};
	}

  
  SendAuthenticationFirebaseSms copyWith({
    String? token,
  }) => SendAuthenticationFirebaseSms(
    token: token ?? this.token,
  );

  static const String objectType = 'sendAuthenticationFirebaseSms';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
