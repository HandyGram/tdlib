part of '../tdapi.dart';

/// **MessageReadDate** *(messageReadDate)* - parent
///
/// Describes read date of a recent outgoing message in a private chat.
sealed class MessageReadDate extends TdObject {
  
  /// **MessageReadDate** *(messageReadDate)* - parent
  ///
  /// Describes read date of a recent outgoing message in a private chat.
  const MessageReadDate();
  
  /// a MessageReadDate return type can be :
  /// * [MessageReadDateRead]
  /// * [MessageReadDateUnread]
  /// * [MessageReadDateTooOld]
  /// * [MessageReadDateUserPrivacyRestricted]
  /// * [MessageReadDateMyPrivacyRestricted]
  factory MessageReadDate.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageReadDateRead.objectType:
        return MessageReadDateRead.fromJson(json);
      case MessageReadDateUnread.objectType:
        return MessageReadDateUnread.fromJson(json);
      case MessageReadDateTooOld.objectType:
        return MessageReadDateTooOld.fromJson(json);
      case MessageReadDateUserPrivacyRestricted.objectType:
        return MessageReadDateUserPrivacyRestricted.fromJson(json);
      case MessageReadDateMyPrivacyRestricted.objectType:
        return MessageReadDateMyPrivacyRestricted.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageReadDate)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageReadDate copyWith();

  /// TDLib object type
  static const String objectType = 'messageReadDate';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReadDateRead** *(messageReadDateRead)* - child of MessageReadDate
///
/// Contains read date of the message.
///
/// * [readDate]: Point in time (Unix timestamp) when the message was read by the other user.
final class MessageReadDateRead extends MessageReadDate {
  
  /// **MessageReadDateRead** *(messageReadDateRead)* - child of MessageReadDate
  ///
  /// Contains read date of the message.
  ///
  /// * [readDate]: Point in time (Unix timestamp) when the message was read by the other user.
  const MessageReadDateRead({
    required this.readDate,
    this.extra,
    this.clientId,
  });
  
  /// Point in time (Unix timestamp) when the message was read by the other user
  final int readDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateRead.fromJson(Map<String, dynamic> json) => MessageReadDateRead(
    readDate: json['read_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "read_date": readDate,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [read_date]: Point in time (Unix timestamp) when the message was read by the other user
  @override
  MessageReadDateRead copyWith({
    int? readDate,
    dynamic extra,
    int? clientId,
  }) => MessageReadDateRead(
    readDate: readDate ?? this.readDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageReadDateRead';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReadDateUnread** *(messageReadDateUnread)* - child of MessageReadDate
///
/// The message is unread yet.
final class MessageReadDateUnread extends MessageReadDate {
  
  /// **MessageReadDateUnread** *(messageReadDateUnread)* - child of MessageReadDate
  ///
  /// The message is unread yet.
  const MessageReadDateUnread({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateUnread.fromJson(Map<String, dynamic> json) => MessageReadDateUnread(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageReadDateUnread copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateUnread(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageReadDateUnread';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReadDateTooOld** *(messageReadDateTooOld)* - child of MessageReadDate
///
/// The message is too old to get read date.
final class MessageReadDateTooOld extends MessageReadDate {
  
  /// **MessageReadDateTooOld** *(messageReadDateTooOld)* - child of MessageReadDate
  ///
  /// The message is too old to get read date.
  const MessageReadDateTooOld({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateTooOld.fromJson(Map<String, dynamic> json) => MessageReadDateTooOld(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageReadDateTooOld copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateTooOld(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageReadDateTooOld';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReadDateUserPrivacyRestricted** *(messageReadDateUserPrivacyRestricted)* - child of MessageReadDate
///
/// The read date is unknown due to privacy settings of the other user.
final class MessageReadDateUserPrivacyRestricted extends MessageReadDate {
  
  /// **MessageReadDateUserPrivacyRestricted** *(messageReadDateUserPrivacyRestricted)* - child of MessageReadDate
  ///
  /// The read date is unknown due to privacy settings of the other user.
  const MessageReadDateUserPrivacyRestricted({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateUserPrivacyRestricted.fromJson(Map<String, dynamic> json) => MessageReadDateUserPrivacyRestricted(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageReadDateUserPrivacyRestricted copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateUserPrivacyRestricted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageReadDateUserPrivacyRestricted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageReadDateMyPrivacyRestricted** *(messageReadDateMyPrivacyRestricted)* - child of MessageReadDate
///
/// The read date is unknown due to privacy settings of the current user, but will be known if the user subscribes to Telegram Premium.
final class MessageReadDateMyPrivacyRestricted extends MessageReadDate {
  
  /// **MessageReadDateMyPrivacyRestricted** *(messageReadDateMyPrivacyRestricted)* - child of MessageReadDate
  ///
  /// The read date is unknown due to privacy settings of the current user, but will be known if the user subscribes to Telegram Premium.
  const MessageReadDateMyPrivacyRestricted({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateMyPrivacyRestricted.fromJson(Map<String, dynamic> json) => MessageReadDateMyPrivacyRestricted(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageReadDateMyPrivacyRestricted copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateMyPrivacyRestricted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageReadDateMyPrivacyRestricted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
