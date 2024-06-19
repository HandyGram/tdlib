part of '../tdapi.dart';

/// **PollOption** *(pollOption)* - basic class
///
/// Describes one answer option of a poll.
///
/// * [text]: Option text; 1-100 characters. Only custom emoji entities are allowed.
/// * [voterCount]: Number of voters for this option, available only for closed or voted polls.
/// * [votePercentage]: The percentage of votes for this option; 0-100.
/// * [isChosen]: True, if the option was chosen by the user.
/// * [isBeingChosen]: True, if the option is being chosen by a pending setPollAnswer request.
final class PollOption extends TdObject {
  /// **PollOption** *(pollOption)* - basic class
  ///
  /// Describes one answer option of a poll.
  ///
  /// * [text]: Option text; 1-100 characters. Only custom emoji entities are allowed.
  /// * [voterCount]: Number of voters for this option, available only for closed or voted polls.
  /// * [votePercentage]: The percentage of votes for this option; 0-100.
  /// * [isChosen]: True, if the option was chosen by the user.
  /// * [isBeingChosen]: True, if the option is being chosen by a pending setPollAnswer request.
  const PollOption({
    required this.text,
    required this.voterCount,
    required this.votePercentage,
    required this.isChosen,
    required this.isBeingChosen,
  });

  /// Option text; 1-100 characters. Only custom emoji entities are allowed
  final FormattedText text;

  /// Number of voters for this option, available only for closed or voted polls
  final int voterCount;

  /// The percentage of votes for this option; 0-100
  final int votePercentage;

  /// True, if the option was chosen by the user
  final bool isChosen;

  /// True, if the option is being chosen by a pending setPollAnswer request
  final bool isBeingChosen;

  /// Parse from a json
  factory PollOption.fromJson(Map<String, dynamic> json) => PollOption(
        text: FormattedText.fromJson(json['text']),
        voterCount: json['voter_count'],
        votePercentage: json['vote_percentage'],
        isChosen: json['is_chosen'],
        isBeingChosen: json['is_being_chosen'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "text": text.toJson(),
      "voter_count": voterCount,
      "vote_percentage": votePercentage,
      "is_chosen": isChosen,
      "is_being_chosen": isBeingChosen,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Option text; 1-100 characters. Only custom emoji entities are allowed
  /// * [voter_count]: Number of voters for this option, available only for closed or voted polls
  /// * [vote_percentage]: The percentage of votes for this option; 0-100
  /// * [is_chosen]: True, if the option was chosen by the user
  /// * [is_being_chosen]: True, if the option is being chosen by a pending setPollAnswer request
  PollOption copyWith({
    FormattedText? text,
    int? voterCount,
    int? votePercentage,
    bool? isChosen,
    bool? isBeingChosen,
  }) =>
      PollOption(
        text: text ?? this.text,
        voterCount: voterCount ?? this.voterCount,
        votePercentage: votePercentage ?? this.votePercentage,
        isChosen: isChosen ?? this.isChosen,
        isBeingChosen: isBeingChosen ?? this.isBeingChosen,
      );

  /// TDLib object type
  static const String defaultObjectId = 'pollOption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
