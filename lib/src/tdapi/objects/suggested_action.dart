part of '../tdapi.dart';

/// **SuggestedAction** *(suggestedAction)* - parent
///
/// Describes an action suggested to the current user.
sealed class SuggestedAction extends TdObject {
  
  /// **SuggestedAction** *(suggestedAction)* - parent
  ///
  /// Describes an action suggested to the current user.
  const SuggestedAction();
  
  /// a SuggestedAction return type can be :
  /// * [SuggestedActionEnableArchiveAndMuteNewChats]
  /// * [SuggestedActionCheckPassword]
  /// * [SuggestedActionCheckPhoneNumber]
  /// * [SuggestedActionViewChecksHint]
  /// * [SuggestedActionConvertToBroadcastGroup]
  /// * [SuggestedActionSetPassword]
  /// * [SuggestedActionUpgradePremium]
  /// * [SuggestedActionRestorePremium]
  /// * [SuggestedActionSubscribeToAnnualPremium]
  factory SuggestedAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.objectType:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.objectType:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.objectType:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.objectType:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.objectType:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.objectType:
        return SuggestedActionSetPassword.fromJson(json);
      case SuggestedActionUpgradePremium.objectType:
        return SuggestedActionUpgradePremium.fromJson(json);
      case SuggestedActionRestorePremium.objectType:
        return SuggestedActionRestorePremium.fromJson(json);
      case SuggestedActionSubscribeToAnnualPremium.objectType:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SuggestedAction)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  SuggestedAction copyWith();

  /// TDLib object type
  static const String objectType = 'suggestedAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionEnableArchiveAndMuteNewChats** *(suggestedActionEnableArchiveAndMuteNewChats)* - child of SuggestedAction
///
/// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings.
final class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  
  /// **SuggestedActionEnableArchiveAndMuteNewChats** *(suggestedActionEnableArchiveAndMuteNewChats)* - child of SuggestedAction
  ///
  /// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings.
  const SuggestedActionEnableArchiveAndMuteNewChats();
  
  /// Parse from a json
  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json) => const SuggestedActionEnableArchiveAndMuteNewChats();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionEnableArchiveAndMuteNewChats copyWith() => const SuggestedActionEnableArchiveAndMuteNewChats();

  /// TDLib object type
  static const String objectType = 'suggestedActionEnableArchiveAndMuteNewChats';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionCheckPassword** *(suggestedActionCheckPassword)* - child of SuggestedAction
///
/// Suggests the user to check whether they still remember their 2-step verification password.
final class SuggestedActionCheckPassword extends SuggestedAction {
  
  /// **SuggestedActionCheckPassword** *(suggestedActionCheckPassword)* - child of SuggestedAction
  ///
  /// Suggests the user to check whether they still remember their 2-step verification password.
  const SuggestedActionCheckPassword();
  
  /// Parse from a json
  factory SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPassword();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionCheckPassword copyWith() => const SuggestedActionCheckPassword();

  /// TDLib object type
  static const String objectType = 'suggestedActionCheckPassword';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionCheckPhoneNumber** *(suggestedActionCheckPhoneNumber)* - child of SuggestedAction
///
/// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.
final class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  
  /// **SuggestedActionCheckPhoneNumber** *(suggestedActionCheckPhoneNumber)* - child of SuggestedAction
  ///
  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.
  const SuggestedActionCheckPhoneNumber();
  
  /// Parse from a json
  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPhoneNumber();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionCheckPhoneNumber copyWith() => const SuggestedActionCheckPhoneNumber();

  /// TDLib object type
  static const String objectType = 'suggestedActionCheckPhoneNumber';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionViewChecksHint** *(suggestedActionViewChecksHint)* - child of SuggestedAction
///
/// Suggests the user to view a hint about the meaning of one and two check marks on sent messages.
final class SuggestedActionViewChecksHint extends SuggestedAction {
  
  /// **SuggestedActionViewChecksHint** *(suggestedActionViewChecksHint)* - child of SuggestedAction
  ///
  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages.
  const SuggestedActionViewChecksHint();
  
  /// Parse from a json
  factory SuggestedActionViewChecksHint.fromJson(Map<String, dynamic> json) => const SuggestedActionViewChecksHint();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionViewChecksHint copyWith() => const SuggestedActionViewChecksHint();

  /// TDLib object type
  static const String objectType = 'suggestedActionViewChecksHint';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionConvertToBroadcastGroup** *(suggestedActionConvertToBroadcastGroup)* - child of SuggestedAction
///
/// Suggests the user to convert specified supergroup to a broadcast group.
///
/// * [supergroupId]: Supergroup identifier.
final class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  
  /// **SuggestedActionConvertToBroadcastGroup** *(suggestedActionConvertToBroadcastGroup)* - child of SuggestedAction
  ///
  /// Suggests the user to convert specified supergroup to a broadcast group.
  ///
  /// * [supergroupId]: Supergroup identifier.
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });
  
  /// Supergroup identifier
  final int supergroupId;
  
  /// Parse from a json
  factory SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [supergroup_id]: Supergroup identifier
  @override
  SuggestedActionConvertToBroadcastGroup copyWith({
    int? supergroupId,
  }) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  /// TDLib object type
  static const String objectType = 'suggestedActionConvertToBroadcastGroup';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionSetPassword** *(suggestedActionSetPassword)* - child of SuggestedAction
///
/// Suggests the user to set a 2-step verification password to be able to log in again.
///
/// * [authorizationDelay]: The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons.
final class SuggestedActionSetPassword extends SuggestedAction {
  
  /// **SuggestedActionSetPassword** *(suggestedActionSetPassword)* - child of SuggestedAction
  ///
  /// Suggests the user to set a 2-step verification password to be able to log in again.
  ///
  /// * [authorizationDelay]: The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons.
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });
  
  /// The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons
  final int authorizationDelay;
  
  /// Parse from a json
  factory SuggestedActionSetPassword.fromJson(Map<String, dynamic> json) => SuggestedActionSetPassword(
    authorizationDelay: json['authorization_delay'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "authorization_delay": authorizationDelay,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [authorization_delay]: The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons
  @override
  SuggestedActionSetPassword copyWith({
    int? authorizationDelay,
  }) => SuggestedActionSetPassword(
    authorizationDelay: authorizationDelay ?? this.authorizationDelay,
  );

  /// TDLib object type
  static const String objectType = 'suggestedActionSetPassword';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionUpgradePremium** *(suggestedActionUpgradePremium)* - child of SuggestedAction
///
/// Suggests the user to upgrade the Premium subscription from monthly payments to annual payments.
final class SuggestedActionUpgradePremium extends SuggestedAction {
  
  /// **SuggestedActionUpgradePremium** *(suggestedActionUpgradePremium)* - child of SuggestedAction
  ///
  /// Suggests the user to upgrade the Premium subscription from monthly payments to annual payments.
  const SuggestedActionUpgradePremium();
  
  /// Parse from a json
  factory SuggestedActionUpgradePremium.fromJson(Map<String, dynamic> json) => const SuggestedActionUpgradePremium();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionUpgradePremium copyWith() => const SuggestedActionUpgradePremium();

  /// TDLib object type
  static const String objectType = 'suggestedActionUpgradePremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionRestorePremium** *(suggestedActionRestorePremium)* - child of SuggestedAction
///
/// Suggests the user to restore a recently expired Premium subscription.
final class SuggestedActionRestorePremium extends SuggestedAction {
  
  /// **SuggestedActionRestorePremium** *(suggestedActionRestorePremium)* - child of SuggestedAction
  ///
  /// Suggests the user to restore a recently expired Premium subscription.
  const SuggestedActionRestorePremium();
  
  /// Parse from a json
  factory SuggestedActionRestorePremium.fromJson(Map<String, dynamic> json) => const SuggestedActionRestorePremium();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionRestorePremium copyWith() => const SuggestedActionRestorePremium();

  /// TDLib object type
  static const String objectType = 'suggestedActionRestorePremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SuggestedActionSubscribeToAnnualPremium** *(suggestedActionSubscribeToAnnualPremium)* - child of SuggestedAction
///
/// Suggests the user to subscribe to the Premium subscription with annual payments.
final class SuggestedActionSubscribeToAnnualPremium extends SuggestedAction {
  
  /// **SuggestedActionSubscribeToAnnualPremium** *(suggestedActionSubscribeToAnnualPremium)* - child of SuggestedAction
  ///
  /// Suggests the user to subscribe to the Premium subscription with annual payments.
  const SuggestedActionSubscribeToAnnualPremium();
  
  /// Parse from a json
  factory SuggestedActionSubscribeToAnnualPremium.fromJson(Map<String, dynamic> json) => const SuggestedActionSubscribeToAnnualPremium();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SuggestedActionSubscribeToAnnualPremium copyWith() => const SuggestedActionSubscribeToAnnualPremium();

  /// TDLib object type
  static const String objectType = 'suggestedActionSubscribeToAnnualPremium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
