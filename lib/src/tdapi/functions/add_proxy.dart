part of '../tdapi.dart';

/// **AddProxy** *(addProxy)* - TDLib function
///
/// Adds a proxy server for network requests. Can be called before authorization.
///
/// * [server]: Proxy server domain or IP address.
/// * [port]: Proxy server port.
/// * [enable]: Pass true to immediately enable the proxy.
/// * [type]: Proxy type.
///
/// [Proxy] is returned on completion.
final class AddProxy extends TdFunction {
  /// **AddProxy** *(addProxy)* - TDLib function
  ///
  /// Adds a proxy server for network requests. Can be called before authorization.
  ///
  /// * [server]: Proxy server domain or IP address.
  /// * [port]: Proxy server port.
  /// * [enable]: Pass true to immediately enable the proxy.
  /// * [type]: Proxy type.
  ///
  /// [Proxy] is returned on completion.
  const AddProxy({
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });

  /// Proxy server domain or IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Pass true to immediately enable the proxy
  final bool enable;

  /// Proxy type
  final ProxyType type;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "server": server,
      "port": port,
      "enable": enable,
      "type": type.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [server]: Proxy server domain or IP address
  /// * [port]: Proxy server port
  /// * [enable]: Pass true to immediately enable the proxy
  /// * [type]: Proxy type
  AddProxy copyWith({
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) =>
      AddProxy(
        server: server ?? this.server,
        port: port ?? this.port,
        enable: enable ?? this.enable,
        type: type ?? this.type,
      );

  /// TDLib object type
  static const String defaultObjectId = 'addProxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
