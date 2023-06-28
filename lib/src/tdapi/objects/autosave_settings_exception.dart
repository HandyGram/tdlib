part of '../tdapi.dart';

/// **AutosaveSettingsException** *(autosaveSettingsException)* - basic class
///
/// Contains autosave settings for a chat, which overrides default settings for the corresponding scope.
///
/// * [chatId]: Chat identifier.
/// * [settings]: Autosave settings for the chat.
final class AutosaveSettingsException extends TdObject {
  
  /// **AutosaveSettingsException** *(autosaveSettingsException)* - basic class
  ///
  /// Contains autosave settings for a chat, which overrides default settings for the corresponding scope.
  ///
  /// * [chatId]: Chat identifier.
  /// * [settings]: Autosave settings for the chat.
  const AutosaveSettingsException({
    required this.chatId,
    required this.settings,
  });
  
  /// Chat identifier
  final int chatId;

  /// Autosave settings for the chat
  final ScopeAutosaveSettings settings;
  
  /// Parse from a json
  factory AutosaveSettingsException.fromJson(Map<String, dynamic> json) => AutosaveSettingsException(
    chatId: json['chat_id'],
    settings: ScopeAutosaveSettings.fromJson(json['settings']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "settings": settings.toJson(),
		};
	}

  
  AutosaveSettingsException copyWith({
    int? chatId,
    ScopeAutosaveSettings? settings,
  }) => AutosaveSettingsException(
    chatId: chatId ?? this.chatId,
    settings: settings ?? this.settings,
  );

  static const String objectType = 'autosaveSettingsException';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
