part of '../tdapi.dart';

/// **NewChatPrivacySettings** *(newChatPrivacySettings)* - basic class
///
/// Contains privacy settings for new chats with non-contacts.
///
/// * [allowNewChatsFromUnknownUsers]: True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting.
final class NewChatPrivacySettings extends TdObject {
  
  /// **NewChatPrivacySettings** *(newChatPrivacySettings)* - basic class
  ///
  /// Contains privacy settings for new chats with non-contacts.
  ///
  /// * [allowNewChatsFromUnknownUsers]: True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting.
  const NewChatPrivacySettings({
    required this.allowNewChatsFromUnknownUsers,
    this.extra,
    this.clientId,
  });
  
  /// True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting
  final bool allowNewChatsFromUnknownUsers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory NewChatPrivacySettings.fromJson(Map<String, dynamic> json) => NewChatPrivacySettings(
    allowNewChatsFromUnknownUsers: json['allow_new_chats_from_unknown_users'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "allow_new_chats_from_unknown_users": allowNewChatsFromUnknownUsers,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [allow_new_chats_from_unknown_users]: True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting
  NewChatPrivacySettings copyWith({
    bool? allowNewChatsFromUnknownUsers,
    dynamic extra,
    int? clientId,
  }) => NewChatPrivacySettings(
    allowNewChatsFromUnknownUsers: allowNewChatsFromUnknownUsers ?? this.allowNewChatsFromUnknownUsers,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'newChatPrivacySettings';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
