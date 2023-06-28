part of '../tdapi.dart';

/// **AutosaveSettingsScope** *(autosaveSettingsScope)* - parent
///
/// Describes scope of autosave settings.
sealed class AutosaveSettingsScope extends TdObject {
  
  /// **AutosaveSettingsScope** *(autosaveSettingsScope)* - parent
  ///
  /// Describes scope of autosave settings.
  const AutosaveSettingsScope();
  
  /// a AutosaveSettingsScope return type can be :
  /// * [AutosaveSettingsScopePrivateChats]
  /// * [AutosaveSettingsScopeGroupChats]
  /// * [AutosaveSettingsScopeChannelChats]
  /// * [AutosaveSettingsScopeChat]
  factory AutosaveSettingsScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case AutosaveSettingsScopePrivateChats.objectType:
        return AutosaveSettingsScopePrivateChats.fromJson(json);
      case AutosaveSettingsScopeGroupChats.objectType:
        return AutosaveSettingsScopeGroupChats.fromJson(json);
      case AutosaveSettingsScopeChannelChats.objectType:
        return AutosaveSettingsScopeChannelChats.fromJson(json);
      case AutosaveSettingsScopeChat.objectType:
        return AutosaveSettingsScopeChat.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of AutosaveSettingsScope)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  AutosaveSettingsScope copyWith();

  static const String objectType = 'autosaveSettingsScope';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AutosaveSettingsScopePrivateChats** *(autosaveSettingsScopePrivateChats)* - child of AutosaveSettingsScope
///
/// Autosave settings applied to all private chats without chat-specific settings.
final class AutosaveSettingsScopePrivateChats extends AutosaveSettingsScope {
  
  /// **AutosaveSettingsScopePrivateChats** *(autosaveSettingsScopePrivateChats)* - child of AutosaveSettingsScope
  ///
  /// Autosave settings applied to all private chats without chat-specific settings.
  const AutosaveSettingsScopePrivateChats();
  
  /// Parse from a json
  factory AutosaveSettingsScopePrivateChats.fromJson(Map<String, dynamic> json) => const AutosaveSettingsScopePrivateChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AutosaveSettingsScopePrivateChats copyWith() => const AutosaveSettingsScopePrivateChats();

  static const String objectType = 'autosaveSettingsScopePrivateChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AutosaveSettingsScopeGroupChats** *(autosaveSettingsScopeGroupChats)* - child of AutosaveSettingsScope
///
/// Autosave settings applied to all basic group and supergroup chats without chat-specific settings.
final class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  
  /// **AutosaveSettingsScopeGroupChats** *(autosaveSettingsScopeGroupChats)* - child of AutosaveSettingsScope
  ///
  /// Autosave settings applied to all basic group and supergroup chats without chat-specific settings.
  const AutosaveSettingsScopeGroupChats();
  
  /// Parse from a json
  factory AutosaveSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) => const AutosaveSettingsScopeGroupChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AutosaveSettingsScopeGroupChats copyWith() => const AutosaveSettingsScopeGroupChats();

  static const String objectType = 'autosaveSettingsScopeGroupChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AutosaveSettingsScopeChannelChats** *(autosaveSettingsScopeChannelChats)* - child of AutosaveSettingsScope
///
/// Autosave settings applied to all channel chats without chat-specific settings.
final class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  
  /// **AutosaveSettingsScopeChannelChats** *(autosaveSettingsScopeChannelChats)* - child of AutosaveSettingsScope
  ///
  /// Autosave settings applied to all channel chats without chat-specific settings.
  const AutosaveSettingsScopeChannelChats();
  
  /// Parse from a json
  factory AutosaveSettingsScopeChannelChats.fromJson(Map<String, dynamic> json) => const AutosaveSettingsScopeChannelChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AutosaveSettingsScopeChannelChats copyWith() => const AutosaveSettingsScopeChannelChats();

  static const String objectType = 'autosaveSettingsScopeChannelChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AutosaveSettingsScopeChat** *(autosaveSettingsScopeChat)* - child of AutosaveSettingsScope
///
/// Autosave settings applied to a chat.
///
/// * [chatId]: Chat identifier.
final class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  
  /// **AutosaveSettingsScopeChat** *(autosaveSettingsScopeChat)* - child of AutosaveSettingsScope
  ///
  /// Autosave settings applied to a chat.
  ///
  /// * [chatId]: Chat identifier.
  const AutosaveSettingsScopeChat({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory AutosaveSettingsScopeChat.fromJson(Map<String, dynamic> json) => AutosaveSettingsScopeChat(
    chatId: json['chat_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
		};
	}

  
  @override
  AutosaveSettingsScopeChat copyWith({
    int? chatId,
  }) => AutosaveSettingsScopeChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'autosaveSettingsScopeChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
