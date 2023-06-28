part of '../tdapi.dart';

/// **GetAutosaveSettings** *(getAutosaveSettings)* - TDLib function
///
/// Returns autosave settings for the current user.
///
/// [AutosaveSettings] is returned on completion.
final class GetAutosaveSettings extends TdFunction {
  
  /// **GetAutosaveSettings** *(getAutosaveSettings)* - TDLib function
  ///
  /// Returns autosave settings for the current user.
  ///
  /// [AutosaveSettings] is returned on completion.
  const GetAutosaveSettings();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetAutosaveSettings copyWith() => const GetAutosaveSettings();

  static const String objectType = 'getAutosaveSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
