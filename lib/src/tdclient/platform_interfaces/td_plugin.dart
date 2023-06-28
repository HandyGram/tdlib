import 'package:handy_tdlib/src/tdclient/platform_interfaces/td_native_plugin.dart';
import 'dart:ffi' as ffi;

/// TDLib Library Instance.
abstract class TdPlugin {
  /// TdPlugin instance.
  static TdPlugin instance = TdNativePlugin(
    ffi.DynamicLibrary.open('libtdjsonandroid.so'),
  );

  /// constructor
  const TdPlugin();

  /// This method loads TDLib library.
  static Future<void> Function([String? libPath]) initialize = (
      [libPath]) async {}; // ignore: prefer_function_declarations_over_variables

  /// Creates a new instance of TDLib.
  /// Returns client id for the created instance of TDLib.
  int tdJsonClientCreate();

  /// Destroys the TDLib client instance by [clientId] identifier. After this is called the client instance must not be used anymore.
  void tdJsonClientDestroy(int clientId);

  /// Sends [event] to the TDLib client by [clientId] identifier. May be called from any thread.
  void tdJsonClientSend(int clientId, String event);

  /// Receives incoming updates and request responses from the TDLib client by [clientId] identifier and [timeout].
  /// May be called from any thread, but shouldn't be called simultaneously from two different threads.
  String? tdJsonClientReceive(int clientId, [double timeout = 8]);

  /// Synchronously executes TDLib [event]. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  String? tdJsonClientExecute(String event);
}
