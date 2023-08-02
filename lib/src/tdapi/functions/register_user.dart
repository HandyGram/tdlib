part of '../tdapi.dart';

/// **RegisterUser** *(registerUser)* - TDLib function
///
/// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
///
/// * [firstName]: The first name of the user; 1-64 characters.
/// * [lastName]: The last name of the user; 0-64 characters.
///
/// [Ok] is returned on completion.
final class RegisterUser extends TdFunction {
  
  /// **RegisterUser** *(registerUser)* - TDLib function
  ///
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
  ///
  /// * [firstName]: The first name of the user; 1-64 characters.
  /// * [lastName]: The last name of the user; 0-64 characters.
  ///
  /// [Ok] is returned on completion.
  const RegisterUser({
    required this.firstName,
    required this.lastName,
  });
  
  /// The first name of the user; 1-64 characters
  final String firstName;

  /// The last name of the user; 0-64 characters
  final String lastName;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "first_name": firstName,
      "last_name": lastName,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [first_name]: The first name of the user; 1-64 characters
  /// * [last_name]: The last name of the user; 0-64 characters
  RegisterUser copyWith({
    String? firstName,
    String? lastName,
  }) => RegisterUser(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  /// TDLib object type
  static const String objectType = 'registerUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
