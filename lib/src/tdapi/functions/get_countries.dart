part of '../tdapi.dart';

/// **GetCountries** *(getCountries)* - TDLib function
///
/// Returns information about existing countries. Can be called before authorization.
///
/// [Countries] is returned on completion.
final class GetCountries extends TdFunction {
  
  /// **GetCountries** *(getCountries)* - TDLib function
  ///
  /// Returns information about existing countries. Can be called before authorization.
  ///
  /// [Countries] is returned on completion.
  const GetCountries();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetCountries copyWith() => const GetCountries();

  /// TDLib object type
  static const String objectType = 'getCountries';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
