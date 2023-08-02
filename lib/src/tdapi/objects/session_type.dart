part of '../tdapi.dart';

/// **SessionType** *(sessionType)* - parent
///
/// Represents the type of a session.
sealed class SessionType extends TdObject {
  
  /// **SessionType** *(sessionType)* - parent
  ///
  /// Represents the type of a session.
  const SessionType();
  
  /// a SessionType return type can be :
  /// * [SessionTypeAndroid]
  /// * [SessionTypeApple]
  /// * [SessionTypeBrave]
  /// * [SessionTypeChrome]
  /// * [SessionTypeEdge]
  /// * [SessionTypeFirefox]
  /// * [SessionTypeIpad]
  /// * [SessionTypeIphone]
  /// * [SessionTypeLinux]
  /// * [SessionTypeMac]
  /// * [SessionTypeOpera]
  /// * [SessionTypeSafari]
  /// * [SessionTypeUbuntu]
  /// * [SessionTypeUnknown]
  /// * [SessionTypeVivaldi]
  /// * [SessionTypeWindows]
  /// * [SessionTypeXbox]
  factory SessionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SessionTypeAndroid.objectType:
        return SessionTypeAndroid.fromJson(json);
      case SessionTypeApple.objectType:
        return SessionTypeApple.fromJson(json);
      case SessionTypeBrave.objectType:
        return SessionTypeBrave.fromJson(json);
      case SessionTypeChrome.objectType:
        return SessionTypeChrome.fromJson(json);
      case SessionTypeEdge.objectType:
        return SessionTypeEdge.fromJson(json);
      case SessionTypeFirefox.objectType:
        return SessionTypeFirefox.fromJson(json);
      case SessionTypeIpad.objectType:
        return SessionTypeIpad.fromJson(json);
      case SessionTypeIphone.objectType:
        return SessionTypeIphone.fromJson(json);
      case SessionTypeLinux.objectType:
        return SessionTypeLinux.fromJson(json);
      case SessionTypeMac.objectType:
        return SessionTypeMac.fromJson(json);
      case SessionTypeOpera.objectType:
        return SessionTypeOpera.fromJson(json);
      case SessionTypeSafari.objectType:
        return SessionTypeSafari.fromJson(json);
      case SessionTypeUbuntu.objectType:
        return SessionTypeUbuntu.fromJson(json);
      case SessionTypeUnknown.objectType:
        return SessionTypeUnknown.fromJson(json);
      case SessionTypeVivaldi.objectType:
        return SessionTypeVivaldi.fromJson(json);
      case SessionTypeWindows.objectType:
        return SessionTypeWindows.fromJson(json);
      case SessionTypeXbox.objectType:
        return SessionTypeXbox.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SessionType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  SessionType copyWith();

  /// TDLib object type
  static const String objectType = 'sessionType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeAndroid** *(sessionTypeAndroid)* - child of SessionType
///
/// The session is running on an Android device.
final class SessionTypeAndroid extends SessionType {
  
  /// **SessionTypeAndroid** *(sessionTypeAndroid)* - child of SessionType
  ///
  /// The session is running on an Android device.
  const SessionTypeAndroid();
  
  /// Parse from a json
  factory SessionTypeAndroid.fromJson(Map<String, dynamic> json) => const SessionTypeAndroid();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeAndroid copyWith() => const SessionTypeAndroid();

  /// TDLib object type
  static const String objectType = 'sessionTypeAndroid';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeApple** *(sessionTypeApple)* - child of SessionType
///
/// The session is running on a generic Apple device.
final class SessionTypeApple extends SessionType {
  
  /// **SessionTypeApple** *(sessionTypeApple)* - child of SessionType
  ///
  /// The session is running on a generic Apple device.
  const SessionTypeApple();
  
  /// Parse from a json
  factory SessionTypeApple.fromJson(Map<String, dynamic> json) => const SessionTypeApple();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeApple copyWith() => const SessionTypeApple();

  /// TDLib object type
  static const String objectType = 'sessionTypeApple';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeBrave** *(sessionTypeBrave)* - child of SessionType
///
/// The session is running on the Brave browser.
final class SessionTypeBrave extends SessionType {
  
  /// **SessionTypeBrave** *(sessionTypeBrave)* - child of SessionType
  ///
  /// The session is running on the Brave browser.
  const SessionTypeBrave();
  
  /// Parse from a json
  factory SessionTypeBrave.fromJson(Map<String, dynamic> json) => const SessionTypeBrave();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeBrave copyWith() => const SessionTypeBrave();

  /// TDLib object type
  static const String objectType = 'sessionTypeBrave';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeChrome** *(sessionTypeChrome)* - child of SessionType
///
/// The session is running on the Chrome browser.
final class SessionTypeChrome extends SessionType {
  
  /// **SessionTypeChrome** *(sessionTypeChrome)* - child of SessionType
  ///
  /// The session is running on the Chrome browser.
  const SessionTypeChrome();
  
  /// Parse from a json
  factory SessionTypeChrome.fromJson(Map<String, dynamic> json) => const SessionTypeChrome();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeChrome copyWith() => const SessionTypeChrome();

  /// TDLib object type
  static const String objectType = 'sessionTypeChrome';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeEdge** *(sessionTypeEdge)* - child of SessionType
///
/// The session is running on the Edge browser.
final class SessionTypeEdge extends SessionType {
  
  /// **SessionTypeEdge** *(sessionTypeEdge)* - child of SessionType
  ///
  /// The session is running on the Edge browser.
  const SessionTypeEdge();
  
  /// Parse from a json
  factory SessionTypeEdge.fromJson(Map<String, dynamic> json) => const SessionTypeEdge();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeEdge copyWith() => const SessionTypeEdge();

  /// TDLib object type
  static const String objectType = 'sessionTypeEdge';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeFirefox** *(sessionTypeFirefox)* - child of SessionType
///
/// The session is running on the Firefox browser.
final class SessionTypeFirefox extends SessionType {
  
  /// **SessionTypeFirefox** *(sessionTypeFirefox)* - child of SessionType
  ///
  /// The session is running on the Firefox browser.
  const SessionTypeFirefox();
  
  /// Parse from a json
  factory SessionTypeFirefox.fromJson(Map<String, dynamic> json) => const SessionTypeFirefox();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeFirefox copyWith() => const SessionTypeFirefox();

  /// TDLib object type
  static const String objectType = 'sessionTypeFirefox';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeIpad** *(sessionTypeIpad)* - child of SessionType
///
/// The session is running on an iPad device.
final class SessionTypeIpad extends SessionType {
  
  /// **SessionTypeIpad** *(sessionTypeIpad)* - child of SessionType
  ///
  /// The session is running on an iPad device.
  const SessionTypeIpad();
  
  /// Parse from a json
  factory SessionTypeIpad.fromJson(Map<String, dynamic> json) => const SessionTypeIpad();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeIpad copyWith() => const SessionTypeIpad();

  /// TDLib object type
  static const String objectType = 'sessionTypeIpad';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeIphone** *(sessionTypeIphone)* - child of SessionType
///
/// The session is running on an iPhone device.
final class SessionTypeIphone extends SessionType {
  
  /// **SessionTypeIphone** *(sessionTypeIphone)* - child of SessionType
  ///
  /// The session is running on an iPhone device.
  const SessionTypeIphone();
  
  /// Parse from a json
  factory SessionTypeIphone.fromJson(Map<String, dynamic> json) => const SessionTypeIphone();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeIphone copyWith() => const SessionTypeIphone();

  /// TDLib object type
  static const String objectType = 'sessionTypeIphone';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeLinux** *(sessionTypeLinux)* - child of SessionType
///
/// The session is running on a Linux device.
final class SessionTypeLinux extends SessionType {
  
  /// **SessionTypeLinux** *(sessionTypeLinux)* - child of SessionType
  ///
  /// The session is running on a Linux device.
  const SessionTypeLinux();
  
  /// Parse from a json
  factory SessionTypeLinux.fromJson(Map<String, dynamic> json) => const SessionTypeLinux();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeLinux copyWith() => const SessionTypeLinux();

  /// TDLib object type
  static const String objectType = 'sessionTypeLinux';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeMac** *(sessionTypeMac)* - child of SessionType
///
/// The session is running on a Mac device.
final class SessionTypeMac extends SessionType {
  
  /// **SessionTypeMac** *(sessionTypeMac)* - child of SessionType
  ///
  /// The session is running on a Mac device.
  const SessionTypeMac();
  
  /// Parse from a json
  factory SessionTypeMac.fromJson(Map<String, dynamic> json) => const SessionTypeMac();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeMac copyWith() => const SessionTypeMac();

  /// TDLib object type
  static const String objectType = 'sessionTypeMac';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeOpera** *(sessionTypeOpera)* - child of SessionType
///
/// The session is running on the Opera browser.
final class SessionTypeOpera extends SessionType {
  
  /// **SessionTypeOpera** *(sessionTypeOpera)* - child of SessionType
  ///
  /// The session is running on the Opera browser.
  const SessionTypeOpera();
  
  /// Parse from a json
  factory SessionTypeOpera.fromJson(Map<String, dynamic> json) => const SessionTypeOpera();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeOpera copyWith() => const SessionTypeOpera();

  /// TDLib object type
  static const String objectType = 'sessionTypeOpera';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeSafari** *(sessionTypeSafari)* - child of SessionType
///
/// The session is running on the Safari browser.
final class SessionTypeSafari extends SessionType {
  
  /// **SessionTypeSafari** *(sessionTypeSafari)* - child of SessionType
  ///
  /// The session is running on the Safari browser.
  const SessionTypeSafari();
  
  /// Parse from a json
  factory SessionTypeSafari.fromJson(Map<String, dynamic> json) => const SessionTypeSafari();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeSafari copyWith() => const SessionTypeSafari();

  /// TDLib object type
  static const String objectType = 'sessionTypeSafari';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeUbuntu** *(sessionTypeUbuntu)* - child of SessionType
///
/// The session is running on an Ubuntu device.
final class SessionTypeUbuntu extends SessionType {
  
  /// **SessionTypeUbuntu** *(sessionTypeUbuntu)* - child of SessionType
  ///
  /// The session is running on an Ubuntu device.
  const SessionTypeUbuntu();
  
  /// Parse from a json
  factory SessionTypeUbuntu.fromJson(Map<String, dynamic> json) => const SessionTypeUbuntu();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeUbuntu copyWith() => const SessionTypeUbuntu();

  /// TDLib object type
  static const String objectType = 'sessionTypeUbuntu';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeUnknown** *(sessionTypeUnknown)* - child of SessionType
///
/// The session is running on an unknown type of device.
final class SessionTypeUnknown extends SessionType {
  
  /// **SessionTypeUnknown** *(sessionTypeUnknown)* - child of SessionType
  ///
  /// The session is running on an unknown type of device.
  const SessionTypeUnknown();
  
  /// Parse from a json
  factory SessionTypeUnknown.fromJson(Map<String, dynamic> json) => const SessionTypeUnknown();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeUnknown copyWith() => const SessionTypeUnknown();

  /// TDLib object type
  static const String objectType = 'sessionTypeUnknown';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeVivaldi** *(sessionTypeVivaldi)* - child of SessionType
///
/// The session is running on the Vivaldi browser.
final class SessionTypeVivaldi extends SessionType {
  
  /// **SessionTypeVivaldi** *(sessionTypeVivaldi)* - child of SessionType
  ///
  /// The session is running on the Vivaldi browser.
  const SessionTypeVivaldi();
  
  /// Parse from a json
  factory SessionTypeVivaldi.fromJson(Map<String, dynamic> json) => const SessionTypeVivaldi();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeVivaldi copyWith() => const SessionTypeVivaldi();

  /// TDLib object type
  static const String objectType = 'sessionTypeVivaldi';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeWindows** *(sessionTypeWindows)* - child of SessionType
///
/// The session is running on a Windows device.
final class SessionTypeWindows extends SessionType {
  
  /// **SessionTypeWindows** *(sessionTypeWindows)* - child of SessionType
  ///
  /// The session is running on a Windows device.
  const SessionTypeWindows();
  
  /// Parse from a json
  factory SessionTypeWindows.fromJson(Map<String, dynamic> json) => const SessionTypeWindows();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeWindows copyWith() => const SessionTypeWindows();

  /// TDLib object type
  static const String objectType = 'sessionTypeWindows';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **SessionTypeXbox** *(sessionTypeXbox)* - child of SessionType
///
/// The session is running on an Xbox console.
final class SessionTypeXbox extends SessionType {
  
  /// **SessionTypeXbox** *(sessionTypeXbox)* - child of SessionType
  ///
  /// The session is running on an Xbox console.
  const SessionTypeXbox();
  
  /// Parse from a json
  factory SessionTypeXbox.fromJson(Map<String, dynamic> json) => const SessionTypeXbox();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  SessionTypeXbox copyWith() => const SessionTypeXbox();

  /// TDLib object type
  static const String objectType = 'sessionTypeXbox';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
