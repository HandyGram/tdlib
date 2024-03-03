part of '../tdapi.dart';

/// **InviteGroupCallParticipants** *(inviteGroupCallParticipants)* - TDLib function
///
/// Invites users to an active group call. Sends a service message of type messageInviteVideoChatParticipants for video chats.
///
/// * [groupCallId]: Group call identifier.
/// * [userIds]: User identifiers. At most 10 users can be invited simultaneously.
///
/// [Ok] is returned on completion.
final class InviteGroupCallParticipants extends TdFunction {
  /// **InviteGroupCallParticipants** *(inviteGroupCallParticipants)* - TDLib function
  ///
  /// Invites users to an active group call. Sends a service message of type messageInviteVideoChatParticipants for video chats.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [userIds]: User identifiers. At most 10 users can be invited simultaneously.
  ///
  /// [Ok] is returned on completion.
  const InviteGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// Group call identifier
  final int groupCallId;

  /// User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  /// * [user_ids]: User identifiers. At most 10 users can be invited simultaneously
  InviteGroupCallParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) =>
      InviteGroupCallParticipants(
        groupCallId: groupCallId ?? this.groupCallId,
        userIds: userIds ?? this.userIds,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inviteGroupCallParticipants';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
