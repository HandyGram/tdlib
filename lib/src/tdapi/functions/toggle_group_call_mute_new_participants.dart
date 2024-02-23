part of '../tdapi.dart';

/// **ToggleGroupCallMuteNewParticipants** *(toggleGroupCallMuteNewParticipants)* - TDLib function
///
/// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires groupCall.can_toggle_mute_new_participants group call flag.
///
/// * [groupCallId]: Group call identifier.
/// * [muteNewParticipants]: New value of the mute_new_participants setting.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallMuteNewParticipants extends TdFunction {
  
  /// **ToggleGroupCallMuteNewParticipants** *(toggleGroupCallMuteNewParticipants)* - TDLib function
  ///
  /// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires groupCall.can_toggle_mute_new_participants group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [muteNewParticipants]: New value of the mute_new_participants setting.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallMuteNewParticipants({
    required this.groupCallId,
    required this.muteNewParticipants,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// New value of the mute_new_participants setting
  final bool muteNewParticipants;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "group_call_id": groupCallId,
      "mute_new_participants": muteNewParticipants,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier
  /// * [mute_new_participants]: New value of the mute_new_participants setting
  ToggleGroupCallMuteNewParticipants copyWith({
    int? groupCallId,
    bool? muteNewParticipants,
  }) => ToggleGroupCallMuteNewParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
  );

  /// TDLib object type
  static const String defaultObjectId = 'toggleGroupCallMuteNewParticipants';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
