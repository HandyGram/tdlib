part of '../tdapi.dart';

/// **EditBusinessMessageLiveLocation** *(editBusinessMessageLiveLocation)* - TDLib function
///
/// Edits the content of a live location in a message sent on behalf of a business account; for bots only.
///
/// * [businessConnectionId]: Unique identifier of business connection on behalf of which the message was sent.
/// * [chatId]: The chat the message belongs to.
/// * [messageId]: Identifier of the message.
/// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
/// * [location]: New location content of the message; pass null to stop sharing the live location *(optional)*.
/// * [livePeriod]: New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever.. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period.
/// * [heading]: The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
/// * [proximityAlertRadius]: The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled.
///
/// [BusinessMessage] is returned on completion.
final class EditBusinessMessageLiveLocation extends TdFunction {
  /// **EditBusinessMessageLiveLocation** *(editBusinessMessageLiveLocation)* - TDLib function
  ///
  /// Edits the content of a live location in a message sent on behalf of a business account; for bots only.
  ///
  /// * [businessConnectionId]: Unique identifier of business connection on behalf of which the message was sent.
  /// * [chatId]: The chat the message belongs to.
  /// * [messageId]: Identifier of the message.
  /// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
  /// * [location]: New location content of the message; pass null to stop sharing the live location *(optional)*.
  /// * [livePeriod]: New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever.. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period.
  /// * [heading]: The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
  /// * [proximityAlertRadius]: The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled.
  ///
  /// [BusinessMessage] is returned on completion.
  const EditBusinessMessageLiveLocation({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// Unique identifier of business connection on behalf of which the message was sent
  final String businessConnectionId;

  /// The chat the message belongs to
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// New location content of the message; pass null to stop sharing the live location
  final Location? location;

  /// New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever.. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period
  final int livePeriod;

  /// The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "location": location?.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [business_connection_id]: Unique identifier of business connection on behalf of which the message was sent
  /// * [chat_id]: The chat the message belongs to
  /// * [message_id]: Identifier of the message
  /// * [reply_markup]: The new message reply markup; pass null if none
  /// * [location]: New location content of the message; pass null to stop sharing the live location
  /// * [live_period]: New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever.. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period
  /// * [heading]: The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  /// * [proximity_alert_radius]: The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  EditBusinessMessageLiveLocation copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) =>
      EditBusinessMessageLiveLocation(
        businessConnectionId: businessConnectionId ?? this.businessConnectionId,
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        replyMarkup: replyMarkup ?? this.replyMarkup,
        location: location ?? this.location,
        livePeriod: livePeriod ?? this.livePeriod,
        heading: heading ?? this.heading,
        proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
      );

  /// TDLib object type
  static const String defaultObjectId = 'editBusinessMessageLiveLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
