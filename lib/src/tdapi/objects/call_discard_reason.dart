part of '../tdapi.dart';

/// **CallDiscardReason** *(callDiscardReason)* - parent
///
/// Describes the reason why a call was discarded.
sealed class CallDiscardReason extends TdObject {
  
  /// **CallDiscardReason** *(callDiscardReason)* - parent
  ///
  /// Describes the reason why a call was discarded.
  const CallDiscardReason();
  
  /// a CallDiscardReason return type can be :
  /// * [CallDiscardReasonEmpty]
  /// * [CallDiscardReasonMissed]
  /// * [CallDiscardReasonDeclined]
  /// * [CallDiscardReasonDisconnected]
  /// * [CallDiscardReasonHungUp]
  factory CallDiscardReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallDiscardReasonEmpty.objectType:
        return CallDiscardReasonEmpty.fromJson(json);
      case CallDiscardReasonMissed.objectType:
        return CallDiscardReasonMissed.fromJson(json);
      case CallDiscardReasonDeclined.objectType:
        return CallDiscardReasonDeclined.fromJson(json);
      case CallDiscardReasonDisconnected.objectType:
        return CallDiscardReasonDisconnected.fromJson(json);
      case CallDiscardReasonHungUp.objectType:
        return CallDiscardReasonHungUp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CallDiscardReason)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  CallDiscardReason copyWith();

  /// TDLib object type
  static const String objectType = 'callDiscardReason';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CallDiscardReasonEmpty** *(callDiscardReasonEmpty)* - child of CallDiscardReason
///
/// The call wasn't discarded, or the reason is unknown.
final class CallDiscardReasonEmpty extends CallDiscardReason {
  
  /// **CallDiscardReasonEmpty** *(callDiscardReasonEmpty)* - child of CallDiscardReason
  ///
  /// The call wasn't discarded, or the reason is unknown.
  const CallDiscardReasonEmpty();
  
  /// Parse from a json
  factory CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json) => const CallDiscardReasonEmpty();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CallDiscardReasonEmpty copyWith() => const CallDiscardReasonEmpty();

  /// TDLib object type
  static const String objectType = 'callDiscardReasonEmpty';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CallDiscardReasonMissed** *(callDiscardReasonMissed)* - child of CallDiscardReason
///
/// The call was ended before the conversation started. It was canceled by the caller or missed by the other party.
final class CallDiscardReasonMissed extends CallDiscardReason {
  
  /// **CallDiscardReasonMissed** *(callDiscardReasonMissed)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party.
  const CallDiscardReasonMissed();
  
  /// Parse from a json
  factory CallDiscardReasonMissed.fromJson(Map<String, dynamic> json) => const CallDiscardReasonMissed();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CallDiscardReasonMissed copyWith() => const CallDiscardReasonMissed();

  /// TDLib object type
  static const String objectType = 'callDiscardReasonMissed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CallDiscardReasonDeclined** *(callDiscardReasonDeclined)* - child of CallDiscardReason
///
/// The call was ended before the conversation started. It was declined by the other party.
final class CallDiscardReasonDeclined extends CallDiscardReason {
  
  /// **CallDiscardReasonDeclined** *(callDiscardReasonDeclined)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was declined by the other party.
  const CallDiscardReasonDeclined();
  
  /// Parse from a json
  factory CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDeclined();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CallDiscardReasonDeclined copyWith() => const CallDiscardReasonDeclined();

  /// TDLib object type
  static const String objectType = 'callDiscardReasonDeclined';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CallDiscardReasonDisconnected** *(callDiscardReasonDisconnected)* - child of CallDiscardReason
///
/// The call was ended during the conversation because the users were disconnected.
final class CallDiscardReasonDisconnected extends CallDiscardReason {
  
  /// **CallDiscardReasonDisconnected** *(callDiscardReasonDisconnected)* - child of CallDiscardReason
  ///
  /// The call was ended during the conversation because the users were disconnected.
  const CallDiscardReasonDisconnected();
  
  /// Parse from a json
  factory CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDisconnected();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CallDiscardReasonDisconnected copyWith() => const CallDiscardReasonDisconnected();

  /// TDLib object type
  static const String objectType = 'callDiscardReasonDisconnected';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CallDiscardReasonHungUp** *(callDiscardReasonHungUp)* - child of CallDiscardReason
///
/// The call was ended because one of the parties hung up.
final class CallDiscardReasonHungUp extends CallDiscardReason {
  
  /// **CallDiscardReasonHungUp** *(callDiscardReasonHungUp)* - child of CallDiscardReason
  ///
  /// The call was ended because one of the parties hung up.
  const CallDiscardReasonHungUp();
  
  /// Parse from a json
  factory CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json) => const CallDiscardReasonHungUp();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CallDiscardReasonHungUp copyWith() => const CallDiscardReasonHungUp();

  /// TDLib object type
  static const String objectType = 'callDiscardReasonHungUp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
