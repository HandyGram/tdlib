part of '../tdapi.dart';

/// **AddChatFolderByInviteLink** *(addChatFolderByInviteLink)* - TDLib function
///
/// Adds a chat folder by an invite link.
///
/// * [inviteLink]: Invite link for the chat folder.
/// * [chatIds]: Identifiers of the chats added to the chat folder. The chats are automatically joined if they aren't joined yet.
///
/// [Ok] is returned on completion.
final class AddChatFolderByInviteLink extends TdFunction {
  
  /// **AddChatFolderByInviteLink** *(addChatFolderByInviteLink)* - TDLib function
  ///
  /// Adds a chat folder by an invite link.
  ///
  /// * [inviteLink]: Invite link for the chat folder.
  /// * [chatIds]: Identifiers of the chats added to the chat folder. The chats are automatically joined if they aren't joined yet.
  ///
  /// [Ok] is returned on completion.
  const AddChatFolderByInviteLink({
    required this.inviteLink,
    required this.chatIds,
  });
  
  /// Invite link for the chat folder 
  final String inviteLink;

  /// Identifiers of the chats added to the chat folder. The chats are automatically joined if they aren't joined yet
  final List<int> chatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  AddChatFolderByInviteLink copyWith({
    String? inviteLink,
    List<int>? chatIds,
  }) => AddChatFolderByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
    chatIds: chatIds ?? this.chatIds,
  );

  static const String objectType = 'addChatFolderByInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
