part of '../tdapi.dart';

/// **MessageSponsorType** *(messageSponsorType)* - parent
///
/// Describes type of a message sponsor.
sealed class MessageSponsorType extends TdObject {
  
  /// **MessageSponsorType** *(messageSponsorType)* - parent
  ///
  /// Describes type of a message sponsor.
  const MessageSponsorType();
  
  /// a MessageSponsorType return type can be :
  /// * [MessageSponsorTypeBot]
  /// * [MessageSponsorTypeWebApp]
  /// * [MessageSponsorTypePublicChannel]
  /// * [MessageSponsorTypePrivateChannel]
  /// * [MessageSponsorTypeWebsite]
  factory MessageSponsorType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSponsorTypeBot.defaultObjectId:
        return MessageSponsorTypeBot.fromJson(json);
      case MessageSponsorTypeWebApp.defaultObjectId:
        return MessageSponsorTypeWebApp.fromJson(json);
      case MessageSponsorTypePublicChannel.defaultObjectId:
        return MessageSponsorTypePublicChannel.fromJson(json);
      case MessageSponsorTypePrivateChannel.defaultObjectId:
        return MessageSponsorTypePrivateChannel.fromJson(json);
      case MessageSponsorTypeWebsite.defaultObjectId:
        return MessageSponsorTypeWebsite.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSponsorType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageSponsorType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSponsorTypeBot** *(messageSponsorTypeBot)* - child of MessageSponsorType
///
/// The sponsor is a bot.
///
/// * [botUserId]: User identifier of the bot.
/// * [link]: An internal link to be opened when the sponsored message is clicked.
final class MessageSponsorTypeBot extends MessageSponsorType {
  
  /// **MessageSponsorTypeBot** *(messageSponsorTypeBot)* - child of MessageSponsorType
  ///
  /// The sponsor is a bot.
  ///
  /// * [botUserId]: User identifier of the bot.
  /// * [link]: An internal link to be opened when the sponsored message is clicked.
  const MessageSponsorTypeBot({
    required this.botUserId,
    required this.link,
  });
  
  /// User identifier of the bot 
  final int botUserId;

  /// An internal link to be opened when the sponsored message is clicked
  final InternalLinkType link;
  
  /// Parse from a json
  factory MessageSponsorTypeBot.fromJson(Map<String, dynamic> json) => MessageSponsorTypeBot(
    botUserId: json['bot_user_id'],
    link: InternalLinkType.fromJson(json['link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "bot_user_id": botUserId,
      "link": link.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: User identifier of the bot 
  /// * [link]: An internal link to be opened when the sponsored message is clicked
  @override
  MessageSponsorTypeBot copyWith({
    int? botUserId,
    InternalLinkType? link,
  }) => MessageSponsorTypeBot(
    botUserId: botUserId ?? this.botUserId,
    link: link ?? this.link,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorTypeBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSponsorTypeWebApp** *(messageSponsorTypeWebApp)* - child of MessageSponsorType
///
/// The sponsor is a web app.
///
/// * [webAppTitle]: Web App title.
/// * [link]: An internal link to be opened when the sponsored message is clicked.
final class MessageSponsorTypeWebApp extends MessageSponsorType {
  
  /// **MessageSponsorTypeWebApp** *(messageSponsorTypeWebApp)* - child of MessageSponsorType
  ///
  /// The sponsor is a web app.
  ///
  /// * [webAppTitle]: Web App title.
  /// * [link]: An internal link to be opened when the sponsored message is clicked.
  const MessageSponsorTypeWebApp({
    required this.webAppTitle,
    required this.link,
  });
  
  /// Web App title 
  final String webAppTitle;

  /// An internal link to be opened when the sponsored message is clicked
  final InternalLinkType link;
  
  /// Parse from a json
  factory MessageSponsorTypeWebApp.fromJson(Map<String, dynamic> json) => MessageSponsorTypeWebApp(
    webAppTitle: json['web_app_title'],
    link: InternalLinkType.fromJson(json['link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "web_app_title": webAppTitle,
      "link": link.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [web_app_title]: Web App title 
  /// * [link]: An internal link to be opened when the sponsored message is clicked
  @override
  MessageSponsorTypeWebApp copyWith({
    String? webAppTitle,
    InternalLinkType? link,
  }) => MessageSponsorTypeWebApp(
    webAppTitle: webAppTitle ?? this.webAppTitle,
    link: link ?? this.link,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorTypeWebApp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSponsorTypePublicChannel** *(messageSponsorTypePublicChannel)* - child of MessageSponsorType
///
/// The sponsor is a public channel chat.
///
/// * [chatId]: Sponsor chat identifier.
/// * [link]: An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead *(optional)*.
final class MessageSponsorTypePublicChannel extends MessageSponsorType {
  
  /// **MessageSponsorTypePublicChannel** *(messageSponsorTypePublicChannel)* - child of MessageSponsorType
  ///
  /// The sponsor is a public channel chat.
  ///
  /// * [chatId]: Sponsor chat identifier.
  /// * [link]: An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead *(optional)*.
  const MessageSponsorTypePublicChannel({
    required this.chatId,
    this.link,
  });
  
  /// Sponsor chat identifier 
  final int chatId;

  /// An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;
  
  /// Parse from a json
  factory MessageSponsorTypePublicChannel.fromJson(Map<String, dynamic> json) => MessageSponsorTypePublicChannel(
    chatId: json['chat_id'],
    link: json['link'] == null ? null : InternalLinkType.fromJson(json['link']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "link": link?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Sponsor chat identifier 
  /// * [link]: An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
  @override
  MessageSponsorTypePublicChannel copyWith({
    int? chatId,
    InternalLinkType? link,
  }) => MessageSponsorTypePublicChannel(
    chatId: chatId ?? this.chatId,
    link: link ?? this.link,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorTypePublicChannel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSponsorTypePrivateChannel** *(messageSponsorTypePrivateChannel)* - child of MessageSponsorType
///
/// The sponsor is a private channel chat.
///
/// * [title]: Title of the chat.
/// * [inviteLink]: Invite link for the channel.
final class MessageSponsorTypePrivateChannel extends MessageSponsorType {
  
  /// **MessageSponsorTypePrivateChannel** *(messageSponsorTypePrivateChannel)* - child of MessageSponsorType
  ///
  /// The sponsor is a private channel chat.
  ///
  /// * [title]: Title of the chat.
  /// * [inviteLink]: Invite link for the channel.
  const MessageSponsorTypePrivateChannel({
    required this.title,
    required this.inviteLink,
  });
  
  /// Title of the chat 
  final String title;

  /// Invite link for the channel
  final String inviteLink;
  
  /// Parse from a json
  factory MessageSponsorTypePrivateChannel.fromJson(Map<String, dynamic> json) => MessageSponsorTypePrivateChannel(
    title: json['title'],
    inviteLink: json['invite_link'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title,
      "invite_link": inviteLink,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Title of the chat 
  /// * [invite_link]: Invite link for the channel
  @override
  MessageSponsorTypePrivateChannel copyWith({
    String? title,
    String? inviteLink,
  }) => MessageSponsorTypePrivateChannel(
    title: title ?? this.title,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorTypePrivateChannel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSponsorTypeWebsite** *(messageSponsorTypeWebsite)* - child of MessageSponsorType
///
/// The sponsor is a website.
///
/// * [url]: URL of the website.
/// * [name]: Name of the website.
final class MessageSponsorTypeWebsite extends MessageSponsorType {
  
  /// **MessageSponsorTypeWebsite** *(messageSponsorTypeWebsite)* - child of MessageSponsorType
  ///
  /// The sponsor is a website.
  ///
  /// * [url]: URL of the website.
  /// * [name]: Name of the website.
  const MessageSponsorTypeWebsite({
    required this.url,
    required this.name,
  });
  
  /// URL of the website 
  final String url;

  /// Name of the website
  final String name;
  
  /// Parse from a json
  factory MessageSponsorTypeWebsite.fromJson(Map<String, dynamic> json) => MessageSponsorTypeWebsite(
    url: json['url'],
    name: json['name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "url": url,
      "name": name,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: URL of the website 
  /// * [name]: Name of the website
  @override
  MessageSponsorTypeWebsite copyWith({
    String? url,
    String? name,
  }) => MessageSponsorTypeWebsite(
    url: url ?? this.url,
    name: name ?? this.name,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsorTypeWebsite';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
