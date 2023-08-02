part of '../tdapi.dart';

/// **ToggleSupergroupIsForum** *(toggleSupergroupIsForum)* - TDLib function
///
/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums.
///
/// * [supergroupId]: Identifier of the supergroup.
/// * [isForum]: New value of is_forum.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupIsForum extends TdFunction {
  
  /// **ToggleSupergroupIsForum** *(toggleSupergroupIsForum)* - TDLib function
  ///
  /// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  /// * [isForum]: New value of is_forum.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupIsForum({
    required this.supergroupId,
    required this.isForum,
  });
  
  /// Identifier of the supergroup 
  final int supergroupId;

  /// New value of is_forum
  final bool isForum;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "is_forum": isForum,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Identifier of the supergroup 
  /// * [is_forum]: New value of is_forum
  ToggleSupergroupIsForum copyWith({
    int? supergroupId,
    bool? isForum,
  }) => ToggleSupergroupIsForum(
    supergroupId: supergroupId ?? this.supergroupId,
    isForum: isForum ?? this.isForum,
  );

  /// TDLib object type
  static const String objectType = 'toggleSupergroupIsForum';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
