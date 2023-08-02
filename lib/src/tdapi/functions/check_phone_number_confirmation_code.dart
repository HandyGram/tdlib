part of '../tdapi.dart';

/// **CheckPhoneNumberConfirmationCode** *(checkPhoneNumberConfirmationCode)* - TDLib function
///
/// Checks phone number confirmation code.
///
/// * [code]: Confirmation code to check.
///
/// [Ok] is returned on completion.
final class CheckPhoneNumberConfirmationCode extends TdFunction {
  
  /// **CheckPhoneNumberConfirmationCode** *(checkPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Checks phone number confirmation code.
  ///
  /// * [code]: Confirmation code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckPhoneNumberConfirmationCode({
    required this.code,
  });
  
  /// Confirmation code to check
  final String code;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "code": code,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [code]: Confirmation code to check
  CheckPhoneNumberConfirmationCode copyWith({
    String? code,
  }) => CheckPhoneNumberConfirmationCode(
    code: code ?? this.code,
  );

  /// TDLib object type
  static const String objectType = 'checkPhoneNumberConfirmationCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
