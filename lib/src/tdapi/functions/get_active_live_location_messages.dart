part of '../tdapi.dart';

/// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
///
/// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
///
/// [Messages] is returned on completion.
final class GetActiveLiveLocationMessages extends TdFunction {
  
  /// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
  ///
  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
  ///
  /// [Messages] is returned on completion.
  const GetActiveLiveLocationMessages();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetActiveLiveLocationMessages copyWith() => const GetActiveLiveLocationMessages();

  /// TDLib object type
  static const String defaultObjectId = 'getActiveLiveLocationMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
