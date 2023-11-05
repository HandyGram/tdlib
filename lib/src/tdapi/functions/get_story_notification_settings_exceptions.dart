part of '../tdapi.dart';

/// **GetStoryNotificationSettingsExceptions** *(getStoryNotificationSettingsExceptions)* - TDLib function
///
/// Returns list of chats with non-default notification settings for stories.
///
/// [Chats] is returned on completion.
final class GetStoryNotificationSettingsExceptions extends TdFunction {
  
  /// **GetStoryNotificationSettingsExceptions** *(getStoryNotificationSettingsExceptions)* - TDLib function
  ///
  /// Returns list of chats with non-default notification settings for stories.
  ///
  /// [Chats] is returned on completion.
  const GetStoryNotificationSettingsExceptions();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetStoryNotificationSettingsExceptions copyWith() => const GetStoryNotificationSettingsExceptions();

  /// TDLib object type
  static const String objectType = 'getStoryNotificationSettingsExceptions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
