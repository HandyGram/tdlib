part of '../tdapi.dart';

/// **GetStoryViewers** *(getStoryViewers)* - TDLib function
///
/// Returns viewers of a story. The method can be called only for stories posted on behalf of the current user.
///
/// * [storyId]: Story identifier.
/// * [query]: Query to search for in names and usernames of the viewers; may be empty to get all relevant viewers.
/// * [onlyContacts]: Pass true to get only contacts; pass false to get all relevant viewers.
/// * [preferWithReaction]: Pass true to get viewers with reaction first; pass false to get viewers sorted just by view_date.
/// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of story viewers to return.
///
/// [StoryViewers] is returned on completion.
final class GetStoryViewers extends TdFunction {
  
  /// **GetStoryViewers** *(getStoryViewers)* - TDLib function
  ///
  /// Returns viewers of a story. The method can be called only for stories posted on behalf of the current user.
  ///
  /// * [storyId]: Story identifier.
  /// * [query]: Query to search for in names and usernames of the viewers; may be empty to get all relevant viewers.
  /// * [onlyContacts]: Pass true to get only contacts; pass false to get all relevant viewers.
  /// * [preferWithReaction]: Pass true to get viewers with reaction first; pass false to get viewers sorted just by view_date.
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of story viewers to return.
  ///
  /// [StoryViewers] is returned on completion.
  const GetStoryViewers({
    required this.storyId,
    required this.query,
    required this.onlyContacts,
    required this.preferWithReaction,
    required this.offset,
    required this.limit,
  });
  
  /// Story identifier
  final int storyId;

  /// Query to search for in names and usernames of the viewers; may be empty to get all relevant viewers
  final String query;

  /// Pass true to get only contacts; pass false to get all relevant viewers
  final bool onlyContacts;

  /// Pass true to get viewers with reaction first; pass false to get viewers sorted just by view_date
  final bool preferWithReaction;

  /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of story viewers to return
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "story_id": storyId,
      "query": query,
      "only_contacts": onlyContacts,
      "prefer_with_reaction": preferWithReaction,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [story_id]: Story identifier
  /// * [query]: Query to search for in names and usernames of the viewers; may be empty to get all relevant viewers
  /// * [only_contacts]: Pass true to get only contacts; pass false to get all relevant viewers
  /// * [prefer_with_reaction]: Pass true to get viewers with reaction first; pass false to get viewers sorted just by view_date
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  /// * [limit]: The maximum number of story viewers to return
  GetStoryViewers copyWith({
    int? storyId,
    String? query,
    bool? onlyContacts,
    bool? preferWithReaction,
    String? offset,
    int? limit,
  }) => GetStoryViewers(
    storyId: storyId ?? this.storyId,
    query: query ?? this.query,
    onlyContacts: onlyContacts ?? this.onlyContacts,
    preferWithReaction: preferWithReaction ?? this.preferWithReaction,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String objectType = 'getStoryViewers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
