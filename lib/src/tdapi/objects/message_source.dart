part of '../tdapi.dart';

/// **MessageSource** *(messageSource)* - parent
///
/// Describes source of a message.
sealed class MessageSource extends TdObject {
  
  /// **MessageSource** *(messageSource)* - parent
  ///
  /// Describes source of a message.
  const MessageSource();
  
  /// a MessageSource return type can be :
  /// * [MessageSourceChatHistory]
  /// * [MessageSourceMessageThreadHistory]
  /// * [MessageSourceForumTopicHistory]
  /// * [MessageSourceHistoryPreview]
  /// * [MessageSourceChatList]
  /// * [MessageSourceSearch]
  /// * [MessageSourceChatEventLog]
  /// * [MessageSourceNotification]
  /// * [MessageSourceScreenshot]
  /// * [MessageSourceOther]
  factory MessageSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSourceChatHistory.objectType:
        return MessageSourceChatHistory.fromJson(json);
      case MessageSourceMessageThreadHistory.objectType:
        return MessageSourceMessageThreadHistory.fromJson(json);
      case MessageSourceForumTopicHistory.objectType:
        return MessageSourceForumTopicHistory.fromJson(json);
      case MessageSourceHistoryPreview.objectType:
        return MessageSourceHistoryPreview.fromJson(json);
      case MessageSourceChatList.objectType:
        return MessageSourceChatList.fromJson(json);
      case MessageSourceSearch.objectType:
        return MessageSourceSearch.fromJson(json);
      case MessageSourceChatEventLog.objectType:
        return MessageSourceChatEventLog.fromJson(json);
      case MessageSourceNotification.objectType:
        return MessageSourceNotification.fromJson(json);
      case MessageSourceScreenshot.objectType:
        return MessageSourceScreenshot.fromJson(json);
      case MessageSourceOther.objectType:
        return MessageSourceOther.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSource)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageSource copyWith();

  /// TDLib object type
  static const String objectType = 'messageSource';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceChatHistory** *(messageSourceChatHistory)* - child of MessageSource
///
/// The message is from a chat history.
final class MessageSourceChatHistory extends MessageSource {
  
  /// **MessageSourceChatHistory** *(messageSourceChatHistory)* - child of MessageSource
  ///
  /// The message is from a chat history.
  const MessageSourceChatHistory();
  
  /// Parse from a json
  factory MessageSourceChatHistory.fromJson(Map<String, dynamic> json) => const MessageSourceChatHistory();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceChatHistory copyWith() => const MessageSourceChatHistory();

  /// TDLib object type
  static const String objectType = 'messageSourceChatHistory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceMessageThreadHistory** *(messageSourceMessageThreadHistory)* - child of MessageSource
///
/// The message is from a message thread history.
final class MessageSourceMessageThreadHistory extends MessageSource {
  
  /// **MessageSourceMessageThreadHistory** *(messageSourceMessageThreadHistory)* - child of MessageSource
  ///
  /// The message is from a message thread history.
  const MessageSourceMessageThreadHistory();
  
  /// Parse from a json
  factory MessageSourceMessageThreadHistory.fromJson(Map<String, dynamic> json) => const MessageSourceMessageThreadHistory();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceMessageThreadHistory copyWith() => const MessageSourceMessageThreadHistory();

  /// TDLib object type
  static const String objectType = 'messageSourceMessageThreadHistory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceForumTopicHistory** *(messageSourceForumTopicHistory)* - child of MessageSource
///
/// The message is from a forum topic history.
final class MessageSourceForumTopicHistory extends MessageSource {
  
  /// **MessageSourceForumTopicHistory** *(messageSourceForumTopicHistory)* - child of MessageSource
  ///
  /// The message is from a forum topic history.
  const MessageSourceForumTopicHistory();
  
  /// Parse from a json
  factory MessageSourceForumTopicHistory.fromJson(Map<String, dynamic> json) => const MessageSourceForumTopicHistory();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceForumTopicHistory copyWith() => const MessageSourceForumTopicHistory();

  /// TDLib object type
  static const String objectType = 'messageSourceForumTopicHistory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceHistoryPreview** *(messageSourceHistoryPreview)* - child of MessageSource
///
/// The message is from chat, message thread or forum topic history preview.
final class MessageSourceHistoryPreview extends MessageSource {
  
  /// **MessageSourceHistoryPreview** *(messageSourceHistoryPreview)* - child of MessageSource
  ///
  /// The message is from chat, message thread or forum topic history preview.
  const MessageSourceHistoryPreview();
  
  /// Parse from a json
  factory MessageSourceHistoryPreview.fromJson(Map<String, dynamic> json) => const MessageSourceHistoryPreview();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceHistoryPreview copyWith() => const MessageSourceHistoryPreview();

  /// TDLib object type
  static const String objectType = 'messageSourceHistoryPreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceChatList** *(messageSourceChatList)* - child of MessageSource
///
/// The message is from a chat list or a forum topic list.
final class MessageSourceChatList extends MessageSource {
  
  /// **MessageSourceChatList** *(messageSourceChatList)* - child of MessageSource
  ///
  /// The message is from a chat list or a forum topic list.
  const MessageSourceChatList();
  
  /// Parse from a json
  factory MessageSourceChatList.fromJson(Map<String, dynamic> json) => const MessageSourceChatList();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceChatList copyWith() => const MessageSourceChatList();

  /// TDLib object type
  static const String objectType = 'messageSourceChatList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceSearch** *(messageSourceSearch)* - child of MessageSource
///
/// The message is from search results, including file downloads, local file list, outgoing document messages, calendar.
final class MessageSourceSearch extends MessageSource {
  
  /// **MessageSourceSearch** *(messageSourceSearch)* - child of MessageSource
  ///
  /// The message is from search results, including file downloads, local file list, outgoing document messages, calendar.
  const MessageSourceSearch();
  
  /// Parse from a json
  factory MessageSourceSearch.fromJson(Map<String, dynamic> json) => const MessageSourceSearch();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceSearch copyWith() => const MessageSourceSearch();

  /// TDLib object type
  static const String objectType = 'messageSourceSearch';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceChatEventLog** *(messageSourceChatEventLog)* - child of MessageSource
///
/// The message is from a chat event log.
final class MessageSourceChatEventLog extends MessageSource {
  
  /// **MessageSourceChatEventLog** *(messageSourceChatEventLog)* - child of MessageSource
  ///
  /// The message is from a chat event log.
  const MessageSourceChatEventLog();
  
  /// Parse from a json
  factory MessageSourceChatEventLog.fromJson(Map<String, dynamic> json) => const MessageSourceChatEventLog();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceChatEventLog copyWith() => const MessageSourceChatEventLog();

  /// TDLib object type
  static const String objectType = 'messageSourceChatEventLog';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceNotification** *(messageSourceNotification)* - child of MessageSource
///
/// The message is from a notification.
final class MessageSourceNotification extends MessageSource {
  
  /// **MessageSourceNotification** *(messageSourceNotification)* - child of MessageSource
  ///
  /// The message is from a notification.
  const MessageSourceNotification();
  
  /// Parse from a json
  factory MessageSourceNotification.fromJson(Map<String, dynamic> json) => const MessageSourceNotification();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceNotification copyWith() => const MessageSourceNotification();

  /// TDLib object type
  static const String objectType = 'messageSourceNotification';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceScreenshot** *(messageSourceScreenshot)* - child of MessageSource
///
/// The message was screenshotted; the source must be used only if the message content was visible during the screenshot.
final class MessageSourceScreenshot extends MessageSource {
  
  /// **MessageSourceScreenshot** *(messageSourceScreenshot)* - child of MessageSource
  ///
  /// The message was screenshotted; the source must be used only if the message content was visible during the screenshot.
  const MessageSourceScreenshot();
  
  /// Parse from a json
  factory MessageSourceScreenshot.fromJson(Map<String, dynamic> json) => const MessageSourceScreenshot();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceScreenshot copyWith() => const MessageSourceScreenshot();

  /// TDLib object type
  static const String objectType = 'messageSourceScreenshot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageSourceOther** *(messageSourceOther)* - child of MessageSource
///
/// The message is from some other source.
final class MessageSourceOther extends MessageSource {
  
  /// **MessageSourceOther** *(messageSourceOther)* - child of MessageSource
  ///
  /// The message is from some other source.
  const MessageSourceOther();
  
  /// Parse from a json
  factory MessageSourceOther.fromJson(Map<String, dynamic> json) => const MessageSourceOther();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSourceOther copyWith() => const MessageSourceOther();

  /// TDLib object type
  static const String objectType = 'messageSourceOther';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
