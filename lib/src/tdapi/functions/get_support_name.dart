part of '../tdapi.dart';

/// **GetSupportName** *(getSupportName)* - TDLib function
///
/// Returns localized name of the Telegram support user; for Telegram support only.
///
/// [Text] is returned on completion.
final class GetSupportName extends TdFunction {
  
  /// **GetSupportName** *(getSupportName)* - TDLib function
  ///
  /// Returns localized name of the Telegram support user; for Telegram support only.
  ///
  /// [Text] is returned on completion.
  const GetSupportName();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetSupportName copyWith() => const GetSupportName();

  static const String objectType = 'getSupportName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
