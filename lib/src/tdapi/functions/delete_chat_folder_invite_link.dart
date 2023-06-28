part of '../tdapi.dart';

/// **DeleteChatFolderInviteLink** *(deleteChatFolderInviteLink)* - TDLib function
///
/// Deletes an invite link for a chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
/// * [inviteLink]: Invite link to be deleted.
///
/// [Ok] is returned on completion.
final class DeleteChatFolderInviteLink extends TdFunction {
  
  /// **DeleteChatFolderInviteLink** *(deleteChatFolderInviteLink)* - TDLib function
  ///
  /// Deletes an invite link for a chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  /// * [inviteLink]: Invite link to be deleted.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatFolderInviteLink({
    required this.chatFolderId,
    required this.inviteLink,
  });
  
  /// Chat folder identifier
  final int chatFolderId;

  /// Invite link to be deleted
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "invite_link": inviteLink,
      "@extra": extra,
		};
	}

  
  DeleteChatFolderInviteLink copyWith({
    int? chatFolderId,
    String? inviteLink,
  }) => DeleteChatFolderInviteLink(
    chatFolderId: chatFolderId ?? this.chatFolderId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'deleteChatFolderInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
