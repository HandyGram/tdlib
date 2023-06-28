part of '../tdapi.dart';

/// **GetChatFolderChatsToLeave** *(getChatFolderChatsToLeave)* - TDLib function
///
/// Returns identifiers of pinned or always included chats from a chat folder, which are suggested to be left when the chat folder is deleted.
///
/// * [chatFolderId]: Chat folder identifier.
///
/// [Chats] is returned on completion.
final class GetChatFolderChatsToLeave extends TdFunction {
  
  /// **GetChatFolderChatsToLeave** *(getChatFolderChatsToLeave)* - TDLib function
  ///
  /// Returns identifiers of pinned or always included chats from a chat folder, which are suggested to be left when the chat folder is deleted.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  ///
  /// [Chats] is returned on completion.
  const GetChatFolderChatsToLeave({
    required this.chatFolderId,
  });
  
  /// Chat folder identifier
  final int chatFolderId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "@extra": extra,
		};
	}

  
  GetChatFolderChatsToLeave copyWith({
    int? chatFolderId,
  }) => GetChatFolderChatsToLeave(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  static const String objectType = 'getChatFolderChatsToLeave';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
