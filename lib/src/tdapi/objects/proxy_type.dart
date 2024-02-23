part of '../tdapi.dart';

/// **ProxyType** *(proxyType)* - parent
///
/// Describes the type of a proxy server.
sealed class ProxyType extends TdObject {
  
  /// **ProxyType** *(proxyType)* - parent
  ///
  /// Describes the type of a proxy server.
  const ProxyType();
  
  /// a ProxyType return type can be :
  /// * [ProxyTypeSocks5]
  /// * [ProxyTypeHttp]
  /// * [ProxyTypeMtproto]
  factory ProxyType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ProxyTypeSocks5.defaultObjectId:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.defaultObjectId:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.defaultObjectId:
        return ProxyTypeMtproto.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ProxyType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ProxyType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'proxyType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **ProxyTypeSocks5** *(proxyTypeSocks5)* - child of ProxyType
///
/// A SOCKS5 proxy server.
///
/// * [username]: Username for logging in; may be empty.
/// * [password]: Password for logging in; may be empty.
final class ProxyTypeSocks5 extends ProxyType {
  
  /// **ProxyTypeSocks5** *(proxyTypeSocks5)* - child of ProxyType
  ///
  /// A SOCKS5 proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
  const ProxyTypeSocks5({
    required this.username,
    required this.password,
  });
  
  /// Username for logging in; may be empty 
  final String username;

  /// Password for logging in; may be empty
  final String password;
  
  /// Parse from a json
  factory ProxyTypeSocks5.fromJson(Map<String, dynamic> json) => ProxyTypeSocks5(
    username: json['username'],
    password: json['password'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "username": username,
      "password": password,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [username]: Username for logging in; may be empty 
  /// * [password]: Password for logging in; may be empty
  @override
  ProxyTypeSocks5 copyWith({
    String? username,
    String? password,
  }) => ProxyTypeSocks5(
    username: username ?? this.username,
    password: password ?? this.password,
  );

  /// TDLib object type
  static const String defaultObjectId = 'proxyTypeSocks5';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **ProxyTypeHttp** *(proxyTypeHttp)* - child of ProxyType
///
/// A HTTP transparent proxy server.
///
/// * [username]: Username for logging in; may be empty.
/// * [password]: Password for logging in; may be empty.
/// * [httpOnly]: Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method.
final class ProxyTypeHttp extends ProxyType {
  
  /// **ProxyTypeHttp** *(proxyTypeHttp)* - child of ProxyType
  ///
  /// A HTTP transparent proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
  /// * [httpOnly]: Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method.
  const ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });
  
  /// Username for logging in; may be empty 
  final String username;

  /// Password for logging in; may be empty 
  final String password;

  /// Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;
  
  /// Parse from a json
  factory ProxyTypeHttp.fromJson(Map<String, dynamic> json) => ProxyTypeHttp(
    username: json['username'],
    password: json['password'],
    httpOnly: json['http_only'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "username": username,
      "password": password,
      "http_only": httpOnly,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [username]: Username for logging in; may be empty 
  /// * [password]: Password for logging in; may be empty 
  /// * [http_only]: Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  @override
  ProxyTypeHttp copyWith({
    String? username,
    String? password,
    bool? httpOnly,
  }) => ProxyTypeHttp(
    username: username ?? this.username,
    password: password ?? this.password,
    httpOnly: httpOnly ?? this.httpOnly,
  );

  /// TDLib object type
  static const String defaultObjectId = 'proxyTypeHttp';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **ProxyTypeMtproto** *(proxyTypeMtproto)* - child of ProxyType
///
/// An MTProto proxy server.
///
/// * [secret]: The proxy's secret in hexadecimal encoding.
final class ProxyTypeMtproto extends ProxyType {
  
  /// **ProxyTypeMtproto** *(proxyTypeMtproto)* - child of ProxyType
  ///
  /// An MTProto proxy server.
  ///
  /// * [secret]: The proxy's secret in hexadecimal encoding.
  const ProxyTypeMtproto({
    required this.secret,
  });
  
  /// The proxy's secret in hexadecimal encoding
  final String secret;
  
  /// Parse from a json
  factory ProxyTypeMtproto.fromJson(Map<String, dynamic> json) => ProxyTypeMtproto(
    secret: json['secret'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "secret": secret,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [secret]: The proxy's secret in hexadecimal encoding
  @override
  ProxyTypeMtproto copyWith({
    String? secret,
  }) => ProxyTypeMtproto(
    secret: secret ?? this.secret,
  );

  /// TDLib object type
  static const String defaultObjectId = 'proxyTypeMtproto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
