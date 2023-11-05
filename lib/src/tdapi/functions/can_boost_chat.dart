part of '../tdapi.dart';

/// **CanBoostChat** *(canBoostChat)* - TDLib function
///
/// Checks whether the current user can boost a chat.
///
/// * [chatId]: Identifier of the chat.
///
/// [CanBoostChatResult] is returned on completion.
final class CanBoostChat extends TdFunction {
  
  /// **CanBoostChat** *(canBoostChat)* - TDLib function
  ///
  /// Checks whether the current user can boost a chat.
  ///
  /// * [chatId]: Identifier of the chat.
  ///
  /// [CanBoostChatResult] is returned on completion.
  const CanBoostChat({
    required this.chatId,
  });
  
  /// Identifier of the chat
  final int chatId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  CanBoostChat copyWith({
    int? chatId,
  }) => CanBoostChat(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
