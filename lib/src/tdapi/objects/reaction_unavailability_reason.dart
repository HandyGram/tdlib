part of '../tdapi.dart';

/// **ReactionUnavailabilityReason** *(reactionUnavailabilityReason)* - parent
///
/// Describes why the current user can't add reactions to the message, despite some other users can.
sealed class ReactionUnavailabilityReason extends TdObject {
  
  /// **ReactionUnavailabilityReason** *(reactionUnavailabilityReason)* - parent
  ///
  /// Describes why the current user can't add reactions to the message, despite some other users can.
  const ReactionUnavailabilityReason();
  
  /// a ReactionUnavailabilityReason return type can be :
  /// * [ReactionUnavailabilityReasonAnonymousAdministrator]
  /// * [ReactionUnavailabilityReasonGuest]
  factory ReactionUnavailabilityReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReactionUnavailabilityReasonAnonymousAdministrator.objectType:
        return ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(json);
      case ReactionUnavailabilityReasonGuest.objectType:
        return ReactionUnavailabilityReasonGuest.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ReactionUnavailabilityReason)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ReactionUnavailabilityReason copyWith();

  /// TDLib object type
  static const String objectType = 'reactionUnavailabilityReason';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReactionUnavailabilityReasonAnonymousAdministrator** *(reactionUnavailabilityReasonAnonymousAdministrator)* - child of ReactionUnavailabilityReason
///
/// The user is an anonymous administrator in the supergroup, but isn't a creator of it, so they can't vote on behalf of the supergroup.
final class ReactionUnavailabilityReasonAnonymousAdministrator extends ReactionUnavailabilityReason {
  
  /// **ReactionUnavailabilityReasonAnonymousAdministrator** *(reactionUnavailabilityReasonAnonymousAdministrator)* - child of ReactionUnavailabilityReason
  ///
  /// The user is an anonymous administrator in the supergroup, but isn't a creator of it, so they can't vote on behalf of the supergroup.
  const ReactionUnavailabilityReasonAnonymousAdministrator();
  
  /// Parse from a json
  factory ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(Map<String, dynamic> json) => const ReactionUnavailabilityReasonAnonymousAdministrator();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReactionUnavailabilityReasonAnonymousAdministrator copyWith() => const ReactionUnavailabilityReasonAnonymousAdministrator();

  /// TDLib object type
  static const String objectType = 'reactionUnavailabilityReasonAnonymousAdministrator';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReactionUnavailabilityReasonGuest** *(reactionUnavailabilityReasonGuest)* - child of ReactionUnavailabilityReason
///
/// The user isn't a member of the supergroup and can't send messages and reactions there without joining.
final class ReactionUnavailabilityReasonGuest extends ReactionUnavailabilityReason {
  
  /// **ReactionUnavailabilityReasonGuest** *(reactionUnavailabilityReasonGuest)* - child of ReactionUnavailabilityReason
  ///
  /// The user isn't a member of the supergroup and can't send messages and reactions there without joining.
  const ReactionUnavailabilityReasonGuest();
  
  /// Parse from a json
  factory ReactionUnavailabilityReasonGuest.fromJson(Map<String, dynamic> json) => const ReactionUnavailabilityReasonGuest();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReactionUnavailabilityReasonGuest copyWith() => const ReactionUnavailabilityReasonGuest();

  /// TDLib object type
  static const String objectType = 'reactionUnavailabilityReasonGuest';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
