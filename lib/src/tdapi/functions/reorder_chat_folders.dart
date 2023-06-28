part of '../tdapi.dart';

/// **ReorderChatFolders** *(reorderChatFolders)* - TDLib function
///
/// Changes the order of chat folders.
///
/// * [chatFolderIds]: Identifiers of chat folders in the new correct order.
/// * [mainChatListPosition]: Position of the main chat list among chat folders, 0-based. Can be non-zero only for Premium users.
///
/// [Ok] is returned on completion.
final class ReorderChatFolders extends TdFunction {
  
  /// **ReorderChatFolders** *(reorderChatFolders)* - TDLib function
  ///
  /// Changes the order of chat folders.
  ///
  /// * [chatFolderIds]: Identifiers of chat folders in the new correct order.
  /// * [mainChatListPosition]: Position of the main chat list among chat folders, 0-based. Can be non-zero only for Premium users.
  ///
  /// [Ok] is returned on completion.
  const ReorderChatFolders({
    required this.chatFolderIds,
    required this.mainChatListPosition,
  });
  
  /// Identifiers of chat folders in the new correct order 
  final List<int> chatFolderIds;

  /// Position of the main chat list among chat folders, 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_ids": chatFolderIds.map((i) => i).toList(),
      "main_chat_list_position": mainChatListPosition,
      "@extra": extra,
		};
	}

  
  ReorderChatFolders copyWith({
    List<int>? chatFolderIds,
    int? mainChatListPosition,
  }) => ReorderChatFolders(
    chatFolderIds: chatFolderIds ?? this.chatFolderIds,
    mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
  );

  static const String objectType = 'reorderChatFolders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
