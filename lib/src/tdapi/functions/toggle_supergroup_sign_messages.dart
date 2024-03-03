part of '../tdapi.dart';

/// **ToggleSupergroupSignMessages** *(toggleSupergroupSignMessages)* - TDLib function
///
/// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info member right.
///
/// * [supergroupId]: Identifier of the channel.
/// * [signMessages]: New value of sign_messages.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupSignMessages extends TdFunction {
  /// **ToggleSupergroupSignMessages** *(toggleSupergroupSignMessages)* - TDLib function
  ///
  /// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info member right.
  ///
  /// * [supergroupId]: Identifier of the channel.
  /// * [signMessages]: New value of sign_messages.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
  });

  /// Identifier of the channel
  final int supergroupId;

  /// New value of sign_messages
  final bool signMessages;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "supergroup_id": supergroupId,
      "sign_messages": signMessages,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Identifier of the channel
  /// * [sign_messages]: New value of sign_messages
  ToggleSupergroupSignMessages copyWith({
    int? supergroupId,
    bool? signMessages,
  }) =>
      ToggleSupergroupSignMessages(
        supergroupId: supergroupId ?? this.supergroupId,
        signMessages: signMessages ?? this.signMessages,
      );

  /// TDLib object type
  static const String defaultObjectId = 'toggleSupergroupSignMessages';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
