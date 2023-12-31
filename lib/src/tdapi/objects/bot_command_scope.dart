part of '../tdapi.dart';

/// **BotCommandScope** *(botCommandScope)* - parent
///
/// Represents the scope to which bot commands are relevant.
sealed class BotCommandScope extends TdObject {
  
  /// **BotCommandScope** *(botCommandScope)* - parent
  ///
  /// Represents the scope to which bot commands are relevant.
  const BotCommandScope();
  
  /// a BotCommandScope return type can be :
  /// * [BotCommandScopeDefault]
  /// * [BotCommandScopeAllPrivateChats]
  /// * [BotCommandScopeAllGroupChats]
  /// * [BotCommandScopeAllChatAdministrators]
  /// * [BotCommandScopeChat]
  /// * [BotCommandScopeChatAdministrators]
  /// * [BotCommandScopeChatMember]
  factory BotCommandScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BotCommandScopeDefault.objectType:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.objectType:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.objectType:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.objectType:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.objectType:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.objectType:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.objectType:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of BotCommandScope)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  BotCommandScope copyWith();

  /// TDLib object type
  static const String objectType = 'botCommandScope';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeDefault** *(botCommandScopeDefault)* - child of BotCommandScope
///
/// A scope covering all users.
final class BotCommandScopeDefault extends BotCommandScope {
  
  /// **BotCommandScopeDefault** *(botCommandScopeDefault)* - child of BotCommandScope
  ///
  /// A scope covering all users.
  const BotCommandScopeDefault();
  
  /// Parse from a json
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) => const BotCommandScopeDefault();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  BotCommandScopeDefault copyWith() => const BotCommandScopeDefault();

  /// TDLib object type
  static const String objectType = 'botCommandScopeDefault';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeAllPrivateChats** *(botCommandScopeAllPrivateChats)* - child of BotCommandScope
///
/// A scope covering all private chats.
final class BotCommandScopeAllPrivateChats extends BotCommandScope {
  
  /// **BotCommandScopeAllPrivateChats** *(botCommandScopeAllPrivateChats)* - child of BotCommandScope
  ///
  /// A scope covering all private chats.
  const BotCommandScopeAllPrivateChats();
  
  /// Parse from a json
  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllPrivateChats();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  BotCommandScopeAllPrivateChats copyWith() => const BotCommandScopeAllPrivateChats();

  /// TDLib object type
  static const String objectType = 'botCommandScopeAllPrivateChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeAllGroupChats** *(botCommandScopeAllGroupChats)* - child of BotCommandScope
///
/// A scope covering all group and supergroup chats.
final class BotCommandScopeAllGroupChats extends BotCommandScope {
  
  /// **BotCommandScopeAllGroupChats** *(botCommandScopeAllGroupChats)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chats.
  const BotCommandScopeAllGroupChats();
  
  /// Parse from a json
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllGroupChats();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  BotCommandScopeAllGroupChats copyWith() => const BotCommandScopeAllGroupChats();

  /// TDLib object type
  static const String objectType = 'botCommandScopeAllGroupChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeAllChatAdministrators** *(botCommandScopeAllChatAdministrators)* - child of BotCommandScope
///
/// A scope covering all group and supergroup chat administrators.
final class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  
  /// **BotCommandScopeAllChatAdministrators** *(botCommandScopeAllChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chat administrators.
  const BotCommandScopeAllChatAdministrators();
  
  /// Parse from a json
  factory BotCommandScopeAllChatAdministrators.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllChatAdministrators();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  BotCommandScopeAllChatAdministrators copyWith() => const BotCommandScopeAllChatAdministrators();

  /// TDLib object type
  static const String objectType = 'botCommandScopeAllChatAdministrators';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeChat** *(botCommandScopeChat)* - child of BotCommandScope
///
/// A scope covering all members of a chat.
///
/// * [chatId]: Chat identifier.
final class BotCommandScopeChat extends BotCommandScope {
  
  /// **BotCommandScopeChat** *(botCommandScopeChat)* - child of BotCommandScope
  ///
  /// A scope covering all members of a chat.
  ///
  /// * [chatId]: Chat identifier.
  const BotCommandScopeChat({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) => BotCommandScopeChat(
    chatId: json['chat_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  @override
  BotCommandScopeChat copyWith({
    int? chatId,
  }) => BotCommandScopeChat(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'botCommandScopeChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeChatAdministrators** *(botCommandScopeChatAdministrators)* - child of BotCommandScope
///
/// A scope covering all administrators of a chat.
///
/// * [chatId]: Chat identifier.
final class BotCommandScopeChatAdministrators extends BotCommandScope {
  
  /// **BotCommandScopeChatAdministrators** *(botCommandScopeChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all administrators of a chat.
  ///
  /// * [chatId]: Chat identifier.
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChatAdministrators.fromJson(Map<String, dynamic> json) => BotCommandScopeChatAdministrators(
    chatId: json['chat_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  @override
  BotCommandScopeChatAdministrators copyWith({
    int? chatId,
  }) => BotCommandScopeChatAdministrators(
    chatId: chatId ?? this.chatId,
  );

  /// TDLib object type
  static const String objectType = 'botCommandScopeChatAdministrators';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BotCommandScopeChatMember** *(botCommandScopeChatMember)* - child of BotCommandScope
///
/// A scope covering a member of a chat.
///
/// * [chatId]: Chat identifier.
/// * [userId]: User identifier.
final class BotCommandScopeChatMember extends BotCommandScope {
  
  /// **BotCommandScopeChatMember** *(botCommandScopeChatMember)* - child of BotCommandScope
  ///
  /// A scope covering a member of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: User identifier.
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// User identifier
  final int userId;
  
  /// Parse from a json
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) => BotCommandScopeChatMember(
    chatId: json['chat_id'],
    userId: json['user_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "user_id": userId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier 
  /// * [user_id]: User identifier
  @override
  BotCommandScopeChatMember copyWith({
    int? chatId,
    int? userId,
  }) => BotCommandScopeChatMember(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
  );

  /// TDLib object type
  static const String objectType = 'botCommandScopeChatMember';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
