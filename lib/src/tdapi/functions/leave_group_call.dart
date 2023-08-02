part of '../tdapi.dart';

/// **LeaveGroupCall** *(leaveGroupCall)* - TDLib function
///
/// Leaves a group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class LeaveGroupCall extends TdFunction {
  
  /// **LeaveGroupCall** *(leaveGroupCall)* - TDLib function
  ///
  /// Leaves a group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const LeaveGroupCall({
    required this.groupCallId,
  });
  
  /// Group call identifier
  final int groupCallId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  LeaveGroupCall copyWith({
    int? groupCallId,
  }) => LeaveGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  /// TDLib object type
  static const String objectType = 'leaveGroupCall';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
