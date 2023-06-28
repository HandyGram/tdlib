part of '../tdapi.dart';

/// **GetChatFolderInviteLinks** *(getChatFolderInviteLinks)* - TDLib function
///
/// Returns invite links created by the current user for a shareable chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
///
/// [ChatFolderInviteLinks] is returned on completion.
final class GetChatFolderInviteLinks extends TdFunction {
  
  /// **GetChatFolderInviteLinks** *(getChatFolderInviteLinks)* - TDLib function
  ///
  /// Returns invite links created by the current user for a shareable chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  ///
  /// [ChatFolderInviteLinks] is returned on completion.
  const GetChatFolderInviteLinks({
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

  
  GetChatFolderInviteLinks copyWith({
    int? chatFolderId,
  }) => GetChatFolderInviteLinks(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  static const String objectType = 'getChatFolderInviteLinks';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
