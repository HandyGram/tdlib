part of '../tdapi.dart';

/// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
///
/// Clears the list of recently used emoji statuses.
///
/// [Ok] is returned on completion.
final class ClearRecentEmojiStatuses extends TdFunction {
  
  /// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
  ///
  /// Clears the list of recently used emoji statuses.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentEmojiStatuses();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ClearRecentEmojiStatuses copyWith() => const ClearRecentEmojiStatuses();

  /// TDLib object type
  static const String objectType = 'clearRecentEmojiStatuses';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
