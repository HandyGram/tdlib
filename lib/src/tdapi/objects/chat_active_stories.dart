part of '../tdapi.dart';

/// **ChatActiveStories** *(chatActiveStories)* - basic class
///
/// Describes active stories posted by a chat.
///
/// * [chatId]: Identifier of the chat that posted the stories.
/// * [list]: Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list *(optional)*.
/// * [order]: A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order.
/// * [maxReadStoryId]: Identifier of the last read active story.
/// * [stories]: Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers).
final class ChatActiveStories extends TdObject {
  /// **ChatActiveStories** *(chatActiveStories)* - basic class
  ///
  /// Describes active stories posted by a chat.
  ///
  /// * [chatId]: Identifier of the chat that posted the stories.
  /// * [list]: Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list *(optional)*.
  /// * [order]: A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order.
  /// * [maxReadStoryId]: Identifier of the last read active story.
  /// * [stories]: Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers).
  const ChatActiveStories({
    required this.chatId,
    this.list,
    required this.order,
    required this.maxReadStoryId,
    required this.stories,
    this.extra,
    this.clientId,
  });

  /// Identifier of the chat that posted the stories
  final int chatId;

  /// Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list
  final StoryList? list;

  /// A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order
  final int order;

  /// Identifier of the last read active story
  final int maxReadStoryId;

  /// Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers)
  final List<StoryInfo> stories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatActiveStories.fromJson(Map<String, dynamic> json) =>
      ChatActiveStories(
        chatId: json['chat_id'],
        list: json['list'] == null ? null : StoryList.fromJson(json['list']),
        order: json['order'],
        maxReadStoryId: json['max_read_story_id'],
        stories: List<StoryInfo>.from((json['stories'] ?? [])
            .map((item) => StoryInfo.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "list": list?.toJson(),
      "order": order,
      "max_read_story_id": maxReadStoryId,
      "stories": stories.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat that posted the stories
  /// * [list]: Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list
  /// * [order]: A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order
  /// * [max_read_story_id]: Identifier of the last read active story
  /// * [stories]: Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers)
  ChatActiveStories copyWith({
    int? chatId,
    StoryList? list,
    int? order,
    int? maxReadStoryId,
    List<StoryInfo>? stories,
    dynamic extra,
    int? clientId,
  }) =>
      ChatActiveStories(
        chatId: chatId ?? this.chatId,
        list: list ?? this.list,
        order: order ?? this.order,
        maxReadStoryId: maxReadStoryId ?? this.maxReadStoryId,
        stories: stories ?? this.stories,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'chatActiveStories';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
