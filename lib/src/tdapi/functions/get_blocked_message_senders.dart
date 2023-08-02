part of '../tdapi.dart';

/// **GetBlockedMessageSenders** *(getBlockedMessageSenders)* - TDLib function
///
/// Returns users and chats that were blocked by the current user.
///
/// * [offset]: Number of users and chats to skip in the result; must be non-negative.
/// * [limit]: The maximum number of users and chats to return; up to 100.
///
/// [MessageSenders] is returned on completion.
final class GetBlockedMessageSenders extends TdFunction {
  
  /// **GetBlockedMessageSenders** *(getBlockedMessageSenders)* - TDLib function
  ///
  /// Returns users and chats that were blocked by the current user.
  ///
  /// * [offset]: Number of users and chats to skip in the result; must be non-negative.
  /// * [limit]: The maximum number of users and chats to return; up to 100.
  ///
  /// [MessageSenders] is returned on completion.
  const GetBlockedMessageSenders({
    required this.offset,
    required this.limit,
  });
  
  /// Number of users and chats to skip in the result; must be non-negative 
  final int offset;

  /// The maximum number of users and chats to return; up to 100
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [offset]: Number of users and chats to skip in the result; must be non-negative 
  /// * [limit]: The maximum number of users and chats to return; up to 100
  GetBlockedMessageSenders copyWith({
    int? offset,
    int? limit,
  }) => GetBlockedMessageSenders(
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String objectType = 'getBlockedMessageSenders';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
