part of '../tdapi.dart';

/// **ProcessChatFolderNewChats** *(processChatFolderNewChats)* - TDLib function
///
/// Process new chats added to a shareable chat folder by its owner.
///
/// * [chatFolderId]: Chat folder identifier.
/// * [addedChatIds]: Identifiers of the new chats, which are added to the chat folder. The chats are automatically joined if they aren't joined yet.
///
/// [Ok] is returned on completion.
final class ProcessChatFolderNewChats extends TdFunction {
  
  /// **ProcessChatFolderNewChats** *(processChatFolderNewChats)* - TDLib function
  ///
  /// Process new chats added to a shareable chat folder by its owner.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  /// * [addedChatIds]: Identifiers of the new chats, which are added to the chat folder. The chats are automatically joined if they aren't joined yet.
  ///
  /// [Ok] is returned on completion.
  const ProcessChatFolderNewChats({
    required this.chatFolderId,
    required this.addedChatIds,
  });
  
  /// Chat folder identifier 
  final int chatFolderId;

  /// Identifiers of the new chats, which are added to the chat folder. The chats are automatically joined if they aren't joined yet
  final List<int> addedChatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "added_chat_ids": addedChatIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  ProcessChatFolderNewChats copyWith({
    int? chatFolderId,
    List<int>? addedChatIds,
  }) => ProcessChatFolderNewChats(
    chatFolderId: chatFolderId ?? this.chatFolderId,
    addedChatIds: addedChatIds ?? this.addedChatIds,
  );

  static const String objectType = 'processChatFolderNewChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
