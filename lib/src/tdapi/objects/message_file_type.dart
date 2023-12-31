part of '../tdapi.dart';

/// **MessageFileType** *(messageFileType)* - parent
///
/// Contains information about a file with messages exported from another app.
sealed class MessageFileType extends TdObject {
  
  /// **MessageFileType** *(messageFileType)* - parent
  ///
  /// Contains information about a file with messages exported from another app.
  const MessageFileType();
  
  /// a MessageFileType return type can be :
  /// * [MessageFileTypePrivate]
  /// * [MessageFileTypeGroup]
  /// * [MessageFileTypeUnknown]
  factory MessageFileType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageFileTypePrivate.objectType:
        return MessageFileTypePrivate.fromJson(json);
      case MessageFileTypeGroup.objectType:
        return MessageFileTypeGroup.fromJson(json);
      case MessageFileTypeUnknown.objectType:
        return MessageFileTypeUnknown.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageFileType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageFileType copyWith();

  /// TDLib object type
  static const String objectType = 'messageFileType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageFileTypePrivate** *(messageFileTypePrivate)* - child of MessageFileType
///
/// The messages was exported from a private chat.
///
/// * [name]: Name of the other party; may be empty if unrecognized.
final class MessageFileTypePrivate extends MessageFileType {
  
  /// **MessageFileTypePrivate** *(messageFileTypePrivate)* - child of MessageFileType
  ///
  /// The messages was exported from a private chat.
  ///
  /// * [name]: Name of the other party; may be empty if unrecognized.
  const MessageFileTypePrivate({
    required this.name,
    this.extra,
    this.clientId,
  });
  
  /// Name of the other party; may be empty if unrecognized
  final String name;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypePrivate.fromJson(Map<String, dynamic> json) => MessageFileTypePrivate(
    name: json['name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Name of the other party; may be empty if unrecognized
  @override
  MessageFileTypePrivate copyWith({
    String? name,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypePrivate(
    name: name ?? this.name,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageFileTypePrivate';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageFileTypeGroup** *(messageFileTypeGroup)* - child of MessageFileType
///
/// The messages was exported from a group chat.
///
/// * [title]: Title of the group chat; may be empty if unrecognized.
final class MessageFileTypeGroup extends MessageFileType {
  
  /// **MessageFileTypeGroup** *(messageFileTypeGroup)* - child of MessageFileType
  ///
  /// The messages was exported from a group chat.
  ///
  /// * [title]: Title of the group chat; may be empty if unrecognized.
  const MessageFileTypeGroup({
    required this.title,
    this.extra,
    this.clientId,
  });
  
  /// Title of the group chat; may be empty if unrecognized
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypeGroup.fromJson(Map<String, dynamic> json) => MessageFileTypeGroup(
    title: json['title'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Title of the group chat; may be empty if unrecognized
  @override
  MessageFileTypeGroup copyWith({
    String? title,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeGroup(
    title: title ?? this.title,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageFileTypeGroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **MessageFileTypeUnknown** *(messageFileTypeUnknown)* - child of MessageFileType
///
/// The messages was exported from a chat of unknown type.
final class MessageFileTypeUnknown extends MessageFileType {
  
  /// **MessageFileTypeUnknown** *(messageFileTypeUnknown)* - child of MessageFileType
  ///
  /// The messages was exported from a chat of unknown type.
  const MessageFileTypeUnknown({
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
  factory MessageFileTypeUnknown.fromJson(Map<String, dynamic> json) => MessageFileTypeUnknown(
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
  MessageFileTypeUnknown copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeUnknown(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'messageFileTypeUnknown';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
