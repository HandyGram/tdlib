part of '../tdapi.dart';

/// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
///
/// Terminates all other sessions of the current user.
///
/// [Ok] is returned on completion.
final class TerminateAllOtherSessions extends TdFunction {
  
  /// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
  ///
  /// Terminates all other sessions of the current user.
  ///
  /// [Ok] is returned on completion.
  const TerminateAllOtherSessions();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  TerminateAllOtherSessions copyWith() => const TerminateAllOtherSessions();

  /// TDLib object type
  static const String objectType = 'terminateAllOtherSessions';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
