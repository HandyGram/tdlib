part of '../tdapi.dart';

/// **SearchPublicChats** *(searchPublicChats)* - TDLib function
///
/// Searches public chats by looking for specified query in their username and title. Currently, only private chats, supergroups and channels can be public. Returns a meaningful number of results.. Excludes private chats with contacts and chats from the chat list from the results.
///
/// * [query]: Query to search for.
///
/// [Chats] is returned on completion.
final class SearchPublicChats extends TdFunction {
  /// **SearchPublicChats** *(searchPublicChats)* - TDLib function
  ///
  /// Searches public chats by looking for specified query in their username and title. Currently, only private chats, supergroups and channels can be public. Returns a meaningful number of results.. Excludes private chats with contacts and chats from the chat list from the results.
  ///
  /// * [query]: Query to search for.
  ///
  /// [Chats] is returned on completion.
  const SearchPublicChats({
    required this.query,
  });

  /// Query to search for
  final String query;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "query": query,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [query]: Query to search for
  SearchPublicChats copyWith({
    String? query,
  }) =>
      SearchPublicChats(
        query: query ?? this.query,
      );

  /// TDLib object type
  static const String defaultObjectId = 'searchPublicChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
