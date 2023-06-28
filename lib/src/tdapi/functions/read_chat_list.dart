part of '../tdapi.dart';

/// **ReadChatList** *(readChatList)* - TDLib function
///
/// Traverse all chats in a chat list and marks all messages in the chats as read.
///
/// * [chatList]: Chat list in which to mark all chats as read.
///
/// [Ok] is returned on completion.
final class ReadChatList extends TdFunction {
  
  /// **ReadChatList** *(readChatList)* - TDLib function
  ///
  /// Traverse all chats in a chat list and marks all messages in the chats as read.
  ///
  /// * [chatList]: Chat list in which to mark all chats as read.
  ///
  /// [Ok] is returned on completion.
  const ReadChatList({
    required this.chatList,
  });
  
  /// Chat list in which to mark all chats as read
  final ChatList chatList;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_list": chatList.toJson(),
      "@extra": extra,
		};
	}

  
  ReadChatList copyWith({
    ChatList? chatList,
  }) => ReadChatList(
    chatList: chatList ?? this.chatList,
  );

  static const String objectType = 'readChatList';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
