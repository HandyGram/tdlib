part of '../tdapi.dart';

/// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
///
/// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
///
/// [AuthorizationState] is returned on completion.
final class GetAuthorizationState extends TdFunction {
  
  /// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
  ///
  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
  ///
  /// [AuthorizationState] is returned on completion.
  const GetAuthorizationState();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetAuthorizationState copyWith() => const GetAuthorizationState();

  /// TDLib object type
  static const String objectType = 'getAuthorizationState';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
