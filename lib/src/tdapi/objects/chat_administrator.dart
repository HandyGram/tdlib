part of '../tdapi.dart';

/// **ChatAdministrator** *(chatAdministrator)* - basic class
///
/// Contains information about a chat administrator.
///
/// * [userId]: User identifier of the administrator.
/// * [customTitle]: Custom title of the administrator.
/// * [isOwner]: True, if the user is the owner of the chat.
final class ChatAdministrator extends TdObject {
  
  /// **ChatAdministrator** *(chatAdministrator)* - basic class
  ///
  /// Contains information about a chat administrator.
  ///
  /// * [userId]: User identifier of the administrator.
  /// * [customTitle]: Custom title of the administrator.
  /// * [isOwner]: True, if the user is the owner of the chat.
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });
  
  /// User identifier of the administrator 
  final int userId;

  /// Custom title of the administrator 
  final String customTitle;

  /// True, if the user is the owner of the chat
  final bool isOwner;
  
  /// Parse from a json
  factory ChatAdministrator.fromJson(Map<String, dynamic> json) => ChatAdministrator(
    userId: json['user_id'],
    customTitle: json['custom_title'],
    isOwner: json['is_owner'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "user_id": userId,
      "custom_title": customTitle,
      "is_owner": isOwner,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: User identifier of the administrator 
  /// * [custom_title]: Custom title of the administrator 
  /// * [is_owner]: True, if the user is the owner of the chat
  ChatAdministrator copyWith({
    int? userId,
    String? customTitle,
    bool? isOwner,
  }) => ChatAdministrator(
    userId: userId ?? this.userId,
    customTitle: customTitle ?? this.customTitle,
    isOwner: isOwner ?? this.isOwner,
  );

  /// TDLib object type
  static const String defaultObjectId = 'chatAdministrator';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
