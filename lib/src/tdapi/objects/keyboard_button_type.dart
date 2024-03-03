part of '../tdapi.dart';

/// **KeyboardButtonType** *(keyboardButtonType)* - parent
///
/// Describes a keyboard button type.
sealed class KeyboardButtonType extends TdObject {
  /// **KeyboardButtonType** *(keyboardButtonType)* - parent
  ///
  /// Describes a keyboard button type.
  const KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * [KeyboardButtonTypeText]
  /// * [KeyboardButtonTypeRequestPhoneNumber]
  /// * [KeyboardButtonTypeRequestLocation]
  /// * [KeyboardButtonTypeRequestPoll]
  /// * [KeyboardButtonTypeRequestUsers]
  /// * [KeyboardButtonTypeRequestChat]
  /// * [KeyboardButtonTypeWebApp]
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case KeyboardButtonTypeText.defaultObjectId:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.defaultObjectId:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.defaultObjectId:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.defaultObjectId:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      case KeyboardButtonTypeRequestUsers.defaultObjectId:
        return KeyboardButtonTypeRequestUsers.fromJson(json);
      case KeyboardButtonTypeRequestChat.defaultObjectId:
        return KeyboardButtonTypeRequestChat.fromJson(json);
      case KeyboardButtonTypeWebApp.defaultObjectId:
        return KeyboardButtonTypeWebApp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of KeyboardButtonType)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  KeyboardButtonType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeText** *(keyboardButtonTypeText)* - child of KeyboardButtonType
///
/// A simple button, with text that must be sent when the button is pressed.
final class KeyboardButtonTypeText extends KeyboardButtonType {
  /// **KeyboardButtonTypeText** *(keyboardButtonTypeText)* - child of KeyboardButtonType
  ///
  /// A simple button, with text that must be sent when the button is pressed.
  const KeyboardButtonTypeText();

  /// Parse from a json
  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) =>
      const KeyboardButtonTypeText();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  KeyboardButtonTypeText copyWith() => const KeyboardButtonTypeText();

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeText';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeRequestPhoneNumber** *(keyboardButtonTypeRequestPhoneNumber)* - child of KeyboardButtonType
///
/// A button that sends the user's phone number when pressed; available only in private chats.
final class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  /// **KeyboardButtonTypeRequestPhoneNumber** *(keyboardButtonTypeRequestPhoneNumber)* - child of KeyboardButtonType
  ///
  /// A button that sends the user's phone number when pressed; available only in private chats.
  const KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      const KeyboardButtonTypeRequestPhoneNumber();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  KeyboardButtonTypeRequestPhoneNumber copyWith() =>
      const KeyboardButtonTypeRequestPhoneNumber();

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeRequestPhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeRequestLocation** *(keyboardButtonTypeRequestLocation)* - child of KeyboardButtonType
///
/// A button that sends the user's location when pressed; available only in private chats.
final class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  /// **KeyboardButtonTypeRequestLocation** *(keyboardButtonTypeRequestLocation)* - child of KeyboardButtonType
  ///
  /// A button that sends the user's location when pressed; available only in private chats.
  const KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  factory KeyboardButtonTypeRequestLocation.fromJson(
          Map<String, dynamic> json) =>
      const KeyboardButtonTypeRequestLocation();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  KeyboardButtonTypeRequestLocation copyWith() =>
      const KeyboardButtonTypeRequestLocation();

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeRequestLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeRequestPoll** *(keyboardButtonTypeRequestPoll)* - child of KeyboardButtonType
///
/// A button that allows the user to create and send a poll when pressed; available only in private chats.
///
/// * [forceRegular]: If true, only regular polls must be allowed to create.
/// * [forceQuiz]: If true, only polls in quiz mode must be allowed to create.
final class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  /// **KeyboardButtonTypeRequestPoll** *(keyboardButtonTypeRequestPoll)* - child of KeyboardButtonType
  ///
  /// A button that allows the user to create and send a poll when pressed; available only in private chats.
  ///
  /// * [forceRegular]: If true, only regular polls must be allowed to create.
  /// * [forceQuiz]: If true, only polls in quiz mode must be allowed to create.
  const KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });

  /// If true, only regular polls must be allowed to create
  final bool forceRegular;

  /// If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestPoll(
        forceRegular: json['force_regular'],
        forceQuiz: json['force_quiz'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "force_regular": forceRegular,
      "force_quiz": forceQuiz,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [force_regular]: If true, only regular polls must be allowed to create
  /// * [force_quiz]: If true, only polls in quiz mode must be allowed to create
  @override
  KeyboardButtonTypeRequestPoll copyWith({
    bool? forceRegular,
    bool? forceQuiz,
  }) =>
      KeyboardButtonTypeRequestPoll(
        forceRegular: forceRegular ?? this.forceRegular,
        forceQuiz: forceQuiz ?? this.forceQuiz,
      );

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeRequestPoll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeRequestUsers** *(keyboardButtonTypeRequestUsers)* - child of KeyboardButtonType
///
/// A button that requests users to be shared by the current user; available only in private chats. Use the method shareUsersWithBot to complete the request.
///
/// * [id]: Unique button identifier.
/// * [restrictUserIsBot]: True, if the shared users must or must not be bots.
/// * [userIsBot]: True, if the shared users must be bots; otherwise, the shared users must not be bots. Ignored if restrict_user_is_bot is false.
/// * [restrictUserIsPremium]: True, if the shared users must or must not be Telegram Premium users.
/// * [userIsPremium]: True, if the shared users must be Telegram Premium users; otherwise, the shared users must not be Telegram Premium users. Ignored if restrict_user_is_premium is false.
/// * [maxQuantity]: The maximum number of users to share.
final class KeyboardButtonTypeRequestUsers extends KeyboardButtonType {
  /// **KeyboardButtonTypeRequestUsers** *(keyboardButtonTypeRequestUsers)* - child of KeyboardButtonType
  ///
  /// A button that requests users to be shared by the current user; available only in private chats. Use the method shareUsersWithBot to complete the request.
  ///
  /// * [id]: Unique button identifier.
  /// * [restrictUserIsBot]: True, if the shared users must or must not be bots.
  /// * [userIsBot]: True, if the shared users must be bots; otherwise, the shared users must not be bots. Ignored if restrict_user_is_bot is false.
  /// * [restrictUserIsPremium]: True, if the shared users must or must not be Telegram Premium users.
  /// * [userIsPremium]: True, if the shared users must be Telegram Premium users; otherwise, the shared users must not be Telegram Premium users. Ignored if restrict_user_is_premium is false.
  /// * [maxQuantity]: The maximum number of users to share.
  const KeyboardButtonTypeRequestUsers({
    required this.id,
    required this.restrictUserIsBot,
    required this.userIsBot,
    required this.restrictUserIsPremium,
    required this.userIsPremium,
    required this.maxQuantity,
  });

  /// Unique button identifier
  final int id;

  /// True, if the shared users must or must not be bots
  final bool restrictUserIsBot;

  /// True, if the shared users must be bots; otherwise, the shared users must not be bots. Ignored if restrict_user_is_bot is false
  final bool userIsBot;

  /// True, if the shared users must or must not be Telegram Premium users
  final bool restrictUserIsPremium;

  /// True, if the shared users must be Telegram Premium users; otherwise, the shared users must not be Telegram Premium users. Ignored if restrict_user_is_premium is false
  final bool userIsPremium;

  /// The maximum number of users to share
  final int maxQuantity;

  /// Parse from a json
  factory KeyboardButtonTypeRequestUsers.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestUsers(
        id: json['id'],
        restrictUserIsBot: json['restrict_user_is_bot'],
        userIsBot: json['user_is_bot'],
        restrictUserIsPremium: json['restrict_user_is_premium'],
        userIsPremium: json['user_is_premium'],
        maxQuantity: json['max_quantity'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "restrict_user_is_bot": restrictUserIsBot,
      "user_is_bot": userIsBot,
      "restrict_user_is_premium": restrictUserIsPremium,
      "user_is_premium": userIsPremium,
      "max_quantity": maxQuantity,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique button identifier
  /// * [restrict_user_is_bot]: True, if the shared users must or must not be bots
  /// * [user_is_bot]: True, if the shared users must be bots; otherwise, the shared users must not be bots. Ignored if restrict_user_is_bot is false
  /// * [restrict_user_is_premium]: True, if the shared users must or must not be Telegram Premium users
  /// * [user_is_premium]: True, if the shared users must be Telegram Premium users; otherwise, the shared users must not be Telegram Premium users. Ignored if restrict_user_is_premium is false
  /// * [max_quantity]: The maximum number of users to share
  @override
  KeyboardButtonTypeRequestUsers copyWith({
    int? id,
    bool? restrictUserIsBot,
    bool? userIsBot,
    bool? restrictUserIsPremium,
    bool? userIsPremium,
    int? maxQuantity,
  }) =>
      KeyboardButtonTypeRequestUsers(
        id: id ?? this.id,
        restrictUserIsBot: restrictUserIsBot ?? this.restrictUserIsBot,
        userIsBot: userIsBot ?? this.userIsBot,
        restrictUserIsPremium:
            restrictUserIsPremium ?? this.restrictUserIsPremium,
        userIsPremium: userIsPremium ?? this.userIsPremium,
        maxQuantity: maxQuantity ?? this.maxQuantity,
      );

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeRequestUsers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeRequestChat** *(keyboardButtonTypeRequestChat)* - child of KeyboardButtonType
///
/// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request.
///
/// * [id]: Unique button identifier.
/// * [chatIsChannel]: True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared.
/// * [restrictChatIsForum]: True, if the chat must or must not be a forum supergroup.
/// * [chatIsForum]: True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false.
/// * [restrictChatHasUsername]: True, if the chat must or must not have a username.
/// * [chatHasUsername]: True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false.
/// * [chatIsCreated]: True, if the chat must be created by the current user.
/// * [userAdministratorRights]: Expected user administrator rights in the chat; may be null if they aren't restricted *(optional)*.
/// * [botAdministratorRights]: Expected bot administrator rights in the chat; may be null if they aren't restricted *(optional)*.
/// * [botIsMember]: True, if the bot must be a member of the chat; for basic group and supergroup chats only.
final class KeyboardButtonTypeRequestChat extends KeyboardButtonType {
  /// **KeyboardButtonTypeRequestChat** *(keyboardButtonTypeRequestChat)* - child of KeyboardButtonType
  ///
  /// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request.
  ///
  /// * [id]: Unique button identifier.
  /// * [chatIsChannel]: True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared.
  /// * [restrictChatIsForum]: True, if the chat must or must not be a forum supergroup.
  /// * [chatIsForum]: True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false.
  /// * [restrictChatHasUsername]: True, if the chat must or must not have a username.
  /// * [chatHasUsername]: True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false.
  /// * [chatIsCreated]: True, if the chat must be created by the current user.
  /// * [userAdministratorRights]: Expected user administrator rights in the chat; may be null if they aren't restricted *(optional)*.
  /// * [botAdministratorRights]: Expected bot administrator rights in the chat; may be null if they aren't restricted *(optional)*.
  /// * [botIsMember]: True, if the bot must be a member of the chat; for basic group and supergroup chats only.
  const KeyboardButtonTypeRequestChat({
    required this.id,
    required this.chatIsChannel,
    required this.restrictChatIsForum,
    required this.chatIsForum,
    required this.restrictChatHasUsername,
    required this.chatHasUsername,
    required this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    required this.botIsMember,
  });

  /// Unique button identifier
  final int id;

  /// True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared
  final bool chatIsChannel;

  /// True, if the chat must or must not be a forum supergroup
  final bool restrictChatIsForum;

  /// True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false
  final bool chatIsForum;

  /// True, if the chat must or must not have a username
  final bool restrictChatHasUsername;

  /// True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false
  final bool chatHasUsername;

  /// True, if the chat must be created by the current user
  final bool chatIsCreated;

  /// Expected user administrator rights in the chat; may be null if they aren't restricted
  final ChatAdministratorRights? userAdministratorRights;

  /// Expected bot administrator rights in the chat; may be null if they aren't restricted
  final ChatAdministratorRights? botAdministratorRights;

  /// True, if the bot must be a member of the chat; for basic group and supergroup chats only
  final bool botIsMember;

  /// Parse from a json
  factory KeyboardButtonTypeRequestChat.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestChat(
        id: json['id'],
        chatIsChannel: json['chat_is_channel'],
        restrictChatIsForum: json['restrict_chat_is_forum'],
        chatIsForum: json['chat_is_forum'],
        restrictChatHasUsername: json['restrict_chat_has_username'],
        chatHasUsername: json['chat_has_username'],
        chatIsCreated: json['chat_is_created'],
        userAdministratorRights: json['user_administrator_rights'] == null
            ? null
            : ChatAdministratorRights.fromJson(
                json['user_administrator_rights']),
        botAdministratorRights: json['bot_administrator_rights'] == null
            ? null
            : ChatAdministratorRights.fromJson(
                json['bot_administrator_rights']),
        botIsMember: json['bot_is_member'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "chat_is_channel": chatIsChannel,
      "restrict_chat_is_forum": restrictChatIsForum,
      "chat_is_forum": chatIsForum,
      "restrict_chat_has_username": restrictChatHasUsername,
      "chat_has_username": chatHasUsername,
      "chat_is_created": chatIsCreated,
      "user_administrator_rights": userAdministratorRights?.toJson(),
      "bot_administrator_rights": botAdministratorRights?.toJson(),
      "bot_is_member": botIsMember,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique button identifier
  /// * [chat_is_channel]: True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared
  /// * [restrict_chat_is_forum]: True, if the chat must or must not be a forum supergroup
  /// * [chat_is_forum]: True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false
  /// * [restrict_chat_has_username]: True, if the chat must or must not have a username
  /// * [chat_has_username]: True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false
  /// * [chat_is_created]: True, if the chat must be created by the current user
  /// * [user_administrator_rights]: Expected user administrator rights in the chat; may be null if they aren't restricted
  /// * [bot_administrator_rights]: Expected bot administrator rights in the chat; may be null if they aren't restricted
  /// * [bot_is_member]: True, if the bot must be a member of the chat; for basic group and supergroup chats only
  @override
  KeyboardButtonTypeRequestChat copyWith({
    int? id,
    bool? chatIsChannel,
    bool? restrictChatIsForum,
    bool? chatIsForum,
    bool? restrictChatHasUsername,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
  }) =>
      KeyboardButtonTypeRequestChat(
        id: id ?? this.id,
        chatIsChannel: chatIsChannel ?? this.chatIsChannel,
        restrictChatIsForum: restrictChatIsForum ?? this.restrictChatIsForum,
        chatIsForum: chatIsForum ?? this.chatIsForum,
        restrictChatHasUsername:
            restrictChatHasUsername ?? this.restrictChatHasUsername,
        chatHasUsername: chatHasUsername ?? this.chatHasUsername,
        chatIsCreated: chatIsCreated ?? this.chatIsCreated,
        userAdministratorRights:
            userAdministratorRights ?? this.userAdministratorRights,
        botAdministratorRights:
            botAdministratorRights ?? this.botAdministratorRights,
        botIsMember: botIsMember ?? this.botIsMember,
      );

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeRequestChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **KeyboardButtonTypeWebApp** *(keyboardButtonTypeWebApp)* - child of KeyboardButtonType
///
/// A button that opens a Web App by calling getWebAppUrl.
///
/// * [url]: An HTTP URL to pass to getWebAppUrl.
final class KeyboardButtonTypeWebApp extends KeyboardButtonType {
  /// **KeyboardButtonTypeWebApp** *(keyboardButtonTypeWebApp)* - child of KeyboardButtonType
  ///
  /// A button that opens a Web App by calling getWebAppUrl.
  ///
  /// * [url]: An HTTP URL to pass to getWebAppUrl.
  const KeyboardButtonTypeWebApp({
    required this.url,
  });

  /// An HTTP URL to pass to getWebAppUrl
  final String url;

  /// Parse from a json
  factory KeyboardButtonTypeWebApp.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeWebApp(
        url: json['url'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "url": url,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: An HTTP URL to pass to getWebAppUrl
  @override
  KeyboardButtonTypeWebApp copyWith({
    String? url,
  }) =>
      KeyboardButtonTypeWebApp(
        url: url ?? this.url,
      );

  /// TDLib object type
  static const String defaultObjectId = 'keyboardButtonTypeWebApp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
