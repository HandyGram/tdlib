part of '../tdapi.dart';

/// **SetApplicationVerificationToken** *(setApplicationVerificationToken)* - TDLib function
///
/// Application verification has been completed. Can be called before authorization.
///
/// * [verificationId]: Unique identifier for the verification process as received from updateApplicationVerificationRequired.
/// * [token]: Play Integrity API token for the Android application, or secret from push notification for the iOS application;. pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request.
///
/// [Ok] is returned on completion.
final class SetApplicationVerificationToken extends TdFunction {
  /// **SetApplicationVerificationToken** *(setApplicationVerificationToken)* - TDLib function
  ///
  /// Application verification has been completed. Can be called before authorization.
  ///
  /// * [verificationId]: Unique identifier for the verification process as received from updateApplicationVerificationRequired.
  /// * [token]: Play Integrity API token for the Android application, or secret from push notification for the iOS application;. pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request.
  ///
  /// [Ok] is returned on completion.
  const SetApplicationVerificationToken({
    required this.verificationId,
    required this.token,
  });

  /// Unique identifier for the verification process as received from updateApplicationVerificationRequired
  final int verificationId;

  /// Play Integrity API token for the Android application, or secret from push notification for the iOS application;. pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request
  final String token;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "verification_id": verificationId,
      "token": token,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [verification_id]: Unique identifier for the verification process as received from updateApplicationVerificationRequired
  /// * [token]: Play Integrity API token for the Android application, or secret from push notification for the iOS application;. pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request
  SetApplicationVerificationToken copyWith({
    int? verificationId,
    String? token,
  }) =>
      SetApplicationVerificationToken(
        verificationId: verificationId ?? this.verificationId,
        token: token ?? this.token,
      );

  /// TDLib object type
  static const String defaultObjectId = 'setApplicationVerificationToken';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
