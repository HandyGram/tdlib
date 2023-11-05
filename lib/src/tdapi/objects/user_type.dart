part of '../tdapi.dart';

/// **UserType** *(userType)* - parent
///
/// Represents the type of a user. The following types are possible: regular users, deleted users and bots.
sealed class UserType extends TdObject {
  
  /// **UserType** *(userType)* - parent
  ///
  /// Represents the type of a user. The following types are possible: regular users, deleted users and bots.
  const UserType();
  
  /// a UserType return type can be :
  /// * [UserTypeRegular]
  /// * [UserTypeDeleted]
  /// * [UserTypeBot]
  /// * [UserTypeUnknown]
  factory UserType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserTypeRegular.objectType:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.objectType:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.objectType:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.objectType:
        return UserTypeUnknown.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of UserType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  UserType copyWith();

  /// TDLib object type
  static const String objectType = 'userType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserTypeRegular** *(userTypeRegular)* - child of UserType
///
/// A regular user.
final class UserTypeRegular extends UserType {
  
  /// **UserTypeRegular** *(userTypeRegular)* - child of UserType
  ///
  /// A regular user.
  const UserTypeRegular();
  
  /// Parse from a json
  factory UserTypeRegular.fromJson(Map<String, dynamic> json) => const UserTypeRegular();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserTypeRegular copyWith() => const UserTypeRegular();

  /// TDLib object type
  static const String objectType = 'userTypeRegular';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserTypeDeleted** *(userTypeDeleted)* - child of UserType
///
/// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.
final class UserTypeDeleted extends UserType {
  
  /// **UserTypeDeleted** *(userTypeDeleted)* - child of UserType
  ///
  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.
  const UserTypeDeleted();
  
  /// Parse from a json
  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) => const UserTypeDeleted();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserTypeDeleted copyWith() => const UserTypeDeleted();

  /// TDLib object type
  static const String objectType = 'userTypeDeleted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserTypeBot** *(userTypeBot)* - child of UserType
///
/// A bot (see https://core.telegram.org/bots).
///
/// * [canBeEdited]: True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription.
/// * [canJoinGroups]: True, if the bot can be invited to basic group and supergroup chats.
/// * [canReadAllGroupMessages]: True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages.
/// * [isInline]: True, if the bot supports inline queries.
/// * [inlineQueryPlaceholder]: Placeholder for inline queries (displayed on the application input field).
/// * [needLocation]: True, if the location of the user is expected to be sent with every inline query to this bot.
/// * [canBeAddedToAttachmentMenu]: True, if the bot can be added to attachment or side menu.
final class UserTypeBot extends UserType {
  
  /// **UserTypeBot** *(userTypeBot)* - child of UserType
  ///
  /// A bot (see https://core.telegram.org/bots).
  ///
  /// * [canBeEdited]: True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription.
  /// * [canJoinGroups]: True, if the bot can be invited to basic group and supergroup chats.
  /// * [canReadAllGroupMessages]: True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages.
  /// * [isInline]: True, if the bot supports inline queries.
  /// * [inlineQueryPlaceholder]: Placeholder for inline queries (displayed on the application input field).
  /// * [needLocation]: True, if the location of the user is expected to be sent with every inline query to this bot.
  /// * [canBeAddedToAttachmentMenu]: True, if the bot can be added to attachment or side menu.
  const UserTypeBot({
    required this.canBeEdited,
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
    required this.canBeAddedToAttachmentMenu,
  });
  
  /// True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription
  final bool canBeEdited;

  /// True, if the bot can be invited to basic group and supergroup chats
  final bool canJoinGroups;

  /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// True, if the bot supports inline queries
  final bool isInline;

  /// Placeholder for inline queries (displayed on the application input field)
  final String inlineQueryPlaceholder;

  /// True, if the location of the user is expected to be sent with every inline query to this bot
  final bool needLocation;

  /// True, if the bot can be added to attachment or side menu
  final bool canBeAddedToAttachmentMenu;
  
  /// Parse from a json
  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
    canBeEdited: json['can_be_edited'],
    canJoinGroups: json['can_join_groups'],
    canReadAllGroupMessages: json['can_read_all_group_messages'],
    isInline: json['is_inline'],
    inlineQueryPlaceholder: json['inline_query_placeholder'],
    needLocation: json['need_location'],
    canBeAddedToAttachmentMenu: json['can_be_added_to_attachment_menu'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "can_be_edited": canBeEdited,
      "can_join_groups": canJoinGroups,
      "can_read_all_group_messages": canReadAllGroupMessages,
      "is_inline": isInline,
      "inline_query_placeholder": inlineQueryPlaceholder,
      "need_location": needLocation,
      "can_be_added_to_attachment_menu": canBeAddedToAttachmentMenu,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [can_be_edited]: True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription
  /// * [can_join_groups]: True, if the bot can be invited to basic group and supergroup chats
  /// * [can_read_all_group_messages]: True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  /// * [is_inline]: True, if the bot supports inline queries
  /// * [inline_query_placeholder]: Placeholder for inline queries (displayed on the application input field)
  /// * [need_location]: True, if the location of the user is expected to be sent with every inline query to this bot
  /// * [can_be_added_to_attachment_menu]: True, if the bot can be added to attachment or side menu
  @override
  UserTypeBot copyWith({
    bool? canBeEdited,
    bool? canJoinGroups,
    bool? canReadAllGroupMessages,
    bool? isInline,
    String? inlineQueryPlaceholder,
    bool? needLocation,
    bool? canBeAddedToAttachmentMenu,
  }) => UserTypeBot(
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canJoinGroups: canJoinGroups ?? this.canJoinGroups,
    canReadAllGroupMessages: canReadAllGroupMessages ?? this.canReadAllGroupMessages,
    isInline: isInline ?? this.isInline,
    inlineQueryPlaceholder: inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
    needLocation: needLocation ?? this.needLocation,
    canBeAddedToAttachmentMenu: canBeAddedToAttachmentMenu ?? this.canBeAddedToAttachmentMenu,
  );

  /// TDLib object type
  static const String objectType = 'userTypeBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserTypeUnknown** *(userTypeUnknown)* - child of UserType
///
/// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.
final class UserTypeUnknown extends UserType {
  
  /// **UserTypeUnknown** *(userTypeUnknown)* - child of UserType
  ///
  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.
  const UserTypeUnknown();
  
  /// Parse from a json
  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) => const UserTypeUnknown();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserTypeUnknown copyWith() => const UserTypeUnknown();

  /// TDLib object type
  static const String objectType = 'userTypeUnknown';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
