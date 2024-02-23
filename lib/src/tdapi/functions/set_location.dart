part of '../tdapi.dart';

/// **SetLocation** *(setLocation)* - TDLib function
///
/// Changes the location of the current user. Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
///
/// * [location]: The new location of the user.
///
/// [Ok] is returned on completion.
final class SetLocation extends TdFunction {
  
  /// **SetLocation** *(setLocation)* - TDLib function
  ///
  /// Changes the location of the current user. Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
  ///
  /// * [location]: The new location of the user.
  ///
  /// [Ok] is returned on completion.
  const SetLocation({
    required this.location,
  });
  
  /// The new location of the user
  final Location location;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "location": location.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: The new location of the user
  SetLocation copyWith({
    Location? location,
  }) => SetLocation(
    location: location ?? this.location,
  );

  /// TDLib object type
  static const String defaultObjectId = 'setLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
