part of '../tdapi.dart';

/// **InputStoryAreaType** *(inputStoryAreaType)* - parent
///
/// Describes type of a clickable rectangle area on a story media to be added.
sealed class InputStoryAreaType extends TdObject {
  
  /// **InputStoryAreaType** *(inputStoryAreaType)* - parent
  ///
  /// Describes type of a clickable rectangle area on a story media to be added.
  const InputStoryAreaType();
  
  /// a InputStoryAreaType return type can be :
  /// * [InputStoryAreaTypeLocation]
  /// * [InputStoryAreaTypeFoundVenue]
  /// * [InputStoryAreaTypePreviousVenue]
  /// * [InputStoryAreaTypeSuggestedReaction]
  factory InputStoryAreaType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputStoryAreaTypeLocation.objectType:
        return InputStoryAreaTypeLocation.fromJson(json);
      case InputStoryAreaTypeFoundVenue.objectType:
        return InputStoryAreaTypeFoundVenue.fromJson(json);
      case InputStoryAreaTypePreviousVenue.objectType:
        return InputStoryAreaTypePreviousVenue.fromJson(json);
      case InputStoryAreaTypeSuggestedReaction.objectType:
        return InputStoryAreaTypeSuggestedReaction.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputStoryAreaType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputStoryAreaType copyWith();

  /// TDLib object type
  static const String objectType = 'inputStoryAreaType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputStoryAreaTypeLocation** *(inputStoryAreaTypeLocation)* - child of InputStoryAreaType
///
/// An area pointing to a location.
///
/// * [location]: The location.
final class InputStoryAreaTypeLocation extends InputStoryAreaType {
  
  /// **InputStoryAreaTypeLocation** *(inputStoryAreaTypeLocation)* - child of InputStoryAreaType
  ///
  /// An area pointing to a location.
  ///
  /// * [location]: The location.
  const InputStoryAreaTypeLocation({
    required this.location,
  });
  
  /// The location
  final Location location;
  
  /// Parse from a json
  factory InputStoryAreaTypeLocation.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeLocation(
    location: Location.fromJson(json['location']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: The location
  @override
  InputStoryAreaTypeLocation copyWith({
    Location? location,
  }) => InputStoryAreaTypeLocation(
    location: location ?? this.location,
  );

  /// TDLib object type
  static const String objectType = 'inputStoryAreaTypeLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputStoryAreaTypeFoundVenue** *(inputStoryAreaTypeFoundVenue)* - child of InputStoryAreaType
///
/// An area pointing to a venue found by the bot getOption("venue_search_bot_username").
///
/// * [queryId]: Identifier of the inline query, used to found the venue.
/// * [resultId]: Identifier of the inline query result.
final class InputStoryAreaTypeFoundVenue extends InputStoryAreaType {
  
  /// **InputStoryAreaTypeFoundVenue** *(inputStoryAreaTypeFoundVenue)* - child of InputStoryAreaType
  ///
  /// An area pointing to a venue found by the bot getOption("venue_search_bot_username").
  ///
  /// * [queryId]: Identifier of the inline query, used to found the venue.
  /// * [resultId]: Identifier of the inline query result.
  const InputStoryAreaTypeFoundVenue({
    required this.queryId,
    required this.resultId,
  });
  
  /// Identifier of the inline query, used to found the venue
  final int queryId;

  /// Identifier of the inline query result
  final String resultId;
  
  /// Parse from a json
  factory InputStoryAreaTypeFoundVenue.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeFoundVenue(
    queryId: int.parse(json['query_id']),
    resultId: json['result_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query_id": queryId,
      "result_id": resultId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [query_id]: Identifier of the inline query, used to found the venue
  /// * [result_id]: Identifier of the inline query result
  @override
  InputStoryAreaTypeFoundVenue copyWith({
    int? queryId,
    String? resultId,
  }) => InputStoryAreaTypeFoundVenue(
    queryId: queryId ?? this.queryId,
    resultId: resultId ?? this.resultId,
  );

  /// TDLib object type
  static const String objectType = 'inputStoryAreaTypeFoundVenue';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputStoryAreaTypePreviousVenue** *(inputStoryAreaTypePreviousVenue)* - child of InputStoryAreaType
///
/// An area pointing to a venue already added to the story.
///
/// * [venueProvider]: Provider of the venue.
/// * [venueId]: Identifier of the venue in the provider database.
final class InputStoryAreaTypePreviousVenue extends InputStoryAreaType {
  
  /// **InputStoryAreaTypePreviousVenue** *(inputStoryAreaTypePreviousVenue)* - child of InputStoryAreaType
  ///
  /// An area pointing to a venue already added to the story.
  ///
  /// * [venueProvider]: Provider of the venue.
  /// * [venueId]: Identifier of the venue in the provider database.
  const InputStoryAreaTypePreviousVenue({
    required this.venueProvider,
    required this.venueId,
  });
  
  /// Provider of the venue
  final String venueProvider;

  /// Identifier of the venue in the provider database
  final String venueId;
  
  /// Parse from a json
  factory InputStoryAreaTypePreviousVenue.fromJson(Map<String, dynamic> json) => InputStoryAreaTypePreviousVenue(
    venueProvider: json['venue_provider'],
    venueId: json['venue_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "venue_provider": venueProvider,
      "venue_id": venueId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [venue_provider]: Provider of the venue
  /// * [venue_id]: Identifier of the venue in the provider database
  @override
  InputStoryAreaTypePreviousVenue copyWith({
    String? venueProvider,
    String? venueId,
  }) => InputStoryAreaTypePreviousVenue(
    venueProvider: venueProvider ?? this.venueProvider,
    venueId: venueId ?? this.venueId,
  );

  /// TDLib object type
  static const String objectType = 'inputStoryAreaTypePreviousVenue';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputStoryAreaTypeSuggestedReaction** *(inputStoryAreaTypeSuggestedReaction)* - child of InputStoryAreaType
///
/// An area pointing to a suggested reaction.
///
/// * [reactionType]: Type of the reaction.
/// * [isDark]: True, if reaction has a dark background.
/// * [isFlipped]: True, if reaction corner is flipped.
final class InputStoryAreaTypeSuggestedReaction extends InputStoryAreaType {
  
  /// **InputStoryAreaTypeSuggestedReaction** *(inputStoryAreaTypeSuggestedReaction)* - child of InputStoryAreaType
  ///
  /// An area pointing to a suggested reaction.
  ///
  /// * [reactionType]: Type of the reaction.
  /// * [isDark]: True, if reaction has a dark background.
  /// * [isFlipped]: True, if reaction corner is flipped.
  const InputStoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.isDark,
    required this.isFlipped,
  });
  
  /// Type of the reaction
  final ReactionType reactionType;

  /// True, if reaction has a dark background
  final bool isDark;

  /// True, if reaction corner is flipped
  final bool isFlipped;
  
  /// Parse from a json
  factory InputStoryAreaTypeSuggestedReaction.fromJson(Map<String, dynamic> json) => InputStoryAreaTypeSuggestedReaction(
    reactionType: ReactionType.fromJson(json['reaction_type']),
    isDark: json['is_dark'],
    isFlipped: json['is_flipped'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reaction_type": reactionType.toJson(),
      "is_dark": isDark,
      "is_flipped": isFlipped,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reaction_type]: Type of the reaction
  /// * [is_dark]: True, if reaction has a dark background
  /// * [is_flipped]: True, if reaction corner is flipped
  @override
  InputStoryAreaTypeSuggestedReaction copyWith({
    ReactionType? reactionType,
    bool? isDark,
    bool? isFlipped,
  }) => InputStoryAreaTypeSuggestedReaction(
    reactionType: reactionType ?? this.reactionType,
    isDark: isDark ?? this.isDark,
    isFlipped: isFlipped ?? this.isFlipped,
  );

  /// TDLib object type
  static const String objectType = 'inputStoryAreaTypeSuggestedReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
