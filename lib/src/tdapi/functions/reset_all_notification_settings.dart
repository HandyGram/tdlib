part of '../tdapi.dart';

/// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
///
/// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
///
/// [Ok] is returned on completion.
final class ResetAllNotificationSettings extends TdFunction {
  
  /// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
  ///
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
  ///
  /// [Ok] is returned on completion.
  const ResetAllNotificationSettings();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ResetAllNotificationSettings copyWith() => const ResetAllNotificationSettings();

  /// TDLib object type
  static const String objectType = 'resetAllNotificationSettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
