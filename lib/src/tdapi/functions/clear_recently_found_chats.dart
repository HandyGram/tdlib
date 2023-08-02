part of '../tdapi.dart';

/// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
///
/// Clears the list of recently found chats.
///
/// [Ok] is returned on completion.
final class ClearRecentlyFoundChats extends TdFunction {
  
  /// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
  ///
  /// Clears the list of recently found chats.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentlyFoundChats();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  ClearRecentlyFoundChats copyWith() => const ClearRecentlyFoundChats();

  /// TDLib object type
  static const String objectType = 'clearRecentlyFoundChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
