part of '../tdapi.dart';

/// **ToggleSupergroupJoinByRequest** *(toggleSupergroupJoinByRequest)* - TDLib function
///
/// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right.
///
/// * [supergroupId]: Identifier of the channel.
/// * [joinByRequest]: New value of join_by_request.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupJoinByRequest extends TdFunction {
  /// **ToggleSupergroupJoinByRequest** *(toggleSupergroupJoinByRequest)* - TDLib function
  ///
  /// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right.
  ///
  /// * [supergroupId]: Identifier of the channel.
  /// * [joinByRequest]: New value of join_by_request.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
  });

  /// Identifier of the channel
  final int supergroupId;

  /// New value of join_by_request
  final bool joinByRequest;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "supergroup_id": supergroupId,
      "join_by_request": joinByRequest,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Identifier of the channel
  /// * [join_by_request]: New value of join_by_request
  ToggleSupergroupJoinByRequest copyWith({
    int? supergroupId,
    bool? joinByRequest,
  }) =>
      ToggleSupergroupJoinByRequest(
        supergroupId: supergroupId ?? this.supergroupId,
        joinByRequest: joinByRequest ?? this.joinByRequest,
      );

  /// TDLib object type
  static const String defaultObjectId = 'toggleSupergroupJoinByRequest';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
