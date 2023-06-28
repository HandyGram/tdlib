part of '../tdapi.dart';

/// **EditChatFolder** *(editChatFolder)* - TDLib function
///
/// Edits existing chat folder. Returns information about the edited chat folder.
///
/// * [chatFolderId]: Chat folder identifier.
/// * [folder]: The edited chat folder.
///
/// [ChatFolderInfo] is returned on completion.
final class EditChatFolder extends TdFunction {
  
  /// **EditChatFolder** *(editChatFolder)* - TDLib function
  ///
  /// Edits existing chat folder. Returns information about the edited chat folder.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  /// * [folder]: The edited chat folder.
  ///
  /// [ChatFolderInfo] is returned on completion.
  const EditChatFolder({
    required this.chatFolderId,
    required this.folder,
  });
  
  /// Chat folder identifier 
  final int chatFolderId;

  /// The edited chat folder
  final ChatFolder folder;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_folder_id": chatFolderId,
      "folder": folder.toJson(),
      "@extra": extra,
		};
	}

  
  EditChatFolder copyWith({
    int? chatFolderId,
    ChatFolder? folder,
  }) => EditChatFolder(
    chatFolderId: chatFolderId ?? this.chatFolderId,
    folder: folder ?? this.folder,
  );

  static const String objectType = 'editChatFolder';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
