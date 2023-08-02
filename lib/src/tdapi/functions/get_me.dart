part of '../tdapi.dart';

/// **GetMe** *(getMe)* - TDLib function
///
/// Returns the current user.
///
/// [User] is returned on completion.
final class GetMe extends TdFunction {
  
  /// **GetMe** *(getMe)* - TDLib function
  ///
  /// Returns the current user.
  ///
  /// [User] is returned on completion.
  const GetMe();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetMe copyWith() => const GetMe();

  /// TDLib object type
  static const String objectType = 'getMe';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
