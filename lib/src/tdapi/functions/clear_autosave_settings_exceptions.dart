part of '../tdapi.dart';

/// **ClearAutosaveSettingsExceptions** *(clearAutosaveSettingsExceptions)* - TDLib function
///
/// Clears the list of all autosave settings exceptions. The method is guaranteed to work only after at least one call to getAutosaveSettings.
///
/// [Ok] is returned on completion.
final class ClearAutosaveSettingsExceptions extends TdFunction {
  
  /// **ClearAutosaveSettingsExceptions** *(clearAutosaveSettingsExceptions)* - TDLib function
  ///
  /// Clears the list of all autosave settings exceptions. The method is guaranteed to work only after at least one call to getAutosaveSettings.
  ///
  /// [Ok] is returned on completion.
  const ClearAutosaveSettingsExceptions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClearAutosaveSettingsExceptions copyWith() => const ClearAutosaveSettingsExceptions();

  static const String objectType = 'clearAutosaveSettingsExceptions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
