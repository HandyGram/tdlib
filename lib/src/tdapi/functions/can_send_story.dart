part of '../tdapi.dart';

/// **CanSendStory** *(canSendStory)* - TDLib function
///
/// Checks whether the current user can send a story on behalf of a chat; requires can_post_stories right for supergroup and channel chats.
///
/// * [chatId]: Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user.
///
/// [CanSendStoryResult] is returned on completion.
final class CanSendStory extends TdFunction {
  /// **CanSendStory** *(canSendStory)* - TDLib function
  ///
  /// Checks whether the current user can send a story on behalf of a chat; requires can_post_stories right for supergroup and channel chats.
  ///
  /// * [chatId]: Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user.
  ///
  /// [CanSendStoryResult] is returned on completion.
  const CanSendStory({
    required this.chatId,
  });

  /// Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user
  final int chatId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier. Pass Saved Messages chat identifier when posting a story on behalf of the current user
  CanSendStory copyWith({
    int? chatId,
  }) =>
      CanSendStory(
        chatId: chatId ?? this.chatId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canSendStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
