part of '../tdapi.dart';

/// **AddPaidMessageReaction** *(addPaidMessageReaction)* - TDLib function
///
/// Adds the paid message reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [starCount]: Number of Telegram Stars to be used for the reaction; 1-getOption("paid_reaction_star_count_max").
/// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors.
///
/// [Ok] is returned on completion.
final class AddPaidMessageReaction extends TdFunction {
  /// **AddPaidMessageReaction** *(addPaidMessageReaction)* - TDLib function
  ///
  /// Adds the paid message reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [starCount]: Number of Telegram Stars to be used for the reaction; 1-getOption("paid_reaction_star_count_max").
  /// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors.
  ///
  /// [Ok] is returned on completion.
  const AddPaidMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.starCount,
    required this.isAnonymous,
  });

  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Number of Telegram Stars to be used for the reaction; 1-getOption("paid_reaction_star_count_max")
  final int starCount;

  /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
  final bool isAnonymous;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "star_count": starCount,
      "is_anonymous": isAnonymous,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to which the message belongs
  /// * [message_id]: Identifier of the message
  /// * [star_count]: Number of Telegram Stars to be used for the reaction; 1-getOption("paid_reaction_star_count_max")
  /// * [is_anonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
  AddPaidMessageReaction copyWith({
    int? chatId,
    int? messageId,
    int? starCount,
    bool? isAnonymous,
  }) =>
      AddPaidMessageReaction(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        starCount: starCount ?? this.starCount,
        isAnonymous: isAnonymous ?? this.isAnonymous,
      );

  /// TDLib object type
  static const String defaultObjectId = 'addPaidMessageReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
