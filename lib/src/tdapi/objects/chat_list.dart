part of '../tdapi.dart';

/// **ChatList** *(chatList)* - parent
///
/// Describes a list of chats.
sealed class ChatList extends TdObject {
  
  /// **ChatList** *(chatList)* - parent
  ///
  /// Describes a list of chats.
  const ChatList();
  
  /// a ChatList return type can be :
  /// * [ChatListMain]
  /// * [ChatListArchive]
  /// * [ChatListFolder]
  factory ChatList.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatListMain.objectType:
        return ChatListMain.fromJson(json);
      case ChatListArchive.objectType:
        return ChatListArchive.fromJson(json);
      case ChatListFolder.objectType:
        return ChatListFolder.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatList)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatList copyWith();

  /// TDLib object type
  static const String objectType = 'chatList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatListMain** *(chatListMain)* - child of ChatList
///
/// A main list of chats.
final class ChatListMain extends ChatList {
  
  /// **ChatListMain** *(chatListMain)* - child of ChatList
  ///
  /// A main list of chats.
  const ChatListMain();
  
  /// Parse from a json
  factory ChatListMain.fromJson(Map<String, dynamic> json) => const ChatListMain();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatListMain copyWith() => const ChatListMain();

  /// TDLib object type
  static const String objectType = 'chatListMain';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatListArchive** *(chatListArchive)* - child of ChatList
///
/// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
final class ChatListArchive extends ChatList {
  
  /// **ChatListArchive** *(chatListArchive)* - child of ChatList
  ///
  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
  const ChatListArchive();
  
  /// Parse from a json
  factory ChatListArchive.fromJson(Map<String, dynamic> json) => const ChatListArchive();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatListArchive copyWith() => const ChatListArchive();

  /// TDLib object type
  static const String objectType = 'chatListArchive';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatListFolder** *(chatListFolder)* - child of ChatList
///
/// A list of chats added to a chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
final class ChatListFolder extends ChatList {
  
  /// **ChatListFolder** *(chatListFolder)* - child of ChatList
  ///
  /// A list of chats added to a chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  const ChatListFolder({
    required this.chatFolderId,
  });
  
  /// Chat folder identifier
  final int chatFolderId;
  
  /// Parse from a json
  factory ChatListFolder.fromJson(Map<String, dynamic> json) => ChatListFolder(
    chatFolderId: json['chat_folder_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_folder_id]: Chat folder identifier
  @override
  ChatListFolder copyWith({
    int? chatFolderId,
  }) => ChatListFolder(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  /// TDLib object type
  static const String objectType = 'chatListFolder';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
