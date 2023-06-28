part of '../tdapi.dart';

/// **GetChatsForChatFolderInviteLink** *(getChatsForChatFolderInviteLink)* - TDLib function
///
/// Returns identifiers of chats from a chat folder, suitable for adding to a chat folder invite link.
///
/// * [chatFolderId]: Chat folder identifier.
///
/// [Chats] is returned on completion.
final class GetChatsForChatFolderInviteLink extends TdFunction {
  
  /// **GetChatsForChatFolderInviteLink** *(getChatsForChatFolderInviteLink)* - TDLib function
  ///
  /// Returns identifiers of chats from a chat folder, suitable for adding to a chat folder invite link.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  ///
  /// [Chats] is returned on completion.
  const GetChatsForChatFolderInviteLink({
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

  
  GetChatsForChatFolderInviteLink copyWith({
    int? chatFolderId,
  }) => GetChatsForChatFolderInviteLink(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  static const String objectType = 'getChatsForChatFolderInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
