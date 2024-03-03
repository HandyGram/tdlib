part of '../tdapi.dart';

/// **SearchChats** *(searchChats)* - TDLib function
///
/// Searches for the specified query in the title and username of already known chats; this is an offline request. Returns chats in the order seen in the main chat list.
///
/// * [query]: Query to search for. If the query is empty, returns up to 50 recently found chats.
/// * [limit]: The maximum number of chats to be returned.
///
/// [Chats] is returned on completion.
final class SearchChats extends TdFunction {
  /// **SearchChats** *(searchChats)* - TDLib function
  ///
  /// Searches for the specified query in the title and username of already known chats; this is an offline request. Returns chats in the order seen in the main chat list.
  ///
  /// * [query]: Query to search for. If the query is empty, returns up to 50 recently found chats.
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const SearchChats({
    required this.query,
    required this.limit,
  });

  /// Query to search for. If the query is empty, returns up to 50 recently found chats
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
  /// * [query]: Query to search for. If the query is empty, returns up to 50 recently found chats
  /// * [limit]: The maximum number of chats to be returned
  SearchChats copyWith({
    String? query,
    int? limit,
  }) =>
      SearchChats(
        query: query ?? this.query,
        limit: limit ?? this.limit,
      );

  /// TDLib object type
  static const String defaultObjectId = 'searchChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
