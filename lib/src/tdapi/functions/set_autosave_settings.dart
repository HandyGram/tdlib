part of '../tdapi.dart';

/// **SetAutosaveSettings** *(setAutosaveSettings)* - TDLib function
///
/// Sets autosave settings for the given scope. The method is guaranteed to work only after at least one call to getAutosaveSettings.
///
/// * [scope]: Autosave settings scope.
/// * [settings]: New autosave settings for the scope; pass null to set autosave settings to default *(optional)*.
///
/// [Ok] is returned on completion.
final class SetAutosaveSettings extends TdFunction {
  
  /// **SetAutosaveSettings** *(setAutosaveSettings)* - TDLib function
  ///
  /// Sets autosave settings for the given scope. The method is guaranteed to work only after at least one call to getAutosaveSettings.
  ///
  /// * [scope]: Autosave settings scope.
  /// * [settings]: New autosave settings for the scope; pass null to set autosave settings to default *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetAutosaveSettings({
    required this.scope,
    this.settings,
  });
  
  /// Autosave settings scope 
  final AutosaveSettingsScope scope;

  /// New autosave settings for the scope; pass null to set autosave settings to default
  final ScopeAutosaveSettings? settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "scope": scope.toJson(),
      "settings": settings?.toJson(),
      "@extra": extra,
		};
	}

  
  SetAutosaveSettings copyWith({
    AutosaveSettingsScope? scope,
    ScopeAutosaveSettings? settings,
  }) => SetAutosaveSettings(
    scope: scope ?? this.scope,
    settings: settings ?? this.settings,
  );

  static const String objectType = 'setAutosaveSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
