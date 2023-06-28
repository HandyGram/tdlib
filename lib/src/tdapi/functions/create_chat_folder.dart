part of '../tdapi.dart';

/// **CreateChatFolder** *(createChatFolder)* - TDLib function
///
/// Creates new chat folder. Returns information about the created chat folder. There can be up to getOption("chat_folder_count_max") chat folders, but the limit can be increased with Telegram Premium.
///
/// * [folder]: The new chat folder.
///
/// [ChatFolderInfo] is returned on completion.
final class CreateChatFolder extends TdFunction {
  
  /// **CreateChatFolder** *(createChatFolder)* - TDLib function
  ///
  /// Creates new chat folder. Returns information about the created chat folder. There can be up to getOption("chat_folder_count_max") chat folders, but the limit can be increased with Telegram Premium.
  ///
  /// * [folder]: The new chat folder.
  ///
  /// [ChatFolderInfo] is returned on completion.
  const CreateChatFolder({
    required this.folder,
  });
  
  /// The new chat folder
  final ChatFolder folder;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "folder": folder.toJson(),
      "@extra": extra,
		};
	}

  
  CreateChatFolder copyWith({
    ChatFolder? folder,
  }) => CreateChatFolder(
    folder: folder ?? this.folder,
  );

  static const String objectType = 'createChatFolder';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
