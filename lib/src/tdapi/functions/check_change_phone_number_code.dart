part of '../tdapi.dart';

/// **CheckChangePhoneNumberCode** *(checkChangePhoneNumberCode)* - TDLib function
///
/// Checks the authentication code sent to confirm a new phone number of the user.
///
/// * [code]: Authentication code to check.
///
/// [Ok] is returned on completion.
final class CheckChangePhoneNumberCode extends TdFunction {
  
  /// **CheckChangePhoneNumberCode** *(checkChangePhoneNumberCode)* - TDLib function
  ///
  /// Checks the authentication code sent to confirm a new phone number of the user.
  ///
  /// * [code]: Authentication code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckChangePhoneNumberCode({
    required this.code,
  });
  
  /// Authentication code to check
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
  /// * [code]: Authentication code to check
  CheckChangePhoneNumberCode copyWith({
    String? code,
  }) => CheckChangePhoneNumberCode(
    code: code ?? this.code,
  );

  /// TDLib object type
  static const String objectType = 'checkChangePhoneNumberCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
