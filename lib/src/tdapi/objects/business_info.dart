part of '../tdapi.dart';

/// **BusinessInfo** *(businessInfo)* - basic class
///
/// Contains information about a Telegram Business account.
///
/// * [location]: Location of the business; may be null if none *(optional)*.
/// * [openingHours]: Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days *(optional)*.
/// * [greetingMessageSettings]: The greeting message; may be null if none or the Business account is not of the current user *(optional)*.
/// * [awayMessageSettings]: The away message; may be null if none or the Business account is not of the current user *(optional)*.
final class BusinessInfo extends TdObject {
  /// **BusinessInfo** *(businessInfo)* - basic class
  ///
  /// Contains information about a Telegram Business account.
  ///
  /// * [location]: Location of the business; may be null if none *(optional)*.
  /// * [openingHours]: Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days *(optional)*.
  /// * [greetingMessageSettings]: The greeting message; may be null if none or the Business account is not of the current user *(optional)*.
  /// * [awayMessageSettings]: The away message; may be null if none or the Business account is not of the current user *(optional)*.
  const BusinessInfo({
    this.location,
    this.openingHours,
    this.greetingMessageSettings,
    this.awayMessageSettings,
  });

  /// Location of the business; may be null if none
  final BusinessLocation? location;

  /// Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days
  final BusinessOpeningHours? openingHours;

  /// The greeting message; may be null if none or the Business account is not of the current user
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  /// The away message; may be null if none or the Business account is not of the current user
  final BusinessAwayMessageSettings? awayMessageSettings;

  /// Parse from a json
  factory BusinessInfo.fromJson(Map<String, dynamic> json) => BusinessInfo(
        location: json['location'] == null
            ? null
            : BusinessLocation.fromJson(json['location']),
        openingHours: json['opening_hours'] == null
            ? null
            : BusinessOpeningHours.fromJson(json['opening_hours']),
        greetingMessageSettings: json['greeting_message_settings'] == null
            ? null
            : BusinessGreetingMessageSettings.fromJson(
                json['greeting_message_settings']),
        awayMessageSettings: json['away_message_settings'] == null
            ? null
            : BusinessAwayMessageSettings.fromJson(
                json['away_message_settings']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "location": location?.toJson(),
      "opening_hours": openingHours?.toJson(),
      "greeting_message_settings": greetingMessageSettings?.toJson(),
      "away_message_settings": awayMessageSettings?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: Location of the business; may be null if none
  /// * [opening_hours]: Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days
  /// * [greeting_message_settings]: The greeting message; may be null if none or the Business account is not of the current user
  /// * [away_message_settings]: The away message; may be null if none or the Business account is not of the current user
  BusinessInfo copyWith({
    BusinessLocation? location,
    BusinessOpeningHours? openingHours,
    BusinessGreetingMessageSettings? greetingMessageSettings,
    BusinessAwayMessageSettings? awayMessageSettings,
  }) =>
      BusinessInfo(
        location: location ?? this.location,
        openingHours: openingHours ?? this.openingHours,
        greetingMessageSettings:
            greetingMessageSettings ?? this.greetingMessageSettings,
        awayMessageSettings: awayMessageSettings ?? this.awayMessageSettings,
      );

  /// TDLib object type
  static const String defaultObjectId = 'businessInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
