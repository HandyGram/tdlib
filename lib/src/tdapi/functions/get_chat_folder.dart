part of '../tdapi.dart';

/// **GetChatFolder** *(getChatFolder)* - TDLib function
///
/// Returns information about a chat folder by its identifier.
///
/// * [chatFolderId]: Chat folder identifier.
///
/// [ChatFolder] is returned on completion.
final class GetChatFolder extends TdFunction {
  
  /// **GetChatFolder** *(getChatFolder)* - TDLib function
  ///
  /// Returns information about a chat folder by its identifier.
  ///
  /// * [chatFolderId]: Chat folder identifier.
  ///
  /// [ChatFolder] is returned on completion.
  const GetChatFolder({
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

  
  GetChatFolder copyWith({
    int? chatFolderId,
  }) => GetChatFolder(
    chatFolderId: chatFolderId ?? this.chatFolderId,
  );

  static const String objectType = 'getChatFolder';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
