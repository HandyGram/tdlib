part of '../tdapi.dart';

/// **CheckChatFolderInviteLink** *(checkChatFolderInviteLink)* - TDLib function
///
/// Checks the validity of an invite link for a chat folder and returns information about the corresponding chat folder.
///
/// * [inviteLink]: Invite link to be checked.
///
/// [ChatFolderInviteLinkInfo] is returned on completion.
final class CheckChatFolderInviteLink extends TdFunction {
  
  /// **CheckChatFolderInviteLink** *(checkChatFolderInviteLink)* - TDLib function
  ///
  /// Checks the validity of an invite link for a chat folder and returns information about the corresponding chat folder.
  ///
  /// * [inviteLink]: Invite link to be checked.
  ///
  /// [ChatFolderInviteLinkInfo] is returned on completion.
  const CheckChatFolderInviteLink({
    required this.inviteLink,
  });
  
  /// Invite link to be checked
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
      "@extra": extra,
		};
	}

  
  CheckChatFolderInviteLink copyWith({
    String? inviteLink,
  }) => CheckChatFolderInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'checkChatFolderInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
