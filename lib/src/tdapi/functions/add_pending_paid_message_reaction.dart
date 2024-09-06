part of '../tdapi.dart';

/// **AddPendingPaidMessageReaction** *(addPendingPaidMessageReaction)* - TDLib function
///
/// Adds the paid message reaction to a message. Use getMessageAvailableReactions to check whether the reaction is available for the message.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [starCount]: Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max").
/// * [useDefaultIsAnonymous]: Pass true if the user didn't choose anonymity explicitly, for example, the reaction is set from the message bubble.
/// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors. Ignored if use_default_is_anonymous == true.
///
/// [Ok] is returned on completion.
final class AddPendingPaidMessageReaction extends TdFunction {
  /// **AddPendingPaidMessageReaction** *(addPendingPaidMessageReaction)* - TDLib function
  ///
  /// Adds the paid message reaction to a message. Use getMessageAvailableReactions to check whether the reaction is available for the message.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [starCount]: Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max").
  /// * [useDefaultIsAnonymous]: Pass true if the user didn't choose anonymity explicitly, for example, the reaction is set from the message bubble.
  /// * [isAnonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors. Ignored if use_default_is_anonymous == true.
  ///
  /// [Ok] is returned on completion.
  const AddPendingPaidMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.starCount,
    required this.useDefaultIsAnonymous,
    required this.isAnonymous,
  });

  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max")
  final int starCount;

  /// Pass true if the user didn't choose anonymity explicitly, for example, the reaction is set from the message bubble
  final bool useDefaultIsAnonymous;

  /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors. Ignored if use_default_is_anonymous == true
  final bool isAnonymous;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
      "star_count": starCount,
      "use_default_is_anonymous": useDefaultIsAnonymous,
      "is_anonymous": isAnonymous,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat to which the message belongs
  /// * [message_id]: Identifier of the message
  /// * [star_count]: Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max")
  /// * [use_default_is_anonymous]: Pass true if the user didn't choose anonymity explicitly, for example, the reaction is set from the message bubble
  /// * [is_anonymous]: Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors. Ignored if use_default_is_anonymous == true
  AddPendingPaidMessageReaction copyWith({
    int? chatId,
    int? messageId,
    int? starCount,
    bool? useDefaultIsAnonymous,
    bool? isAnonymous,
  }) =>
      AddPendingPaidMessageReaction(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        starCount: starCount ?? this.starCount,
        useDefaultIsAnonymous:
            useDefaultIsAnonymous ?? this.useDefaultIsAnonymous,
        isAnonymous: isAnonymous ?? this.isAnonymous,
      );

  /// TDLib object type
  static const String defaultObjectId = 'addPendingPaidMessageReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
