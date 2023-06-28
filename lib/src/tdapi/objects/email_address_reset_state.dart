part of '../tdapi.dart';

/// **EmailAddressResetState** *(emailAddressResetState)* - parent
///
/// Describes reset state of a email address.
sealed class EmailAddressResetState extends TdObject {
  
  /// **EmailAddressResetState** *(emailAddressResetState)* - parent
  ///
  /// Describes reset state of a email address.
  const EmailAddressResetState();
  
  /// a EmailAddressResetState return type can be :
  /// * [EmailAddressResetStateAvailable]
  /// * [EmailAddressResetStatePending]
  factory EmailAddressResetState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmailAddressResetStateAvailable.objectType:
        return EmailAddressResetStateAvailable.fromJson(json);
      case EmailAddressResetStatePending.objectType:
        return EmailAddressResetStatePending.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of EmailAddressResetState)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  EmailAddressResetState copyWith();

  static const String objectType = 'emailAddressResetState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **EmailAddressResetStateAvailable** *(emailAddressResetStateAvailable)* - child of EmailAddressResetState
///
/// Email address can be reset after the given period. Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's phone number.
///
/// * [waitPeriod]: Time required to wait before the email address can be reset; 0 if the user is subscribed to Telegram Premium.
final class EmailAddressResetStateAvailable extends EmailAddressResetState {
  
  /// **EmailAddressResetStateAvailable** *(emailAddressResetStateAvailable)* - child of EmailAddressResetState
  ///
  /// Email address can be reset after the given period. Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's phone number.
  ///
  /// * [waitPeriod]: Time required to wait before the email address can be reset; 0 if the user is subscribed to Telegram Premium.
  const EmailAddressResetStateAvailable({
    required this.waitPeriod,
  });
  
  /// Time required to wait before the email address can be reset; 0 if the user is subscribed to Telegram Premium
  final int waitPeriod;
  
  /// Parse from a json
  factory EmailAddressResetStateAvailable.fromJson(Map<String, dynamic> json) => EmailAddressResetStateAvailable(
    waitPeriod: json['wait_period'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "wait_period": waitPeriod,
		};
	}

  
  @override
  EmailAddressResetStateAvailable copyWith({
    int? waitPeriod,
  }) => EmailAddressResetStateAvailable(
    waitPeriod: waitPeriod ?? this.waitPeriod,
  );

  static const String objectType = 'emailAddressResetStateAvailable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **EmailAddressResetStatePending** *(emailAddressResetStatePending)* - child of EmailAddressResetState
///
/// Email address reset has already been requested. Call resetAuthenticationEmailAddress to check whether immediate reset is possible.
///
/// * [resetIn]: Left time before the email address will be reset, in seconds. updateAuthorizationState is not sent when this field changes.
final class EmailAddressResetStatePending extends EmailAddressResetState {
  
  /// **EmailAddressResetStatePending** *(emailAddressResetStatePending)* - child of EmailAddressResetState
  ///
  /// Email address reset has already been requested. Call resetAuthenticationEmailAddress to check whether immediate reset is possible.
  ///
  /// * [resetIn]: Left time before the email address will be reset, in seconds. updateAuthorizationState is not sent when this field changes.
  const EmailAddressResetStatePending({
    required this.resetIn,
  });
  
  /// Left time before the email address will be reset, in seconds. updateAuthorizationState is not sent when this field changes
  final int resetIn;
  
  /// Parse from a json
  factory EmailAddressResetStatePending.fromJson(Map<String, dynamic> json) => EmailAddressResetStatePending(
    resetIn: json['reset_in'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reset_in": resetIn,
		};
	}

  
  @override
  EmailAddressResetStatePending copyWith({
    int? resetIn,
  }) => EmailAddressResetStatePending(
    resetIn: resetIn ?? this.resetIn,
  );

  static const String objectType = 'emailAddressResetStatePending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
