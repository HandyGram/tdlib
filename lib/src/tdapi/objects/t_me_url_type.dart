part of '../tdapi.dart';

/// **TMeUrlType** *(tMeUrlType)* - parent
///
/// Describes the type of a URL linking to an internal Telegram entity.
sealed class TMeUrlType extends TdObject {
  
  /// **TMeUrlType** *(tMeUrlType)* - parent
  ///
  /// Describes the type of a URL linking to an internal Telegram entity.
  const TMeUrlType();
  
  /// a TMeUrlType return type can be :
  /// * [TMeUrlTypeUser]
  /// * [TMeUrlTypeSupergroup]
  /// * [TMeUrlTypeChatInvite]
  /// * [TMeUrlTypeStickerSet]
  factory TMeUrlType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TMeUrlTypeUser.objectType:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.objectType:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.objectType:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.objectType:
        return TMeUrlTypeStickerSet.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TMeUrlType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  TMeUrlType copyWith();

  /// TDLib object type
  static const String objectType = 'tMeUrlType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeUser** *(tMeUrlTypeUser)* - child of TMeUrlType
///
/// A URL linking to a user.
///
/// * [userId]: Identifier of the user.
final class TMeUrlTypeUser extends TMeUrlType {
  
  /// **TMeUrlTypeUser** *(tMeUrlTypeUser)* - child of TMeUrlType
  ///
  /// A URL linking to a user.
  ///
  /// * [userId]: Identifier of the user.
  const TMeUrlTypeUser({
    required this.userId,
  });
  
  /// Identifier of the user
  final int userId;
  
  /// Parse from a json
  factory TMeUrlTypeUser.fromJson(Map<String, dynamic> json) => TMeUrlTypeUser(
    userId: json['user_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user
  @override
  TMeUrlTypeUser copyWith({
    int? userId,
  }) => TMeUrlTypeUser(
    userId: userId ?? this.userId,
  );

  /// TDLib object type
  static const String objectType = 'tMeUrlTypeUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeSupergroup** *(tMeUrlTypeSupergroup)* - child of TMeUrlType
///
/// A URL linking to a public supergroup or channel.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
final class TMeUrlTypeSupergroup extends TMeUrlType {
  
  /// **TMeUrlTypeSupergroup** *(tMeUrlTypeSupergroup)* - child of TMeUrlType
  ///
  /// A URL linking to a public supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  const TMeUrlTypeSupergroup({
    required this.supergroupId,
  });
  
  /// Identifier of the supergroup or channel
  final int supergroupId;
  
  /// Parse from a json
  factory TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) => TMeUrlTypeSupergroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Identifier of the supergroup or channel
  @override
  TMeUrlTypeSupergroup copyWith({
    int? supergroupId,
  }) => TMeUrlTypeSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  /// TDLib object type
  static const String objectType = 'tMeUrlTypeSupergroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeChatInvite** *(tMeUrlTypeChatInvite)* - child of TMeUrlType
///
/// A chat invite link.
///
/// * [info]: Information about the chat invite link.
final class TMeUrlTypeChatInvite extends TMeUrlType {
  
  /// **TMeUrlTypeChatInvite** *(tMeUrlTypeChatInvite)* - child of TMeUrlType
  ///
  /// A chat invite link.
  ///
  /// * [info]: Information about the chat invite link.
  const TMeUrlTypeChatInvite({
    required this.info,
  });
  
  /// Information about the chat invite link
  final ChatInviteLinkInfo info;
  
  /// Parse from a json
  factory TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) => TMeUrlTypeChatInvite(
    info: ChatInviteLinkInfo.fromJson(json['info']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "info": info.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [info]: Information about the chat invite link
  @override
  TMeUrlTypeChatInvite copyWith({
    ChatInviteLinkInfo? info,
  }) => TMeUrlTypeChatInvite(
    info: info ?? this.info,
  );

  /// TDLib object type
  static const String objectType = 'tMeUrlTypeChatInvite';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeStickerSet** *(tMeUrlTypeStickerSet)* - child of TMeUrlType
///
/// A URL linking to a sticker set.
///
/// * [stickerSetId]: Identifier of the sticker set.
final class TMeUrlTypeStickerSet extends TMeUrlType {
  
  /// **TMeUrlTypeStickerSet** *(tMeUrlTypeStickerSet)* - child of TMeUrlType
  ///
  /// A URL linking to a sticker set.
  ///
  /// * [stickerSetId]: Identifier of the sticker set.
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });
  
  /// Identifier of the sticker set
  final int stickerSetId;
  
  /// Parse from a json
  factory TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) => TMeUrlTypeStickerSet(
    stickerSetId: int.parse(json['sticker_set_id']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_set_id": stickerSetId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_set_id]: Identifier of the sticker set
  @override
  TMeUrlTypeStickerSet copyWith({
    int? stickerSetId,
  }) => TMeUrlTypeStickerSet(
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  /// TDLib object type
  static const String objectType = 'tMeUrlTypeStickerSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
