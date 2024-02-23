part of '../tdapi.dart';

/// **SearchChatsNearby** *(searchChatsNearby)* - TDLib function
///
/// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby.. The request must be sent again every 25 seconds with adjusted location to not miss new chats.
///
/// * [location]: Current user location.
///
/// [ChatsNearby] is returned on completion.
final class SearchChatsNearby extends TdFunction {
  
  /// **SearchChatsNearby** *(searchChatsNearby)* - TDLib function
  ///
  /// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby.. The request must be sent again every 25 seconds with adjusted location to not miss new chats.
  ///
  /// * [location]: Current user location.
  ///
  /// [ChatsNearby] is returned on completion.
  const SearchChatsNearby({
    required this.location,
  });
  
  /// Current user location
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
  /// * [location]: Current user location
  SearchChatsNearby copyWith({
    Location? location,
  }) => SearchChatsNearby(
    location: location ?? this.location,
  );

  /// TDLib object type
  static const String defaultObjectId = 'searchChatsNearby';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
