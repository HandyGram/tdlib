part of '../tdapi.dart';

/// **GetRecentlyOpenedChats** *(getRecentlyOpenedChats)* - TDLib function
///
/// Returns recently opened chats; this is an offline request. Returns chats in the order of last opening.
///
/// * [limit]: The maximum number of chats to be returned.
///
/// [Chats] is returned on completion.
final class GetRecentlyOpenedChats extends TdFunction {
  
  /// **GetRecentlyOpenedChats** *(getRecentlyOpenedChats)* - TDLib function
  ///
  /// Returns recently opened chats; this is an offline request. Returns chats in the order of last opening.
  ///
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const GetRecentlyOpenedChats({
    required this.limit,
  });
  
  /// The maximum number of chats to be returned
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [limit]: The maximum number of chats to be returned
  GetRecentlyOpenedChats copyWith({
    int? limit,
  }) => GetRecentlyOpenedChats(
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String objectType = 'getRecentlyOpenedChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
