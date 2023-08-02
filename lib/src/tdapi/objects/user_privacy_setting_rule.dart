part of '../tdapi.dart';

/// **UserPrivacySettingRule** *(userPrivacySettingRule)* - parent
///
/// Represents a single rule for managing privacy settings.
sealed class UserPrivacySettingRule extends TdObject {
  
  /// **UserPrivacySettingRule** *(userPrivacySettingRule)* - parent
  ///
  /// Represents a single rule for managing privacy settings.
  const UserPrivacySettingRule();
  
  /// a UserPrivacySettingRule return type can be :
  /// * [UserPrivacySettingRuleAllowAll]
  /// * [UserPrivacySettingRuleAllowContacts]
  /// * [UserPrivacySettingRuleAllowUsers]
  /// * [UserPrivacySettingRuleAllowChatMembers]
  /// * [UserPrivacySettingRuleRestrictAll]
  /// * [UserPrivacySettingRuleRestrictContacts]
  /// * [UserPrivacySettingRuleRestrictUsers]
  /// * [UserPrivacySettingRuleRestrictChatMembers]
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserPrivacySettingRuleAllowAll.objectType:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.objectType:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.objectType:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.objectType:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.objectType:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.objectType:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.objectType:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.objectType:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of UserPrivacySettingRule)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  UserPrivacySettingRule copyWith();

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRule';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleAllowAll** *(userPrivacySettingRuleAllowAll)* - child of UserPrivacySettingRule
///
/// A rule to allow all users to do something.
final class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowAll** *(userPrivacySettingRuleAllowAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all users to do something.
  const UserPrivacySettingRuleAllowAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowAll();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserPrivacySettingRuleAllowAll copyWith() => const UserPrivacySettingRuleAllowAll();

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleAllowAll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleAllowContacts** *(userPrivacySettingRuleAllowContacts)* - child of UserPrivacySettingRule
///
/// A rule to allow all of a user's contacts to do something.
final class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowContacts** *(userPrivacySettingRuleAllowContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all of a user's contacts to do something.
  const UserPrivacySettingRuleAllowContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowContacts();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserPrivacySettingRuleAllowContacts copyWith() => const UserPrivacySettingRuleAllowContacts();

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleAllowContacts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleAllowUsers** *(userPrivacySettingRuleAllowUsers)* - child of UserPrivacySettingRule
///
/// A rule to allow certain specified users to do something.
///
/// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
final class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowUsers** *(userPrivacySettingRuleAllowUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow certain specified users to do something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
  const UserPrivacySettingRuleAllowUsers({
    required this.userIds,
  });
  
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowUsers(
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_ids": userIds.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_ids]: The user identifiers, total number of users in all rules must not exceed 1000
  @override
  UserPrivacySettingRuleAllowUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleAllowUsers(
    userIds: userIds ?? this.userIds,
  );

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleAllowUsers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleAllowChatMembers** *(userPrivacySettingRuleAllowChatMembers)* - child of UserPrivacySettingRule
///
/// A rule to allow all members of certain specified basic groups and supergroups to doing something.
///
/// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
final class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowChatMembers** *(userPrivacySettingRuleAllowChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all members of certain specified basic groups and supergroups to doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
  const UserPrivacySettingRuleAllowChatMembers({
    required this.chatIds,
  });
  
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_ids": chatIds.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_ids]: The chat identifiers, total number of chats in all rules must not exceed 20
  @override
  UserPrivacySettingRuleAllowChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleAllowChatMembers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleRestrictAll** *(userPrivacySettingRuleRestrictAll)* - child of UserPrivacySettingRule
///
/// A rule to restrict all users from doing something.
final class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictAll** *(userPrivacySettingRuleRestrictAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all users from doing something.
  const UserPrivacySettingRuleRestrictAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictAll();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserPrivacySettingRuleRestrictAll copyWith() => const UserPrivacySettingRuleRestrictAll();

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleRestrictAll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleRestrictContacts** *(userPrivacySettingRuleRestrictContacts)* - child of UserPrivacySettingRule
///
/// A rule to restrict all contacts of a user from doing something.
final class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictContacts** *(userPrivacySettingRuleRestrictContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all contacts of a user from doing something.
  const UserPrivacySettingRuleRestrictContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictContacts();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  UserPrivacySettingRuleRestrictContacts copyWith() => const UserPrivacySettingRuleRestrictContacts();

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleRestrictContacts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleRestrictUsers** *(userPrivacySettingRuleRestrictUsers)* - child of UserPrivacySettingRule
///
/// A rule to restrict all specified users from doing something.
///
/// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
final class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictUsers** *(userPrivacySettingRuleRestrictUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all specified users from doing something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
  const UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });
  
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictUsers(
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_ids": userIds.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_ids]: The user identifiers, total number of users in all rules must not exceed 1000
  @override
  UserPrivacySettingRuleRestrictUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleRestrictUsers(
    userIds: userIds ?? this.userIds,
  );

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleRestrictUsers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingRuleRestrictChatMembers** *(userPrivacySettingRuleRestrictChatMembers)* - child of UserPrivacySettingRule
///
/// A rule to restrict all members of specified basic groups and supergroups from doing something.
///
/// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
final class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictChatMembers** *(userPrivacySettingRuleRestrictChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all members of specified basic groups and supergroups from doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
  const UserPrivacySettingRuleRestrictChatMembers({
    required this.chatIds,
  });
  
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_ids": chatIds.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_ids]: The chat identifiers, total number of chats in all rules must not exceed 20
  @override
  UserPrivacySettingRuleRestrictChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  /// TDLib object type
  static const String objectType = 'userPrivacySettingRuleRestrictChatMembers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
