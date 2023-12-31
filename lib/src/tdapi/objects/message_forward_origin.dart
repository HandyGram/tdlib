part of '../tdapi.dart';

/// **MessageForwardOrigin** *(messageForwardOrigin)* - parent
///
/// Contains information about the origin of a forwarded message.
sealed class MessageForwardOrigin extends TdObject {
  
  /// **MessageForwardOrigin** *(messageForwardOrigin)* - parent
  ///
  /// Contains information about the origin of a forwarded message.
  const MessageForwardOrigin();
  
  /// a MessageForwardOrigin return type can be :
  /// * [MessageForwardOriginUser]
  /// * [MessageForwardOriginChat]
  /// * [MessageForwardOriginHiddenUser]
  /// * [MessageForwardOriginChannel]
  factory MessageForwardOrigin.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageForwardOriginUser.objectType:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.objectType:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.objectType:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.objectType:
        return MessageForwardOriginChannel.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageForwardOrigin)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageForwardOrigin copyWith();

  /// TDLib object type
  static const String objectType = 'messageForwardOrigin';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginUser** *(messageForwardOriginUser)* - child of MessageForwardOrigin
///
/// The message was originally sent by a known user.
///
/// * [senderUserId]: Identifier of the user that originally sent the message.
final class MessageForwardOriginUser extends MessageForwardOrigin {
  
  /// **MessageForwardOriginUser** *(messageForwardOriginUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a known user.
  ///
  /// * [senderUserId]: Identifier of the user that originally sent the message.
  const MessageForwardOriginUser({
    required this.senderUserId,
  });
  
  /// Identifier of the user that originally sent the message
  final int senderUserId;
  
  /// Parse from a json
  factory MessageForwardOriginUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginUser(
    senderUserId: json['sender_user_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_user_id": senderUserId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sender_user_id]: Identifier of the user that originally sent the message
  @override
  MessageForwardOriginUser copyWith({
    int? senderUserId,
  }) => MessageForwardOriginUser(
    senderUserId: senderUserId ?? this.senderUserId,
  );

  /// TDLib object type
  static const String objectType = 'messageForwardOriginUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginChat** *(messageForwardOriginChat)* - child of MessageForwardOrigin
///
/// The message was originally sent on behalf of a chat.
///
/// * [senderChatId]: Identifier of the chat that originally sent the message.
/// * [authorSignature]: For messages originally sent by an anonymous chat administrator, original message author signature.
final class MessageForwardOriginChat extends MessageForwardOrigin {
  
  /// **MessageForwardOriginChat** *(messageForwardOriginChat)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent on behalf of a chat.
  ///
  /// * [senderChatId]: Identifier of the chat that originally sent the message.
  /// * [authorSignature]: For messages originally sent by an anonymous chat administrator, original message author signature.
  const MessageForwardOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });
  
  /// Identifier of the chat that originally sent the message
  final int senderChatId;

  /// For messages originally sent by an anonymous chat administrator, original message author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChat.fromJson(Map<String, dynamic> json) => MessageForwardOriginChat(
    senderChatId: json['sender_chat_id'],
    authorSignature: json['author_signature'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_chat_id": senderChatId,
      "author_signature": authorSignature,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sender_chat_id]: Identifier of the chat that originally sent the message
  /// * [author_signature]: For messages originally sent by an anonymous chat administrator, original message author signature
  @override
  MessageForwardOriginChat copyWith({
    int? senderChatId,
    String? authorSignature,
  }) => MessageForwardOriginChat(
    senderChatId: senderChatId ?? this.senderChatId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  /// TDLib object type
  static const String objectType = 'messageForwardOriginChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginHiddenUser** *(messageForwardOriginHiddenUser)* - child of MessageForwardOrigin
///
/// The message was originally sent by a user, which is hidden by their privacy settings.
///
/// * [senderName]: Name of the sender.
final class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  
  /// **MessageForwardOriginHiddenUser** *(messageForwardOriginHiddenUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a user, which is hidden by their privacy settings.
  ///
  /// * [senderName]: Name of the sender.
  const MessageForwardOriginHiddenUser({
    required this.senderName,
  });
  
  /// Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginHiddenUser(
    senderName: json['sender_name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_name": senderName,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sender_name]: Name of the sender
  @override
  MessageForwardOriginHiddenUser copyWith({
    String? senderName,
  }) => MessageForwardOriginHiddenUser(
    senderName: senderName ?? this.senderName,
  );

  /// TDLib object type
  static const String objectType = 'messageForwardOriginHiddenUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginChannel** *(messageForwardOriginChannel)* - child of MessageForwardOrigin
///
/// The message was originally a post in a channel.
///
/// * [chatId]: Identifier of the chat from which the message was originally forwarded.
/// * [messageId]: Message identifier of the original message.
/// * [authorSignature]: Original post author signature.
final class MessageForwardOriginChannel extends MessageForwardOrigin {
  
  /// **MessageForwardOriginChannel** *(messageForwardOriginChannel)* - child of MessageForwardOrigin
  ///
  /// The message was originally a post in a channel.
  ///
  /// * [chatId]: Identifier of the chat from which the message was originally forwarded.
  /// * [messageId]: Message identifier of the original message.
  /// * [authorSignature]: Original post author signature.
  const MessageForwardOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });
  
  /// Identifier of the chat from which the message was originally forwarded
  final int chatId;

  /// Message identifier of the original message
  final int messageId;

  /// Original post author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) => MessageForwardOriginChannel(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    authorSignature: json['author_signature'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "author_signature": authorSignature,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat from which the message was originally forwarded
  /// * [message_id]: Message identifier of the original message
  /// * [author_signature]: Original post author signature
  @override
  MessageForwardOriginChannel copyWith({
    int? chatId,
    int? messageId,
    String? authorSignature,
  }) => MessageForwardOriginChannel(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  /// TDLib object type
  static const String objectType = 'messageForwardOriginChannel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
