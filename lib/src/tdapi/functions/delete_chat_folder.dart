part of '../tdapi.dart';

/// **DeleteChatFolder** *(deleteChatFolder)* - TDLib function
///
/// Deletes existing chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
/// * [leaveChatIds]: Identifiers of the chats to leave. The chats must be pinned or always included in the folder.
///
/// [Ok] is returned on completion.
final class DeleteChatFolder extends TdFunction {
  
  /// **DeleteChatFolder** *(deleteChatFolder)* - TDLib function
  ///
  /// Deletes existing chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  /// * [leaveChatIds]: Identifiers of the chats to leave. The chats must be pinned or always included in the folder.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatFolder({
    required this.chatFolderId,
    required this.leaveChatIds,
  });
  
  /// Chat folder identifier 
  final int chatFolderId;

  /// Identifiers of the chats to leave. The chats must be pinned or always included in the folder
  final List<int> leaveChatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "leave_chat_ids": leaveChatIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  DeleteChatFolder copyWith({
    int? chatFolderId,
    List<int>? leaveChatIds,
  }) => DeleteChatFolder(
    chatFolderId: chatFolderId ?? this.chatFolderId,
    leaveChatIds: leaveChatIds ?? this.leaveChatIds,
  );

  static const String objectType = 'deleteChatFolder';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
