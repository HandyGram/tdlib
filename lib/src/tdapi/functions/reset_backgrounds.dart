part of '../tdapi.dart';

/// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
///
/// Resets list of installed backgrounds to its default value.
///
/// [Ok] is returned on completion.
final class ResetBackgrounds extends TdFunction {
  
  /// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
  ///
  /// Resets list of installed backgrounds to its default value.
  ///
  /// [Ok] is returned on completion.
  const ResetBackgrounds();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResetBackgrounds copyWith() => const ResetBackgrounds();

  /// TDLib object type
  static const String objectType = 'resetBackgrounds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
