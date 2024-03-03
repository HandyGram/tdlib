part of '../tdapi.dart';

/// **TargetChat** *(targetChat)* - parent
///
/// Describes the target chat to be opened.
sealed class TargetChat extends TdObject {
  /// **TargetChat** *(targetChat)* - parent
  ///
  /// Describes the target chat to be opened.
  const TargetChat();

  /// a TargetChat return type can be :
  /// * [TargetChatCurrent]
  /// * [TargetChatChosen]
  /// * [TargetChatInternalLink]
  factory TargetChat.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TargetChatCurrent.defaultObjectId:
        return TargetChatCurrent.fromJson(json);
      case TargetChatChosen.defaultObjectId:
        return TargetChatChosen.fromJson(json);
      case TargetChatInternalLink.defaultObjectId:
        return TargetChatInternalLink.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TargetChat)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  TargetChat copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'targetChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TargetChatCurrent** *(targetChatCurrent)* - child of TargetChat
///
/// The currently opened chat needs to be kept.
final class TargetChatCurrent extends TargetChat {
  /// **TargetChatCurrent** *(targetChatCurrent)* - child of TargetChat
  ///
  /// The currently opened chat needs to be kept.
  const TargetChatCurrent();

  /// Parse from a json
  factory TargetChatCurrent.fromJson(Map<String, dynamic> json) =>
      const TargetChatCurrent();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  TargetChatCurrent copyWith() => const TargetChatCurrent();

  /// TDLib object type
  static const String defaultObjectId = 'targetChatCurrent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TargetChatChosen** *(targetChatChosen)* - child of TargetChat
///
/// The chat needs to be chosen by the user among chats of the specified types.
///
/// * [allowUserChats]: True, if private chats with ordinary users are allowed.
/// * [allowBotChats]: True, if private chats with other bots are allowed.
/// * [allowGroupChats]: True, if basic group and supergroup chats are allowed.
/// * [allowChannelChats]: True, if channel chats are allowed.
final class TargetChatChosen extends TargetChat {
  /// **TargetChatChosen** *(targetChatChosen)* - child of TargetChat
  ///
  /// The chat needs to be chosen by the user among chats of the specified types.
  ///
  /// * [allowUserChats]: True, if private chats with ordinary users are allowed.
  /// * [allowBotChats]: True, if private chats with other bots are allowed.
  /// * [allowGroupChats]: True, if basic group and supergroup chats are allowed.
  /// * [allowChannelChats]: True, if channel chats are allowed.
  const TargetChatChosen({
    required this.allowUserChats,
    required this.allowBotChats,
    required this.allowGroupChats,
    required this.allowChannelChats,
  });

  /// True, if private chats with ordinary users are allowed
  final bool allowUserChats;

  /// True, if private chats with other bots are allowed
  final bool allowBotChats;

  /// True, if basic group and supergroup chats are allowed
  final bool allowGroupChats;

  /// True, if channel chats are allowed
  final bool allowChannelChats;

  /// Parse from a json
  factory TargetChatChosen.fromJson(Map<String, dynamic> json) =>
      TargetChatChosen(
        allowUserChats: json['allow_user_chats'],
        allowBotChats: json['allow_bot_chats'],
        allowGroupChats: json['allow_group_chats'],
        allowChannelChats: json['allow_channel_chats'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "allow_user_chats": allowUserChats,
      "allow_bot_chats": allowBotChats,
      "allow_group_chats": allowGroupChats,
      "allow_channel_chats": allowChannelChats,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [allow_user_chats]: True, if private chats with ordinary users are allowed
  /// * [allow_bot_chats]: True, if private chats with other bots are allowed
  /// * [allow_group_chats]: True, if basic group and supergroup chats are allowed
  /// * [allow_channel_chats]: True, if channel chats are allowed
  @override
  TargetChatChosen copyWith({
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) =>
      TargetChatChosen(
        allowUserChats: allowUserChats ?? this.allowUserChats,
        allowBotChats: allowBotChats ?? this.allowBotChats,
        allowGroupChats: allowGroupChats ?? this.allowGroupChats,
        allowChannelChats: allowChannelChats ?? this.allowChannelChats,
      );

  /// TDLib object type
  static const String defaultObjectId = 'targetChatChosen';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **TargetChatInternalLink** *(targetChatInternalLink)* - child of TargetChat
///
/// The chat needs to be open with the provided internal link.
///
/// * [link]: An internal link pointing to the chat.
final class TargetChatInternalLink extends TargetChat {
  /// **TargetChatInternalLink** *(targetChatInternalLink)* - child of TargetChat
  ///
  /// The chat needs to be open with the provided internal link.
  ///
  /// * [link]: An internal link pointing to the chat.
  const TargetChatInternalLink({
    required this.link,
  });

  /// An internal link pointing to the chat
  final InternalLinkType link;

  /// Parse from a json
  factory TargetChatInternalLink.fromJson(Map<String, dynamic> json) =>
      TargetChatInternalLink(
        link: InternalLinkType.fromJson(json['link']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "link": link.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [link]: An internal link pointing to the chat
  @override
  TargetChatInternalLink copyWith({
    InternalLinkType? link,
  }) =>
      TargetChatInternalLink(
        link: link ?? this.link,
      );

  /// TDLib object type
  static const String defaultObjectId = 'targetChatInternalLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
