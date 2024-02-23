part of '../tdapi.dart';

/// **SearchRecentlyFoundChats** *(searchRecentlyFoundChats)* - TDLib function
///
/// Searches for the specified query in the title and username of up to 50 recently found chats; this is an offline request.
///
/// * [query]: Query to search for.
/// * [limit]: The maximum number of chats to be returned.
///
/// [Chats] is returned on completion.
final class SearchRecentlyFoundChats extends TdFunction {
  
  /// **SearchRecentlyFoundChats** *(searchRecentlyFoundChats)* - TDLib function
  ///
  /// Searches for the specified query in the title and username of up to 50 recently found chats; this is an offline request.
  ///
  /// * [query]: Query to search for.
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const SearchRecentlyFoundChats({
    required this.query,
    required this.limit,
  });
  
  /// Query to search for
  final String query;

  /// The maximum number of chats to be returned
  final int limit;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "query": query,
      "limit": limit,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [query]: Query to search for
  /// * [limit]: The maximum number of chats to be returned
  SearchRecentlyFoundChats copyWith({
    String? query,
    int? limit,
  }) => SearchRecentlyFoundChats(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'searchRecentlyFoundChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
