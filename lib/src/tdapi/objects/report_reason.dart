part of '../tdapi.dart';

/// **ReportReason** *(reportReason)* - parent
///
/// Describes the reason why a chat is reported.
sealed class ReportReason extends TdObject {
  
  /// **ReportReason** *(reportReason)* - parent
  ///
  /// Describes the reason why a chat is reported.
  const ReportReason();
  
  /// a ReportReason return type can be :
  /// * [ReportReasonSpam]
  /// * [ReportReasonViolence]
  /// * [ReportReasonPornography]
  /// * [ReportReasonChildAbuse]
  /// * [ReportReasonCopyright]
  /// * [ReportReasonUnrelatedLocation]
  /// * [ReportReasonFake]
  /// * [ReportReasonIllegalDrugs]
  /// * [ReportReasonPersonalDetails]
  /// * [ReportReasonCustom]
  factory ReportReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReportReasonSpam.objectType:
        return ReportReasonSpam.fromJson(json);
      case ReportReasonViolence.objectType:
        return ReportReasonViolence.fromJson(json);
      case ReportReasonPornography.objectType:
        return ReportReasonPornography.fromJson(json);
      case ReportReasonChildAbuse.objectType:
        return ReportReasonChildAbuse.fromJson(json);
      case ReportReasonCopyright.objectType:
        return ReportReasonCopyright.fromJson(json);
      case ReportReasonUnrelatedLocation.objectType:
        return ReportReasonUnrelatedLocation.fromJson(json);
      case ReportReasonFake.objectType:
        return ReportReasonFake.fromJson(json);
      case ReportReasonIllegalDrugs.objectType:
        return ReportReasonIllegalDrugs.fromJson(json);
      case ReportReasonPersonalDetails.objectType:
        return ReportReasonPersonalDetails.fromJson(json);
      case ReportReasonCustom.objectType:
        return ReportReasonCustom.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ReportReason)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ReportReason copyWith();

  /// TDLib object type
  static const String objectType = 'reportReason';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonSpam** *(reportReasonSpam)* - child of ReportReason
///
/// The chat contains spam messages.
final class ReportReasonSpam extends ReportReason {
  
  /// **ReportReasonSpam** *(reportReasonSpam)* - child of ReportReason
  ///
  /// The chat contains spam messages.
  const ReportReasonSpam();
  
  /// Parse from a json
  factory ReportReasonSpam.fromJson(Map<String, dynamic> json) => const ReportReasonSpam();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonSpam copyWith() => const ReportReasonSpam();

  /// TDLib object type
  static const String objectType = 'reportReasonSpam';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonViolence** *(reportReasonViolence)* - child of ReportReason
///
/// The chat promotes violence.
final class ReportReasonViolence extends ReportReason {
  
  /// **ReportReasonViolence** *(reportReasonViolence)* - child of ReportReason
  ///
  /// The chat promotes violence.
  const ReportReasonViolence();
  
  /// Parse from a json
  factory ReportReasonViolence.fromJson(Map<String, dynamic> json) => const ReportReasonViolence();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonViolence copyWith() => const ReportReasonViolence();

  /// TDLib object type
  static const String objectType = 'reportReasonViolence';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonPornography** *(reportReasonPornography)* - child of ReportReason
///
/// The chat contains pornographic messages.
final class ReportReasonPornography extends ReportReason {
  
  /// **ReportReasonPornography** *(reportReasonPornography)* - child of ReportReason
  ///
  /// The chat contains pornographic messages.
  const ReportReasonPornography();
  
  /// Parse from a json
  factory ReportReasonPornography.fromJson(Map<String, dynamic> json) => const ReportReasonPornography();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonPornography copyWith() => const ReportReasonPornography();

  /// TDLib object type
  static const String objectType = 'reportReasonPornography';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonChildAbuse** *(reportReasonChildAbuse)* - child of ReportReason
///
/// The chat has child abuse related content.
final class ReportReasonChildAbuse extends ReportReason {
  
  /// **ReportReasonChildAbuse** *(reportReasonChildAbuse)* - child of ReportReason
  ///
  /// The chat has child abuse related content.
  const ReportReasonChildAbuse();
  
  /// Parse from a json
  factory ReportReasonChildAbuse.fromJson(Map<String, dynamic> json) => const ReportReasonChildAbuse();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonChildAbuse copyWith() => const ReportReasonChildAbuse();

  /// TDLib object type
  static const String objectType = 'reportReasonChildAbuse';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonCopyright** *(reportReasonCopyright)* - child of ReportReason
///
/// The chat contains copyrighted content.
final class ReportReasonCopyright extends ReportReason {
  
  /// **ReportReasonCopyright** *(reportReasonCopyright)* - child of ReportReason
  ///
  /// The chat contains copyrighted content.
  const ReportReasonCopyright();
  
  /// Parse from a json
  factory ReportReasonCopyright.fromJson(Map<String, dynamic> json) => const ReportReasonCopyright();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonCopyright copyWith() => const ReportReasonCopyright();

  /// TDLib object type
  static const String objectType = 'reportReasonCopyright';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonUnrelatedLocation** *(reportReasonUnrelatedLocation)* - child of ReportReason
///
/// The location-based chat is unrelated to its stated location.
final class ReportReasonUnrelatedLocation extends ReportReason {
  
  /// **ReportReasonUnrelatedLocation** *(reportReasonUnrelatedLocation)* - child of ReportReason
  ///
  /// The location-based chat is unrelated to its stated location.
  const ReportReasonUnrelatedLocation();
  
  /// Parse from a json
  factory ReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ReportReasonUnrelatedLocation();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonUnrelatedLocation copyWith() => const ReportReasonUnrelatedLocation();

  /// TDLib object type
  static const String objectType = 'reportReasonUnrelatedLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonFake** *(reportReasonFake)* - child of ReportReason
///
/// The chat represents a fake account.
final class ReportReasonFake extends ReportReason {
  
  /// **ReportReasonFake** *(reportReasonFake)* - child of ReportReason
  ///
  /// The chat represents a fake account.
  const ReportReasonFake();
  
  /// Parse from a json
  factory ReportReasonFake.fromJson(Map<String, dynamic> json) => const ReportReasonFake();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonFake copyWith() => const ReportReasonFake();

  /// TDLib object type
  static const String objectType = 'reportReasonFake';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonIllegalDrugs** *(reportReasonIllegalDrugs)* - child of ReportReason
///
/// The chat has illegal drugs related content.
final class ReportReasonIllegalDrugs extends ReportReason {
  
  /// **ReportReasonIllegalDrugs** *(reportReasonIllegalDrugs)* - child of ReportReason
  ///
  /// The chat has illegal drugs related content.
  const ReportReasonIllegalDrugs();
  
  /// Parse from a json
  factory ReportReasonIllegalDrugs.fromJson(Map<String, dynamic> json) => const ReportReasonIllegalDrugs();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonIllegalDrugs copyWith() => const ReportReasonIllegalDrugs();

  /// TDLib object type
  static const String objectType = 'reportReasonIllegalDrugs';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonPersonalDetails** *(reportReasonPersonalDetails)* - child of ReportReason
///
/// The chat contains messages with personal details.
final class ReportReasonPersonalDetails extends ReportReason {
  
  /// **ReportReasonPersonalDetails** *(reportReasonPersonalDetails)* - child of ReportReason
  ///
  /// The chat contains messages with personal details.
  const ReportReasonPersonalDetails();
  
  /// Parse from a json
  factory ReportReasonPersonalDetails.fromJson(Map<String, dynamic> json) => const ReportReasonPersonalDetails();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonPersonalDetails copyWith() => const ReportReasonPersonalDetails();

  /// TDLib object type
  static const String objectType = 'reportReasonPersonalDetails';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ReportReasonCustom** *(reportReasonCustom)* - child of ReportReason
///
/// A custom reason provided by the user.
final class ReportReasonCustom extends ReportReason {
  
  /// **ReportReasonCustom** *(reportReasonCustom)* - child of ReportReason
  ///
  /// A custom reason provided by the user.
  const ReportReasonCustom();
  
  /// Parse from a json
  factory ReportReasonCustom.fromJson(Map<String, dynamic> json) => const ReportReasonCustom();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ReportReasonCustom copyWith() => const ReportReasonCustom();

  /// TDLib object type
  static const String objectType = 'reportReasonCustom';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
