part of '../tdapi.dart';

/// **BoostChat** *(boostChat)* - TDLib function
///
/// Boosts a chat.
///
/// * [chatId]: Identifier of the chat.
///
/// [Ok] is returned on completion.
final class BoostChat extends TdFunction {
  
  /// **BoostChat** *(boostChat)* - TDLib function
  ///
  /// Boosts a chat.
  ///
  /// * [chatId]: Identifier of the chat.
  ///
  /// [Ok] is returned on completion.
  const BoostChat({
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
  BoostChat copyWith({
    int? chatId,
  }) => BoostChat(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'boostChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
