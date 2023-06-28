part of '../tdapi.dart';

/// **GetRecommendedChatFolders** *(getRecommendedChatFolders)* - TDLib function
///
/// Returns recommended chat folders for the current user.
///
/// [RecommendedChatFolders] is returned on completion.
final class GetRecommendedChatFolders extends TdFunction {
  
  /// **GetRecommendedChatFolders** *(getRecommendedChatFolders)* - TDLib function
  ///
  /// Returns recommended chat folders for the current user.
  ///
  /// [RecommendedChatFolders] is returned on completion.
  const GetRecommendedChatFolders();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetRecommendedChatFolders copyWith() => const GetRecommendedChatFolders();

  static const String objectType = 'getRecommendedChatFolders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
