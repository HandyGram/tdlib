part of '../tdapi.dart';

/// **GetUserLink** *(getUserLink)* - TDLib function
///
/// Returns an HTTPS link, which can be used to get information about the current user.
///
/// [UserLink] is returned on completion.
final class GetUserLink extends TdFunction {
  
  /// **GetUserLink** *(getUserLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to get information about the current user.
  ///
  /// [UserLink] is returned on completion.
  const GetUserLink();
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "@extra": extra,
		};
	}

  /// Copy instance with no modifications.
  GetUserLink copyWith() => const GetUserLink();

  /// TDLib object type
  static const String defaultObjectId = 'getUserLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
