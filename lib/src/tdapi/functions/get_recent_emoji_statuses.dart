part of '../tdapi.dart';

/// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
///
/// Returns recent emoji statuses.
///
/// [EmojiStatuses] is returned on completion.
final class GetRecentEmojiStatuses extends TdFunction {
  
  /// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
  ///
  /// Returns recent emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetRecentEmojiStatuses();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

  /// TDLib object type
  static const String objectType = 'getRecentEmojiStatuses';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
