import 'package:ffi/ffi.dart';
import 'dart:ffi' as ffi;

/// TD Native Library Instance.
class TdPlugin {
  static Future initialize([String? libPath]) async {
    instance = TdPlugin(
      ffi.DynamicLibrary.open(libPath ?? 'libtdjson.so'),
    );
  }

  static late TdPlugin instance;

  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// TDLib methods are looked up in [dynamicLibrary].
  TdPlugin(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// TDLib methods are looked up with [lookup].
  TdPlugin.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  late final _TdCreateClientId _tdCreateClientId =
      _lookup<ffi.NativeFunction<_TdCreateClientIdPtr>>('td_create_client_id')
          .asFunction();
  late final _TdSend _tdSend =
      _lookup<ffi.NativeFunction<_TdSendPtr>>('td_send').asFunction();
  late final _TdReceive _tdReceive =
      _lookup<ffi.NativeFunction<_TdReceivePtr>>('td_receive').asFunction();
  late final _TdExecute _tdExecute =
      _lookup<ffi.NativeFunction<_TdExecutePtr>>('td_execute').asFunction();

  int tdCreateClientId() => _tdCreateClientId();

  void tdSend(int clientId, String request) {
    final req = request.toNativeUtf8();
    _tdSend(
      clientId,
      req,
    );
    malloc.free(req);
  }

  String? tdReceive([double timeout = 1]) {
    final res = _tdReceive(timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  String? tdExecute(String request) {
    final req = request.toNativeUtf8();
    final res = _tdExecute(req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }
}

typedef _TdCreateClientIdPtr = ffi.Int32 Function();
typedef _TdCreateClientId = int Function();
typedef _TdSendPtr = ffi.Void Function(
    ffi.Int32 client, ffi.Pointer<Utf8> request);
typedef _TdSend = void Function(int client, ffi.Pointer<Utf8> request);
typedef _TdReceivePtr = ffi.Pointer<Utf8> Function(ffi.Double timeout);
typedef _TdReceive = ffi.Pointer<Utf8> Function(double timeout);
typedef _TdExecutePtr = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
typedef _TdExecute = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
