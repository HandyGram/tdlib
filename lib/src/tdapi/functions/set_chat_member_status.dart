part of '../tdapi.dart';

/// **SetChatMemberStatus** *(setChatMemberStatus)* - TDLib function
///
/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed.
///
/// * [chatId]: Chat identifier.
/// * [memberId]: Member identifier. Chats can be only banned and unbanned in supergroups and channels.
/// * [status]: The new status of the member in the chat.
///
/// [Ok] is returned on completion.
final class SetChatMemberStatus extends TdFunction {
  
  /// **SetChatMemberStatus** *(setChatMemberStatus)* - TDLib function
  ///
  /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [memberId]: Member identifier. Chats can be only banned and unbanned in supergroups and channels.
  /// * [status]: The new status of the member in the chat.
  ///
  /// [Ok] is returned on completion.
  const SetChatMemberStatus({
    required this.chatId,
    required this.memberId,
    required this.status,
  });
  
  /// Chat identifier
  final int chatId;

  /// Member identifier. Chats can be only banned and unbanned in supergroups and channels
  final MessageSender memberId;

  /// The new status of the member in the chat
  final ChatMemberStatus status;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "member_id": memberId.toJson(),
      "status": status.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [member_id]: Member identifier. Chats can be only banned and unbanned in supergroups and channels
  /// * [status]: The new status of the member in the chat
  SetChatMemberStatus copyWith({
    int? chatId,
    MessageSender? memberId,
    ChatMemberStatus? status,
  }) => SetChatMemberStatus(
    chatId: chatId ?? this.chatId,
    memberId: memberId ?? this.memberId,
    status: status ?? this.status,
  );

  /// TDLib object type
  static const String objectType = 'setChatMemberStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
