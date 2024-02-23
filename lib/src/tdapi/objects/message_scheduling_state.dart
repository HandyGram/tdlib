part of '../tdapi.dart';

/// **MessageSchedulingState** *(messageSchedulingState)* - parent
///
/// Contains information about the time when a scheduled message will be sent.
sealed class MessageSchedulingState extends TdObject {
  
  /// **MessageSchedulingState** *(messageSchedulingState)* - parent
  ///
  /// Contains information about the time when a scheduled message will be sent.
  const MessageSchedulingState();
  
  /// a MessageSchedulingState return type can be :
  /// * [MessageSchedulingStateSendAtDate]
  /// * [MessageSchedulingStateSendWhenOnline]
  factory MessageSchedulingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSchedulingStateSendAtDate.defaultObjectId:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.defaultObjectId:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSchedulingState)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageSchedulingState copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'messageSchedulingState';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSchedulingStateSendAtDate** *(messageSchedulingStateSendAtDate)* - child of MessageSchedulingState
///
/// The message will be sent at the specified date.
///
/// * [sendDate]: Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future.
final class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  
  /// **MessageSchedulingStateSendAtDate** *(messageSchedulingStateSendAtDate)* - child of MessageSchedulingState
  ///
  /// The message will be sent at the specified date.
  ///
  /// * [sendDate]: Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future.
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });
  
  /// Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future
  final int sendDate;
  
  /// Parse from a json
  factory MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json) => MessageSchedulingStateSendAtDate(
    sendDate: json['send_date'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "send_date": sendDate,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [send_date]: Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future
  @override
  MessageSchedulingStateSendAtDate copyWith({
    int? sendDate,
  }) => MessageSchedulingStateSendAtDate(
    sendDate: sendDate ?? this.sendDate,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSchedulingStateSendAtDate';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **MessageSchedulingStateSendWhenOnline** *(messageSchedulingStateSendWhenOnline)* - child of MessageSchedulingState
///
/// The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known.
final class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  
  /// **MessageSchedulingStateSendWhenOnline** *(messageSchedulingStateSendWhenOnline)* - child of MessageSchedulingState
  ///
  /// The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known.
  const MessageSchedulingStateSendWhenOnline();
  
  /// Parse from a json
  factory MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json) => const MessageSchedulingStateSendWhenOnline();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  MessageSchedulingStateSendWhenOnline copyWith() => const MessageSchedulingStateSendWhenOnline();

  /// TDLib object type
  static const String defaultObjectId = 'messageSchedulingStateSendWhenOnline';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
