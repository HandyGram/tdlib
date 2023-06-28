part of '../tdapi.dart';

/// **CreateChatFolderInviteLink** *(createChatFolderInviteLink)* - TDLib function
///
/// Creates a new invite link for a chat folder. A link can be created for a chat folder if it has only pinned and included chats.
///
/// * [chatFolderId]: Chat folder identifier.
/// * [name]: Name of the link; 0-32 characters.
/// * [chatIds]: Identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link creation.
///
/// [ChatFolderInviteLink] is returned on completion.
final class CreateChatFolderInviteLink extends TdFunction {
  
  /// **CreateChatFolderInviteLink** *(createChatFolderInviteLink)* - TDLib function
  ///
  /// Creates a new invite link for a chat folder. A link can be created for a chat folder if it has only pinned and included chats.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  /// * [name]: Name of the link; 0-32 characters.
  /// * [chatIds]: Identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link creation.
  ///
  /// [ChatFolderInviteLink] is returned on completion.
  const CreateChatFolderInviteLink({
    required this.chatFolderId,
    required this.name,
    required this.chatIds,
  });
  
  /// Chat folder identifier
  final int chatFolderId;

  /// Name of the link; 0-32 characters
  final String name;

  /// Identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link creation
  final List<int> chatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "name": name,
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  CreateChatFolderInviteLink copyWith({
    int? chatFolderId,
    String? name,
    List<int>? chatIds,
  }) => CreateChatFolderInviteLink(
    chatFolderId: chatFolderId ?? this.chatFolderId,
    name: name ?? this.name,
    chatIds: chatIds ?? this.chatIds,
  );

  static const String objectType = 'createChatFolderInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
