part of '../tdapi.dart';

class SearchChatMessages extends TdFunction {
  int chatId;
  String query;
  int senderUserId;
  int fromMessageId;
  int offset;
  int limit;
  SearchMessagesFilter filter;
  dynamic extra;

  /// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query. (searchSecretMessages should be used instead), or without an enabled message database. For optimal performance the number of returned messages is chosen by the library. 
  /// [chatId] Identifier of the chat in which to search messages. 
  /// [query] Query to search for. 
  /// [senderUserId] If not 0, only messages sent by the specified user will be returned. Not supported in secret chats. 
  /// [fromMessageId] Identifier of the message starting from which history must be fetched; use 0 to get results from the last message. 
  /// [offset] Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages. 
  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. 
  /// [filter] Filter for message content in the search results
  SearchChatMessages({this.chatId,
    this.query,
    this.senderUserId,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.filter});

  /// Parse from a json
  SearchChatMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "sender_user_id": this.senderUserId,
      "from_message_id": this.fromMessageId,
      "offset": this.offset,
      "limit": this.limit,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}