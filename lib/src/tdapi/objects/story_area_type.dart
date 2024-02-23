part of '../tdapi.dart';

/// **StoryAreaType** *(storyAreaType)* - parent
///
/// Describes type of a clickable rectangle area on a story media.
sealed class StoryAreaType extends TdObject {
  
  /// **StoryAreaType** *(storyAreaType)* - parent
  ///
  /// Describes type of a clickable rectangle area on a story media.
  const StoryAreaType();
  
  /// a StoryAreaType return type can be :
  /// * [StoryAreaTypeLocation]
  /// * [StoryAreaTypeVenue]
  /// * [StoryAreaTypeSuggestedReaction]
  /// * [StoryAreaTypeMessage]
  factory StoryAreaType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StoryAreaTypeLocation.defaultObjectId:
        return StoryAreaTypeLocation.fromJson(json);
      case StoryAreaTypeVenue.defaultObjectId:
        return StoryAreaTypeVenue.fromJson(json);
      case StoryAreaTypeSuggestedReaction.defaultObjectId:
        return StoryAreaTypeSuggestedReaction.fromJson(json);
      case StoryAreaTypeMessage.defaultObjectId:
        return StoryAreaTypeMessage.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StoryAreaType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  StoryAreaType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **StoryAreaTypeLocation** *(storyAreaTypeLocation)* - child of StoryAreaType
///
/// An area pointing to a location.
///
/// * [location]: The location.
final class StoryAreaTypeLocation extends StoryAreaType {
  
  /// **StoryAreaTypeLocation** *(storyAreaTypeLocation)* - child of StoryAreaType
  ///
  /// An area pointing to a location.
  ///
  /// * [location]: The location.
  const StoryAreaTypeLocation({
    required this.location,
  });
  
  /// The location
  final Location location;
  
  /// Parse from a json
  factory StoryAreaTypeLocation.fromJson(Map<String, dynamic> json) => StoryAreaTypeLocation(
    location: Location.fromJson(json['location']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "location": location.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: The location
  @override
  StoryAreaTypeLocation copyWith({
    Location? location,
  }) => StoryAreaTypeLocation(
    location: location ?? this.location,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaTypeLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **StoryAreaTypeVenue** *(storyAreaTypeVenue)* - child of StoryAreaType
///
/// An area pointing to a venue.
///
/// * [venue]: Information about the venue.
final class StoryAreaTypeVenue extends StoryAreaType {
  
  /// **StoryAreaTypeVenue** *(storyAreaTypeVenue)* - child of StoryAreaType
  ///
  /// An area pointing to a venue.
  ///
  /// * [venue]: Information about the venue.
  const StoryAreaTypeVenue({
    required this.venue,
  });
  
  /// Information about the venue
  final Venue venue;
  
  /// Parse from a json
  factory StoryAreaTypeVenue.fromJson(Map<String, dynamic> json) => StoryAreaTypeVenue(
    venue: Venue.fromJson(json['venue']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "venue": venue.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [venue]: Information about the venue
  @override
  StoryAreaTypeVenue copyWith({
    Venue? venue,
  }) => StoryAreaTypeVenue(
    venue: venue ?? this.venue,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaTypeVenue';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **StoryAreaTypeSuggestedReaction** *(storyAreaTypeSuggestedReaction)* - child of StoryAreaType
///
/// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked.
///
/// * [reactionType]: Type of the reaction.
/// * [totalCount]: Number of times the reaction was added.
/// * [isDark]: True, if reaction has a dark background.
/// * [isFlipped]: True, if reaction corner is flipped.
final class StoryAreaTypeSuggestedReaction extends StoryAreaType {
  
  /// **StoryAreaTypeSuggestedReaction** *(storyAreaTypeSuggestedReaction)* - child of StoryAreaType
  ///
  /// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked.
  ///
  /// * [reactionType]: Type of the reaction.
  /// * [totalCount]: Number of times the reaction was added.
  /// * [isDark]: True, if reaction has a dark background.
  /// * [isFlipped]: True, if reaction corner is flipped.
  const StoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.totalCount,
    required this.isDark,
    required this.isFlipped,
  });
  
  /// Type of the reaction
  final ReactionType reactionType;

  /// Number of times the reaction was added
  final int totalCount;

  /// True, if reaction has a dark background
  final bool isDark;

  /// True, if reaction corner is flipped
  final bool isFlipped;
  
  /// Parse from a json
  factory StoryAreaTypeSuggestedReaction.fromJson(Map<String, dynamic> json) => StoryAreaTypeSuggestedReaction(
    reactionType: ReactionType.fromJson(json['reaction_type']),
    totalCount: json['total_count'],
    isDark: json['is_dark'],
    isFlipped: json['is_flipped'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "reaction_type": reactionType.toJson(),
      "total_count": totalCount,
      "is_dark": isDark,
      "is_flipped": isFlipped,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [reaction_type]: Type of the reaction
  /// * [total_count]: Number of times the reaction was added
  /// * [is_dark]: True, if reaction has a dark background
  /// * [is_flipped]: True, if reaction corner is flipped
  @override
  StoryAreaTypeSuggestedReaction copyWith({
    ReactionType? reactionType,
    int? totalCount,
    bool? isDark,
    bool? isFlipped,
  }) => StoryAreaTypeSuggestedReaction(
    reactionType: reactionType ?? this.reactionType,
    totalCount: totalCount ?? this.totalCount,
    isDark: isDark ?? this.isDark,
    isFlipped: isFlipped ?? this.isFlipped,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaTypeSuggestedReaction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **StoryAreaTypeMessage** *(storyAreaTypeMessage)* - child of StoryAreaType
///
/// An area pointing to a message.
///
/// * [chatId]: Identifier of the chat with the message.
/// * [messageId]: Identifier of the message.
final class StoryAreaTypeMessage extends StoryAreaType {
  
  /// **StoryAreaTypeMessage** *(storyAreaTypeMessage)* - child of StoryAreaType
  ///
  /// An area pointing to a message.
  ///
  /// * [chatId]: Identifier of the chat with the message.
  /// * [messageId]: Identifier of the message.
  const StoryAreaTypeMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Identifier of the chat with the message 
  final int chatId;

  /// Identifier of the message
  final int messageId;
  
  /// Parse from a json
  factory StoryAreaTypeMessage.fromJson(Map<String, dynamic> json) => StoryAreaTypeMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat with the message 
  /// * [message_id]: Identifier of the message
  @override
  StoryAreaTypeMessage copyWith({
    int? chatId,
    int? messageId,
  }) => StoryAreaTypeMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaTypeMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
