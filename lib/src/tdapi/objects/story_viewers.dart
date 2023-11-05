part of '../tdapi.dart';

/// **StoryViewers** *(storyViewers)* - basic class
///
/// Represents a list of story viewers.
///
/// * [totalCount]: Approximate total number of story viewers found.
/// * [totalReactionCount]: Approximate total number of reactions set by found story viewers.
/// * [viewers]: List of story viewers.
/// * [nextOffset]: The offset for the next request. If empty, there are no more results.
final class StoryViewers extends TdObject {
  
  /// **StoryViewers** *(storyViewers)* - basic class
  ///
  /// Represents a list of story viewers.
  ///
  /// * [totalCount]: Approximate total number of story viewers found.
  /// * [totalReactionCount]: Approximate total number of reactions set by found story viewers.
  /// * [viewers]: List of story viewers.
  /// * [nextOffset]: The offset for the next request. If empty, there are no more results.
  const StoryViewers({
    required this.totalCount,
    required this.totalReactionCount,
    required this.viewers,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of story viewers found
  final int totalCount;

  /// Approximate total number of reactions set by found story viewers
  final int totalReactionCount;

  /// List of story viewers
  final List<StoryViewer> viewers;

  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StoryViewers.fromJson(Map<String, dynamic> json) => StoryViewers(
    totalCount: json['total_count'],
    totalReactionCount: json['total_reaction_count'],
    viewers: List<StoryViewer>.from((json['viewers'] ?? []).map((item) => StoryViewer.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "total_reaction_count": totalReactionCount,
      "viewers": viewers.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Approximate total number of story viewers found
  /// * [total_reaction_count]: Approximate total number of reactions set by found story viewers
  /// * [viewers]: List of story viewers
  /// * [next_offset]: The offset for the next request. If empty, there are no more results
  StoryViewers copyWith({
    int? totalCount,
    int? totalReactionCount,
    List<StoryViewer>? viewers,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => StoryViewers(
    totalCount: totalCount ?? this.totalCount,
    totalReactionCount: totalReactionCount ?? this.totalReactionCount,
    viewers: viewers ?? this.viewers,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'storyViewers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
