part of '../tdapi.dart';

/// **GetChatBoosts** *(getChatBoosts)* - TDLib function
///
/// Returns list of boosts applied to a chat. The user must be an administrator in the channel chat to get the list of boosts.
///
/// * [chatId]: Identifier of the chat.
/// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit.
///
/// [FoundChatBoosts] is returned on completion.
final class GetChatBoosts extends TdFunction {
  
  /// **GetChatBoosts** *(getChatBoosts)* - TDLib function
  ///
  /// Returns list of boosts applied to a chat. The user must be an administrator in the channel chat to get the list of boosts.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit.
  ///
  /// [FoundChatBoosts] is returned on completion.
  const GetChatBoosts({
    required this.chatId,
    required this.offset,
    required this.limit,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  /// * [limit]: The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit
  GetChatBoosts copyWith({
    int? chatId,
    String? offset,
    int? limit,
  }) => GetChatBoosts(
    chatId: chatId ?? this.chatId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String objectType = 'getChatBoosts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
