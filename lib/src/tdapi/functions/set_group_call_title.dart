part of '../tdapi.dart';

/// **SetGroupCallTitle** *(setGroupCallTitle)* - TDLib function
///
/// Sets group call title. Requires groupCall.can_be_managed group call flag.
///
/// * [groupCallId]: Group call identifier.
/// * [title]: New group call title; 1-64 characters.
///
/// [Ok] is returned on completion.
final class SetGroupCallTitle extends TdFunction {
  
  /// **SetGroupCallTitle** *(setGroupCallTitle)* - TDLib function
  ///
  /// Sets group call title. Requires groupCall.can_be_managed group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [title]: New group call title; 1-64 characters.
  ///
  /// [Ok] is returned on completion.
  const SetGroupCallTitle({
    required this.groupCallId,
    required this.title,
  });
  
  /// Group call identifier 
  final int groupCallId;

  /// New group call title; 1-64 characters
  final String title;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "title": title,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [group_call_id]: Group call identifier 
  /// * [title]: New group call title; 1-64 characters
  SetGroupCallTitle copyWith({
    int? groupCallId,
    String? title,
  }) => SetGroupCallTitle(
    groupCallId: groupCallId ?? this.groupCallId,
    title: title ?? this.title,
  );

  /// TDLib object type
  static const String objectType = 'setGroupCallTitle';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
