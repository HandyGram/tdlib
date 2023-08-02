part of '../tdapi.dart';

/// **SearchUserByPhoneNumber** *(searchUserByPhoneNumber)* - TDLib function
///
/// Searches a user by their phone number. Returns a 404 error if the user can't be found.
///
/// * [phoneNumber]: Phone number to search for.
///
/// [User] is returned on completion.
final class SearchUserByPhoneNumber extends TdFunction {
  
  /// **SearchUserByPhoneNumber** *(searchUserByPhoneNumber)* - TDLib function
  ///
  /// Searches a user by their phone number. Returns a 404 error if the user can't be found.
  ///
  /// * [phoneNumber]: Phone number to search for.
  ///
  /// [User] is returned on completion.
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
  });
  
  /// Phone number to search for
  final String phoneNumber;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [phone_number]: Phone number to search for
  SearchUserByPhoneNumber copyWith({
    String? phoneNumber,
  }) => SearchUserByPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  /// TDLib object type
  static const String objectType = 'searchUserByPhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
