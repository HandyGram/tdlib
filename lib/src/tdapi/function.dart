part of 'tdapi.dart';

sealed class TdFunction {
  /// object type
  String get instanceType => "function";

  const TdFunction();
  Map<String, dynamic> toJson([dynamic extra]);
}
