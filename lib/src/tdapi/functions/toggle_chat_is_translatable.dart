part of '../tdapi.dart';

/// **ToggleChatIsTranslatable** *(toggleChatIsTranslatable)* - TDLib function
///
/// Changes the translatable state of a chat; for Telegram Premium users only.
///
/// * [chatId]: Chat identifier.
/// * [isTranslatable]: New value of is_translatable.
///
/// [Ok] is returned on completion.
final class ToggleChatIsTranslatable extends TdFunction {
  
  /// **ToggleChatIsTranslatable** *(toggleChatIsTranslatable)* - TDLib function
  ///
  /// Changes the translatable state of a chat; for Telegram Premium users only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isTranslatable]: New value of is_translatable.
  ///
  /// [Ok] is returned on completion.
  const ToggleChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of is_translatable
  final bool isTranslatable;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "is_translatable": isTranslatable,
      "@extra": extra,
		};
	}

  
  ToggleChatIsTranslatable copyWith({
    int? chatId,
    bool? isTranslatable,
  }) => ToggleChatIsTranslatable(
    chatId: chatId ?? this.chatId,
    isTranslatable: isTranslatable ?? this.isTranslatable,
  );

  static const String objectType = 'toggleChatIsTranslatable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
