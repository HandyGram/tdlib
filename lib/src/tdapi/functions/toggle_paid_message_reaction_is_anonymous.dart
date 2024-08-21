part of '../tdapi.dart';

/// **TogglePaidMessageReactionIsAnonymous** *(togglePaidMessageReactionIsAnonymous)* - TDLib function
///
/// Changes whether the paid message reaction of the user to a message is anonymous. The message must have paid reaction added by the user.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors.
///
/// [Ok] is returned on completion.
final class TogglePaidMessageReactionIsAnonymous extends TdFunction {
  /// **TogglePaidMessageReactionIsAnonymous** *(togglePaidMessageReactionIsAnonymous)* - TDLib function
  ///
  /// Changes whether the paid message reaction of the user to a message is anonymous. The message must have paid reaction added by the user.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors.
  ///
  /// [Ok] is returned on completion.
  const TogglePaidMessageReactionIsAnonymous({
    required this.chatId,
    required this.messageId,
    required this.isAnonymous,
  });

  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
  final bool isAnonymous;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "is_anonymous": isAnonymous,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to which the message belongs
  /// * [message_id]: Identifier of the message
  /// * [is_anonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
  TogglePaidMessageReactionIsAnonymous copyWith({
    int? chatId,
    int? messageId,
    bool? isAnonymous,
  }) =>
      TogglePaidMessageReactionIsAnonymous(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        isAnonymous: isAnonymous ?? this.isAnonymous,
      );

  /// TDLib object type
  static const String defaultObjectId = 'togglePaidMessageReactionIsAnonymous';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
