part of '../tdapi.dart';

/// **Call** *(call)* - basic class
///
/// Describes a call.
///
/// * [id]: Call identifier, not persistent.
/// * [userId]: User identifier of the other call participant.
/// * [isOutgoing]: True, if the call is outgoing.
/// * [isVideo]: True, if the call is a video call.
/// * [state]: Call state.
final class Call extends TdObject {
  
  /// **Call** *(call)* - basic class
  ///
  /// Describes a call.
  ///
  /// * [id]: Call identifier, not persistent.
  /// * [userId]: User identifier of the other call participant.
  /// * [isOutgoing]: True, if the call is outgoing.
  /// * [isVideo]: True, if the call is a video call.
  /// * [state]: Call state.
  const Call({
    required this.id,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    required this.state,
  });
  
  /// Call identifier, not persistent
  final int id;

  /// User identifier of the other call participant
  final int userId;

  /// True, if the call is outgoing
  final bool isOutgoing;

  /// True, if the call is a video call
  final bool isVideo;

  /// Call state
  final CallState state;
  
  /// Parse from a json
  factory Call.fromJson(Map<String, dynamic> json) => Call(
    id: json['id'],
    userId: json['user_id'],
    isOutgoing: json['is_outgoing'],
    isVideo: json['is_video'],
    state: CallState.fromJson(json['state']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "id": id,
      "user_id": userId,
      "is_outgoing": isOutgoing,
      "is_video": isVideo,
      "state": state.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Call identifier, not persistent
  /// * [user_id]: User identifier of the other call participant
  /// * [is_outgoing]: True, if the call is outgoing
  /// * [is_video]: True, if the call is a video call
  /// * [state]: Call state
  Call copyWith({
    int? id,
    int? userId,
    bool? isOutgoing,
    bool? isVideo,
    CallState? state,
  }) => Call(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isVideo: isVideo ?? this.isVideo,
    state: state ?? this.state,
  );

  /// TDLib object type
  static const String defaultObjectId = 'call';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
