part of '../tdapi.dart';

/// **GetDefaultMessageAutoDeleteTime** *(getDefaultMessageAutoDeleteTime)* - TDLib function
///
/// Returns default message auto-delete time setting for new chats.
///
/// [MessageAutoDeleteTime] is returned on completion.
final class GetDefaultMessageAutoDeleteTime extends TdFunction {
  
  /// **GetDefaultMessageAutoDeleteTime** *(getDefaultMessageAutoDeleteTime)* - TDLib function
  ///
  /// Returns default message auto-delete time setting for new chats.
  ///
  /// [MessageAutoDeleteTime] is returned on completion.
  const GetDefaultMessageAutoDeleteTime();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetDefaultMessageAutoDeleteTime copyWith() => const GetDefaultMessageAutoDeleteTime();

  /// TDLib object type
  static const String objectType = 'getDefaultMessageAutoDeleteTime';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
