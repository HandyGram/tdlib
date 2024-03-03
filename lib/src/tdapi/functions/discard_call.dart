part of '../tdapi.dart';

/// **DiscardCall** *(discardCall)* - TDLib function
///
/// Discards a call.
///
/// * [callId]: Call identifier.
/// * [isDisconnected]: Pass true if the user was disconnected.
/// * [duration]: The call duration, in seconds.
/// * [isVideo]: Pass true if the call was a video call.
/// * [connectionId]: Identifier of the connection used during the call.
///
/// [Ok] is returned on completion.
final class DiscardCall extends TdFunction {
  /// **DiscardCall** *(discardCall)* - TDLib function
  ///
  /// Discards a call.
  ///
  /// * [callId]: Call identifier.
  /// * [isDisconnected]: Pass true if the user was disconnected.
  /// * [duration]: The call duration, in seconds.
  /// * [isVideo]: Pass true if the call was a video call.
  /// * [connectionId]: Identifier of the connection used during the call.
  ///
  /// [Ok] is returned on completion.
  const DiscardCall({
    required this.callId,
    required this.isDisconnected,
    required this.duration,
    required this.isVideo,
    required this.connectionId,
  });

  /// Call identifier
  final int callId;

  /// Pass true if the user was disconnected
  final bool isDisconnected;

  /// The call duration, in seconds
  final int duration;

  /// Pass true if the call was a video call
  final bool isVideo;

  /// Identifier of the connection used during the call
  final int connectionId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "call_id": callId,
      "is_disconnected": isDisconnected,
      "duration": duration,
      "is_video": isVideo,
      "connection_id": connectionId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [call_id]: Call identifier
  /// * [is_disconnected]: Pass true if the user was disconnected
  /// * [duration]: The call duration, in seconds
  /// * [is_video]: Pass true if the call was a video call
  /// * [connection_id]: Identifier of the connection used during the call
  DiscardCall copyWith({
    int? callId,
    bool? isDisconnected,
    int? duration,
    bool? isVideo,
    int? connectionId,
  }) =>
      DiscardCall(
        callId: callId ?? this.callId,
        isDisconnected: isDisconnected ?? this.isDisconnected,
        duration: duration ?? this.duration,
        isVideo: isVideo ?? this.isVideo,
        connectionId: connectionId ?? this.connectionId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'discardCall';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
