part of '../tdapi.dart';

/// **GetProxyLink** *(getProxyLink)* - TDLib function
///
/// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
///
/// * [proxyId]: Proxy identifier.
///
/// [HttpUrl] is returned on completion.
final class GetProxyLink extends TdFunction {
  /// **GetProxyLink** *(getProxyLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [HttpUrl] is returned on completion.
  const GetProxyLink({
    required this.proxyId,
  });

  /// Proxy identifier
  final int proxyId;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [proxy_id]: Proxy identifier
  GetProxyLink copyWith({
    int? proxyId,
  }) =>
      GetProxyLink(
        proxyId: proxyId ?? this.proxyId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getProxyLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
