part of '../tdapi.dart';

/// **StoryViewer** *(storyViewer)* - basic class
///
/// Represents a viewer of a story.
///
/// * [userId]: User identifier of the viewer.
/// * [viewDate]: Approximate point in time (Unix timestamp) when the story was viewed.
/// * [blockList]: Block list to which the user is added; may be null if none *(optional)*.
/// * [chosenReactionType]: Type of the reaction that was chosen by the user; may be null if none *(optional)*.
final class StoryViewer extends TdObject {
  
  /// **StoryViewer** *(storyViewer)* - basic class
  ///
  /// Represents a viewer of a story.
  ///
  /// * [userId]: User identifier of the viewer.
  /// * [viewDate]: Approximate point in time (Unix timestamp) when the story was viewed.
  /// * [blockList]: Block list to which the user is added; may be null if none *(optional)*.
  /// * [chosenReactionType]: Type of the reaction that was chosen by the user; may be null if none *(optional)*.
  const StoryViewer({
    required this.userId,
    required this.viewDate,
    this.blockList,
    this.chosenReactionType,
  });
  
  /// User identifier of the viewer
  final int userId;

  /// Approximate point in time (Unix timestamp) when the story was viewed
  final int viewDate;

  /// Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// Type of the reaction that was chosen by the user; may be null if none
  final ReactionType? chosenReactionType;
  
  /// Parse from a json
  factory StoryViewer.fromJson(Map<String, dynamic> json) => StoryViewer(
    userId: json['user_id'],
    viewDate: json['view_date'],
    blockList: json['block_list'] == null ? null : BlockList.fromJson(json['block_list']),
    chosenReactionType: json['chosen_reaction_type'] == null ? null : ReactionType.fromJson(json['chosen_reaction_type']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "view_date": viewDate,
      "block_list": blockList?.toJson(),
      "chosen_reaction_type": chosenReactionType?.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: User identifier of the viewer
  /// * [view_date]: Approximate point in time (Unix timestamp) when the story was viewed
  /// * [block_list]: Block list to which the user is added; may be null if none
  /// * [chosen_reaction_type]: Type of the reaction that was chosen by the user; may be null if none
  StoryViewer copyWith({
    int? userId,
    int? viewDate,
    BlockList? blockList,
    ReactionType? chosenReactionType,
  }) => StoryViewer(
    userId: userId ?? this.userId,
    viewDate: viewDate ?? this.viewDate,
    blockList: blockList ?? this.blockList,
    chosenReactionType: chosenReactionType ?? this.chosenReactionType,
  );

  /// TDLib object type
  static const String objectType = 'storyViewer';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
