part of '../tdapi.dart';

class ChatStatistics extends TdObject {
  

  /// Contains a detailed statistics about a chat
  ChatStatistics();

  /// a ChatStatistics return type can be :
  /// * ChatStatisticsSupergroup
  /// * ChatStatisticsChannel
  factory ChatStatistics.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatStatisticsSupergroup.CONSTRUCTOR:
        return ChatStatisticsSupergroup.fromJson(json);
      case ChatStatisticsChannel.CONSTRUCTOR:
        return ChatStatisticsChannel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'chatStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsSupergroup extends ChatStatistics {
  DateRange period;
  StatisticsValue memberCount;
  StatisticsValue messageCount;
  StatisticsValue viewerCount;
  StatisticsValue senderCount;
  StatisticsGraph memberCountGraph;
  StatisticsGraph joinGraph;
  StatisticsGraph joinBySourceGraph;
  StatisticsGraph languageGraph;
  StatisticsGraph messageContentGraph;
  StatisticsGraph actionGraph;
  StatisticsGraph dayGraph;
  StatisticsGraph weekGraph;
  List<ChatStatisticsMessageSenderInfo> topSenders;
  List<ChatStatisticsAdministratorActionsInfo> topAdministrators;
  List<ChatStatisticsInviterInfo> topInviters;
  dynamic extra;

  /// A detailed statistics about a supergroup chat. 
  /// [period] A period to which the statistics applies. 
  /// [memberCount] Number of members in the chat. 
  /// [messageCount] Number of messages sent to the chat. 
  /// [viewerCount] Number of users who viewed messages in the chat. 
  /// [senderCount] Number of users who sent messages to the chat. 
  /// [memberCountGraph] A graph containing number of members in the chat. 
  /// [joinGraph] A graph containing number of members joined and left the chat. 
  /// [joinBySourceGraph] A graph containing number of new member joins per source. 
  /// [languageGraph] A graph containing distribution of active users per language. 
  /// [messageContentGraph] A graph containing distribution of sent messages by content type. 
  /// [actionGraph] A graph containing number of different actions in the chat. 
  /// [dayGraph] A graph containing distribution of message views per hour. 
  /// [weekGraph] A graph containing distribution of message views per day of week. 
  /// [topSenders] List of users sent most messages in the last week. 
  /// [topAdministrators] List of most active administrators in the last week. 
  /// [topInviters] List of most active inviters of new members in the last week
  ChatStatisticsSupergroup({this.period,
    this.memberCount,
    this.messageCount,
    this.viewerCount,
    this.senderCount,
    this.memberCountGraph,
    this.joinGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageContentGraph,
    this.actionGraph,
    this.dayGraph,
    this.weekGraph,
    this.topSenders,
    this.topAdministrators,
    this.topInviters});

  /// Parse from a json
  ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json)  {
    this.period = DateRange.fromJson(json['period'] ?? <String, dynamic>{});
    this.memberCount = StatisticsValue.fromJson(json['member_count'] ?? <String, dynamic>{});
    this.messageCount = StatisticsValue.fromJson(json['message_count'] ?? <String, dynamic>{});
    this.viewerCount = StatisticsValue.fromJson(json['viewer_count'] ?? <String, dynamic>{});
    this.senderCount = StatisticsValue.fromJson(json['sender_count'] ?? <String, dynamic>{});
    this.memberCountGraph = StatisticsGraph.fromJson(json['member_count_graph'] ?? <String, dynamic>{});
    this.joinGraph = StatisticsGraph.fromJson(json['join_graph'] ?? <String, dynamic>{});
    this.joinBySourceGraph = StatisticsGraph.fromJson(json['join_by_source_graph'] ?? <String, dynamic>{});
    this.languageGraph = StatisticsGraph.fromJson(json['language_graph'] ?? <String, dynamic>{});
    this.messageContentGraph = StatisticsGraph.fromJson(json['message_content_graph'] ?? <String, dynamic>{});
    this.actionGraph = StatisticsGraph.fromJson(json['action_graph'] ?? <String, dynamic>{});
    this.dayGraph = StatisticsGraph.fromJson(json['day_graph'] ?? <String, dynamic>{});
    this.weekGraph = StatisticsGraph.fromJson(json['week_graph'] ?? <String, dynamic>{});
    this.topSenders = List<ChatStatisticsMessageSenderInfo>.from((json['top_senders'] ?? []).map((item) => ChatStatisticsMessageSenderInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.topAdministrators = List<ChatStatisticsAdministratorActionsInfo>.from((json['top_administrators'] ?? []).map((item) => ChatStatisticsAdministratorActionsInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.topInviters = List<ChatStatisticsInviterInfo>.from((json['top_inviters'] ?? []).map((item) => ChatStatisticsInviterInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "period": this.period == null ? null : this.period.toJson(),
      "member_count": this.memberCount == null ? null : this.memberCount.toJson(),
      "message_count": this.messageCount == null ? null : this.messageCount.toJson(),
      "viewer_count": this.viewerCount == null ? null : this.viewerCount.toJson(),
      "sender_count": this.senderCount == null ? null : this.senderCount.toJson(),
      "member_count_graph": this.memberCountGraph == null ? null : this.memberCountGraph.toJson(),
      "join_graph": this.joinGraph == null ? null : this.joinGraph.toJson(),
      "join_by_source_graph": this.joinBySourceGraph == null ? null : this.joinBySourceGraph.toJson(),
      "language_graph": this.languageGraph == null ? null : this.languageGraph.toJson(),
      "message_content_graph": this.messageContentGraph == null ? null : this.messageContentGraph.toJson(),
      "action_graph": this.actionGraph == null ? null : this.actionGraph.toJson(),
      "day_graph": this.dayGraph == null ? null : this.dayGraph.toJson(),
      "week_graph": this.weekGraph == null ? null : this.weekGraph.toJson(),
      "top_senders": this.topSenders.map((i) => i.toJson()).toList(),
      "top_administrators": this.topAdministrators.map((i) => i.toJson()).toList(),
      "top_inviters": this.topInviters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsChannel extends ChatStatistics {
  DateRange period;
  StatisticsValue memberCount;
  StatisticsValue meanViewCount;
  StatisticsValue meanShareCount;
  double enabledNotificationsPercentage;
  StatisticsGraph memberCountGraph;
  StatisticsGraph joinGraph;
  StatisticsGraph muteGraph;
  StatisticsGraph viewCountByHourGraph;
  StatisticsGraph viewCountBySourceGraph;
  StatisticsGraph joinBySourceGraph;
  StatisticsGraph languageGraph;
  StatisticsGraph messageInteractionGraph;
  StatisticsGraph instantViewInteractionGraph;
  List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;
  dynamic extra;

  /// A detailed statistics about a channel chat. 
  /// [period] A period to which the statistics applies. 
  /// [memberCount] Number of members in the chat. 
  /// [meanViewCount] Mean number of times the recently sent messages was viewed. 
  /// [meanShareCount] Mean number of times the recently sent messages was shared. 
  /// [enabledNotificationsPercentage] A percentage of users with enabled notifications for the chat. 
  /// [memberCountGraph] A graph containing number of members in the chat. 
  /// [joinGraph] A graph containing number of members joined and left the chat. 
  /// [muteGraph] A graph containing number of members muted and unmuted the chat. 
  /// [viewCountByHourGraph] A graph containing number of message views in a given hour in the last two weeks. 
  /// [viewCountBySourceGraph] A graph containing number of message views per source. 
  /// [joinBySourceGraph] A graph containing number of new member joins per source. 
  /// [languageGraph] A graph containing number of users viewed chat messages per language. 
  /// [messageInteractionGraph] A graph containing number of chat message views and shares. 
  /// [instantViewInteractionGraph] A graph containing number of views of associated with the chat instant views. 
  /// [recentMessageInteractions] Detailed statistics about number of views and shares of recently sent messages
  ChatStatisticsChannel({this.period,
    this.memberCount,
    this.meanViewCount,
    this.meanShareCount,
    this.enabledNotificationsPercentage,
    this.memberCountGraph,
    this.joinGraph,
    this.muteGraph,
    this.viewCountByHourGraph,
    this.viewCountBySourceGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageInteractionGraph,
    this.instantViewInteractionGraph,
    this.recentMessageInteractions});

  /// Parse from a json
  ChatStatisticsChannel.fromJson(Map<String, dynamic> json)  {
    this.period = DateRange.fromJson(json['period'] ?? <String, dynamic>{});
    this.memberCount = StatisticsValue.fromJson(json['member_count'] ?? <String, dynamic>{});
    this.meanViewCount = StatisticsValue.fromJson(json['mean_view_count'] ?? <String, dynamic>{});
    this.meanShareCount = StatisticsValue.fromJson(json['mean_share_count'] ?? <String, dynamic>{});
    this.enabledNotificationsPercentage = json['enabled_notifications_percentage'];
    this.memberCountGraph = StatisticsGraph.fromJson(json['member_count_graph'] ?? <String, dynamic>{});
    this.joinGraph = StatisticsGraph.fromJson(json['join_graph'] ?? <String, dynamic>{});
    this.muteGraph = StatisticsGraph.fromJson(json['mute_graph'] ?? <String, dynamic>{});
    this.viewCountByHourGraph = StatisticsGraph.fromJson(json['view_count_by_hour_graph'] ?? <String, dynamic>{});
    this.viewCountBySourceGraph = StatisticsGraph.fromJson(json['view_count_by_source_graph'] ?? <String, dynamic>{});
    this.joinBySourceGraph = StatisticsGraph.fromJson(json['join_by_source_graph'] ?? <String, dynamic>{});
    this.languageGraph = StatisticsGraph.fromJson(json['language_graph'] ?? <String, dynamic>{});
    this.messageInteractionGraph = StatisticsGraph.fromJson(json['message_interaction_graph'] ?? <String, dynamic>{});
    this.instantViewInteractionGraph = StatisticsGraph.fromJson(json['instant_view_interaction_graph'] ?? <String, dynamic>{});
    this.recentMessageInteractions = List<ChatStatisticsMessageInteractionInfo>.from((json['recent_message_interactions'] ?? []).map((item) => ChatStatisticsMessageInteractionInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "period": this.period == null ? null : this.period.toJson(),
      "member_count": this.memberCount == null ? null : this.memberCount.toJson(),
      "mean_view_count": this.meanViewCount == null ? null : this.meanViewCount.toJson(),
      "mean_share_count": this.meanShareCount == null ? null : this.meanShareCount.toJson(),
      "enabled_notifications_percentage": this.enabledNotificationsPercentage,
      "member_count_graph": this.memberCountGraph == null ? null : this.memberCountGraph.toJson(),
      "join_graph": this.joinGraph == null ? null : this.joinGraph.toJson(),
      "mute_graph": this.muteGraph == null ? null : this.muteGraph.toJson(),
      "view_count_by_hour_graph": this.viewCountByHourGraph == null ? null : this.viewCountByHourGraph.toJson(),
      "view_count_by_source_graph": this.viewCountBySourceGraph == null ? null : this.viewCountBySourceGraph.toJson(),
      "join_by_source_graph": this.joinBySourceGraph == null ? null : this.joinBySourceGraph.toJson(),
      "language_graph": this.languageGraph == null ? null : this.languageGraph.toJson(),
      "message_interaction_graph": this.messageInteractionGraph == null ? null : this.messageInteractionGraph.toJson(),
      "instant_view_interaction_graph": this.instantViewInteractionGraph == null ? null : this.instantViewInteractionGraph.toJson(),
      "recent_message_interactions": this.recentMessageInteractions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}