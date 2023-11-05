part of '../tdapi.dart';

/// **UnconfirmedSession** *(unconfirmedSession)* - basic class
///
/// Contains information about an unconfirmed session.
///
/// * [id]: Session identifier.
/// * [logInDate]: Point in time (Unix timestamp) when the user has logged in.
/// * [deviceModel]: Model of the device that was used for the session creation, as provided by the application.
/// * [location]: A human-readable description of the location from which the session was created, based on the IP address.
final class UnconfirmedSession extends TdObject {
  
  /// **UnconfirmedSession** *(unconfirmedSession)* - basic class
  ///
  /// Contains information about an unconfirmed session.
  ///
  /// * [id]: Session identifier.
  /// * [logInDate]: Point in time (Unix timestamp) when the user has logged in.
  /// * [deviceModel]: Model of the device that was used for the session creation, as provided by the application.
  /// * [location]: A human-readable description of the location from which the session was created, based on the IP address.
  const UnconfirmedSession({
    required this.id,
    required this.logInDate,
    required this.deviceModel,
    required this.location,
  });
  
  /// Session identifier
  final int id;

  /// Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// Model of the device that was used for the session creation, as provided by the application
  final String deviceModel;

  /// A human-readable description of the location from which the session was created, based on the IP address
  final String location;
  
  /// Parse from a json
  factory UnconfirmedSession.fromJson(Map<String, dynamic> json) => UnconfirmedSession(
    id: int.parse(json['id']),
    logInDate: json['log_in_date'],
    deviceModel: json['device_model'],
    location: json['location'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "log_in_date": logInDate,
      "device_model": deviceModel,
      "location": location,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Session identifier
  /// * [log_in_date]: Point in time (Unix timestamp) when the user has logged in
  /// * [device_model]: Model of the device that was used for the session creation, as provided by the application
  /// * [location]: A human-readable description of the location from which the session was created, based on the IP address
  UnconfirmedSession copyWith({
    int? id,
    int? logInDate,
    String? deviceModel,
    String? location,
  }) => UnconfirmedSession(
    id: id ?? this.id,
    logInDate: logInDate ?? this.logInDate,
    deviceModel: deviceModel ?? this.deviceModel,
    location: location ?? this.location,
  );

  /// TDLib object type
  static const String objectType = 'unconfirmedSession';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
