# Handy TDLib

**This plugin is an updated fork of [i-Naji's TDLib plugin](https://github.com/i-Naji/tdlib) with Dart 3 features and new TDLib version**

## About plugin

This is a Flutter [plugin](https://pub.dev/packages/handy_tdlib) for [TDLib (Telegram Database Library)](https://github.com/tdlib) v1.8.14

This plugin is a complete TDLib's JSON interface binding package to help you create your own Telegram client.

## Installation
[Install](https://pub.dev/packages/handy_tdlib/versions/2.0.0/install) the plugin by running the following command from the project root:
```
flutter pub add tdlib
```

## Initialization
This plugin supports **only** Android tdlib-tdjson library.

To initialize tdlib plugin, call the `initialize` method on the `TdPlugin` class.

Since this is an asynchronous operation, the main function can be modified to ensure initialization is complete before running the application.

Import `tdlib` plugin:
```dart
import 'package:tdlib/tdlib.dart';
```
Next, within the `main` function, initialize `TdPlugin`:

```dart
void main() async {
  await TdPlugin.initialize();
  runApp(MyApp());
}
```

## Usage

[Official TDLib guide (a bit old)](https://core.telegram.org/tdlib/getting-started)

[Documentation for currently used by this plugin TDLib version](https://handygram.github.io/tdlib)
