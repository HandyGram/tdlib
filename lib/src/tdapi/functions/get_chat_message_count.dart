part of '../tdapi.dart';

/// **GetChatMessageCount** *(getChatMessageCount)* - TDLib function
///
/// Returns approximate number of messages of the specified type in the chat.
///
/// * [chatId]: Identifier of the chat in which to count messages.
/// * [filter]: Filter for message content; searchMessagesFilterEmpty is unsupported in this function.
/// * [returnLocal]: Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally.
///
/// [Count] is returned on completion.
final class GetChatMessageCount extends TdFunction {
  
  /// **GetChatMessageCount** *(getChatMessageCount)* - TDLib function
  ///
  /// Returns approximate number of messages of the specified type in the chat.
  ///
  /// * [chatId]: Identifier of the chat in which to count messages.
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty is unsupported in this function.
  /// * [returnLocal]: Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally.
  ///
  /// [Count] is returned on completion.
  const GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.returnLocal,
  });
  
  /// Identifier of the chat in which to count messages
  final int chatId;

  /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  final SearchMessagesFilter filter;

  /// Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
  final bool returnLocal;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "return_local": returnLocal,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat in which to count messages
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  /// * [return_local]: Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
  GetChatMessageCount copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    bool? returnLocal,
  }) => GetChatMessageCount(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    returnLocal: returnLocal ?? this.returnLocal,
  );

  /// TDLib object type
  static const String objectType = 'getChatMessageCount';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
