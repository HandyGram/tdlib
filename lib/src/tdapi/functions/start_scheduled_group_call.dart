part of '../tdapi.dart';

/// **StartScheduledGroupCall** *(startScheduledGroupCall)* - TDLib function
///
/// Starts a scheduled group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class StartScheduledGroupCall extends TdFunction {
  
  /// **StartScheduledGroupCall** *(startScheduledGroupCall)* - TDLib function
  ///
  /// Starts a scheduled group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const StartScheduledGroupCall({
    required this.groupCallId,
  });
  
  /// Group call identifier
  final int groupCallId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "group_call_id": groupCallId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  StartScheduledGroupCall copyWith({
    int? groupCallId,
  }) => StartScheduledGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'startScheduledGroupCall';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
