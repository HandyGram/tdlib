part of '../tdapi.dart';

/// **ToggleChatHasProtectedContent** *(toggleChatHasProtectedContent)* - TDLib function
///
/// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges.
///
/// * [chatId]: Chat identifier.
/// * [hasProtectedContent]: New value of has_protected_content.
///
/// [Ok] is returned on completion.
final class ToggleChatHasProtectedContent extends TdFunction {
  
  /// **ToggleChatHasProtectedContent** *(toggleChatHasProtectedContent)* - TDLib function
  ///
  /// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasProtectedContent]: New value of has_protected_content.
  ///
  /// [Ok] is returned on completion.
  const ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });
  
  /// Chat identifier
  final int chatId;

  /// New value of has_protected_content
  final bool hasProtectedContent;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [has_protected_content]: New value of has_protected_content
  ToggleChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
  }) => ToggleChatHasProtectedContent(
    chatId: chatId ?? this.chatId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
  );

  /// TDLib object type
  static const String defaultObjectId = 'toggleChatHasProtectedContent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
