part of '../tdapi.dart';

/// **GetChatFolderNewChats** *(getChatFolderNewChats)* - TDLib function
///
/// Returns new chats added to a shareable chat folder by its owner. The method must be called at most once in getOption("chat_folder_new_chats_update_period") for the given chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
///
/// [Chats] is returned on completion.
final class GetChatFolderNewChats extends TdFunction {
  
  /// **GetChatFolderNewChats** *(getChatFolderNewChats)* - TDLib function
  ///
  /// Returns new chats added to a shareable chat folder by its owner. The method must be called at most once in getOption("chat_folder_new_chats_update_period") for the given chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  ///
  /// [Chats] is returned on completion.
  const GetChatFolderNewChats({
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

  
  GetChatFolderNewChats copyWith({
    int? chatFolderId,
  }) => GetChatFolderNewChats(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  static const String objectType = 'getChatFolderNewChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
