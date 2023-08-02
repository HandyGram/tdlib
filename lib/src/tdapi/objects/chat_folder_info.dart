part of '../tdapi.dart';

/// **ChatFolderInfo** *(chatFolderInfo)* - basic class
///
/// Contains basic information about a chat folder.
///
/// * [id]: Unique chat folder identifier.
/// * [title]: The title of the folder; 1-12 characters without line feeds.
/// * [icon]: The chosen or default icon for the chat folder.
/// * [hasMyInviteLinks]: True, if the chat folder has invite links created by the current user.
final class ChatFolderInfo extends TdObject {
  
  /// **ChatFolderInfo** *(chatFolderInfo)* - basic class
  ///
  /// Contains basic information about a chat folder.
  ///
  /// * [id]: Unique chat folder identifier.
  /// * [title]: The title of the folder; 1-12 characters without line feeds.
  /// * [icon]: The chosen or default icon for the chat folder.
  /// * [hasMyInviteLinks]: True, if the chat folder has invite links created by the current user.
  const ChatFolderInfo({
    required this.id,
    required this.title,
    required this.icon,
    required this.hasMyInviteLinks,
    this.extra,
    this.clientId,
  });
  
  /// Unique chat folder identifier
  final int id;

  /// The title of the folder; 1-12 characters without line feeds
  final String title;

  /// The chosen or default icon for the chat folder
  final ChatFolderIcon icon;

  /// True, if the chat folder has invite links created by the current user
  final bool hasMyInviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFolderInfo.fromJson(Map<String, dynamic> json) => ChatFolderInfo(
    id: json['id'],
    title: json['title'],
    icon: ChatFolderIcon.fromJson(json['icon']),
    hasMyInviteLinks: json['has_my_invite_links'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "title": title,
      "icon": icon.toJson(),
      "has_my_invite_links": hasMyInviteLinks,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique chat folder identifier
  /// * [title]: The title of the folder; 1-12 characters without line feeds
  /// * [icon]: The chosen or default icon for the chat folder
  /// * [has_my_invite_links]: True, if the chat folder has invite links created by the current user
  ChatFolderInfo copyWith({
    int? id,
    String? title,
    ChatFolderIcon? icon,
    bool? hasMyInviteLinks,
    dynamic extra,
    int? clientId,
  }) => ChatFolderInfo(
    id: id ?? this.id,
    title: title ?? this.title,
    icon: icon ?? this.icon,
    hasMyInviteLinks: hasMyInviteLinks ?? this.hasMyInviteLinks,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'chatFolderInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
