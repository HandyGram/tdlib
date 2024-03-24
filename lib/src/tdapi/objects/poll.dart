part of '../tdapi.dart';

/// **Poll** *(poll)* - basic class
///
/// Describes a poll.
///
/// * [id]: Unique poll identifier.
/// * [question]: Poll question; 1-300 characters.
/// * [options]: List of poll answer options.
/// * [totalVoterCount]: Total number of voters, participating in the poll.
/// * [recentVoterIds]: Identifiers of recent voters, if the poll is non-anonymous.
/// * [isAnonymous]: True, if the poll is anonymous.
/// * [type]: Type of the poll.
/// * [openPeriod]: Amount of time the poll will be active after creation, in seconds.
/// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed.
/// * [isClosed]: True, if the poll is closed.
final class Poll extends TdObject {
  /// **Poll** *(poll)* - basic class
  ///
  /// Describes a poll.
  ///
  /// * [id]: Unique poll identifier.
  /// * [question]: Poll question; 1-300 characters.
  /// * [options]: List of poll answer options.
  /// * [totalVoterCount]: Total number of voters, participating in the poll.
  /// * [recentVoterIds]: Identifiers of recent voters, if the poll is non-anonymous.
  /// * [isAnonymous]: True, if the poll is anonymous.
  /// * [type]: Type of the poll.
  /// * [openPeriod]: Amount of time the poll will be active after creation, in seconds.
  /// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed.
  /// * [isClosed]: True, if the poll is closed.
  const Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterIds,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });

  /// Unique poll identifier
  final int id;

  /// Poll question; 1-300 characters
  final String question;

  /// List of poll answer options
  final List<PollOption> options;

  /// Total number of voters, participating in the poll
  final int totalVoterCount;

  /// Identifiers of recent voters, if the poll is non-anonymous
  final List<MessageSender> recentVoterIds;

  /// True, if the poll is anonymous
  final bool isAnonymous;

  /// Type of the poll
  final PollType type;

  /// Amount of time the poll will be active after creation, in seconds
  final int openPeriod;

  /// Point in time (Unix timestamp) when the poll will automatically be closed
  final int closeDate;

  /// True, if the poll is closed
  final bool isClosed;

  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
        id: json['id'] is int ? json['id'] : int.parse(json['id']),
        question: json['question'],
        options: List<PollOption>.from((json['options'] ?? [])
            .map((item) => PollOption.fromJson(item))
            .toList()),
        totalVoterCount: json['total_voter_count'],
        recentVoterIds: List<MessageSender>.from(
            (json['recent_voter_ids'] ?? [])
                .map((item) => MessageSender.fromJson(item))
                .toList()),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type']),
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "question": question,
      "options": options.map((i) => i.toJson()).toList(),
      "total_voter_count": totalVoterCount,
      "recent_voter_ids": recentVoterIds.map((i) => i.toJson()).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique poll identifier
  /// * [question]: Poll question; 1-300 characters
  /// * [options]: List of poll answer options
  /// * [total_voter_count]: Total number of voters, participating in the poll
  /// * [recent_voter_ids]: Identifiers of recent voters, if the poll is non-anonymous
  /// * [is_anonymous]: True, if the poll is anonymous
  /// * [type]: Type of the poll
  /// * [open_period]: Amount of time the poll will be active after creation, in seconds
  /// * [close_date]: Point in time (Unix timestamp) when the poll will automatically be closed
  /// * [is_closed]: True, if the poll is closed
  Poll copyWith({
    int? id,
    String? question,
    List<PollOption>? options,
    int? totalVoterCount,
    List<MessageSender>? recentVoterIds,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) =>
      Poll(
        id: id ?? this.id,
        question: question ?? this.question,
        options: options ?? this.options,
        totalVoterCount: totalVoterCount ?? this.totalVoterCount,
        recentVoterIds: recentVoterIds ?? this.recentVoterIds,
        isAnonymous: isAnonymous ?? this.isAnonymous,
        type: type ?? this.type,
        openPeriod: openPeriod ?? this.openPeriod,
        closeDate: closeDate ?? this.closeDate,
        isClosed: isClosed ?? this.isClosed,
      );

  /// TDLib object type
  static const String defaultObjectId = 'poll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
