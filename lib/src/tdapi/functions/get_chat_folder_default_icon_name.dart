part of '../tdapi.dart';

/// **GetChatFolderDefaultIconName** *(getChatFolderDefaultIconName)* - TDLib function
///
/// Returns default icon name for a folder. Can be called synchronously.
///
/// * [folder]: Chat folder.
///
/// [ChatFolderIcon] is returned on completion.
final class GetChatFolderDefaultIconName extends TdFunction {
  
  /// **GetChatFolderDefaultIconName** *(getChatFolderDefaultIconName)* - TDLib function
  ///
  /// Returns default icon name for a folder. Can be called synchronously.
  ///
  /// * [folder]: Chat folder.
  ///
  /// [ChatFolderIcon] is returned on completion.
  const GetChatFolderDefaultIconName({
    required this.folder,
  });
  
  /// Chat folder
  final ChatFolder folder;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "folder": folder.toJson(),
      "@extra": extra,
		};
	}

  
  GetChatFolderDefaultIconName copyWith({
    ChatFolder? folder,
  }) => GetChatFolderDefaultIconName(
    folder: folder ?? this.folder,
  );

  static const String objectType = 'getChatFolderDefaultIconName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
