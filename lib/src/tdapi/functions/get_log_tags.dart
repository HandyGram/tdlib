part of '../tdapi.dart';

/// **GetLogTags** *(getLogTags)* - TDLib function
///
/// Returns list of available TDLib internal log tags, for example,.
///
/// [LogTags] is returned on completion.
final class GetLogTags extends TdFunction {
  
  /// **GetLogTags** *(getLogTags)* - TDLib function
  ///
  /// Returns list of available TDLib internal log tags, for example,.
  ///
  /// [LogTags] is returned on completion.
  const GetLogTags();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetLogTags copyWith() => const GetLogTags();

  /// TDLib object type
  static const String objectType = 'getLogTags';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
