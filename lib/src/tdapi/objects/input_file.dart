part of '../tdapi.dart';

/// **InputFile** *(inputFile)* - parent
///
/// Points to a file.
sealed class InputFile extends TdObject {
  
  /// **InputFile** *(inputFile)* - parent
  ///
  /// Points to a file.
  const InputFile();
  
  /// a InputFile return type can be :
  /// * [InputFileId]
  /// * [InputFileRemote]
  /// * [InputFileLocal]
  /// * [InputFileGenerated]
  factory InputFile.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputFileId.objectType:
        return InputFileId.fromJson(json);
      case InputFileRemote.objectType:
        return InputFileRemote.fromJson(json);
      case InputFileLocal.objectType:
        return InputFileLocal.fromJson(json);
      case InputFileGenerated.objectType:
        return InputFileGenerated.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputFile)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputFile copyWith();

  /// TDLib object type
  static const String objectType = 'inputFile';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputFileId** *(inputFileId)* - child of InputFile
///
/// A file defined by its unique identifier.
///
/// * [id]: Unique file identifier.
final class InputFileId extends InputFile {
  
  /// **InputFileId** *(inputFileId)* - child of InputFile
  ///
  /// A file defined by its unique identifier.
  ///
  /// * [id]: Unique file identifier.
  const InputFileId({
    required this.id,
  });
  
  /// Unique file identifier
  final int id;
  
  /// Parse from a json
  factory InputFileId.fromJson(Map<String, dynamic> json) => InputFileId(
    id: json['id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique file identifier
  @override
  InputFileId copyWith({
    int? id,
  }) => InputFileId(
    id: id ?? this.id,
  );

  /// TDLib object type
  static const String objectType = 'inputFileId';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputFileRemote** *(inputFileRemote)* - child of InputFile
///
/// A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application.
///
/// * [id]: Remote file identifier.
final class InputFileRemote extends InputFile {
  
  /// **InputFileRemote** *(inputFileRemote)* - child of InputFile
  ///
  /// A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application.
  ///
  /// * [id]: Remote file identifier.
  const InputFileRemote({
    required this.id,
  });
  
  /// Remote file identifier
  final String id;
  
  /// Parse from a json
  factory InputFileRemote.fromJson(Map<String, dynamic> json) => InputFileRemote(
    id: json['id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Remote file identifier
  @override
  InputFileRemote copyWith({
    String? id,
  }) => InputFileRemote(
    id: id ?? this.id,
  );

  /// TDLib object type
  static const String objectType = 'inputFileRemote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputFileLocal** *(inputFileLocal)* - child of InputFile
///
/// A file defined by a local path.
///
/// * [path]: Local path to the file.
final class InputFileLocal extends InputFile {
  
  /// **InputFileLocal** *(inputFileLocal)* - child of InputFile
  ///
  /// A file defined by a local path.
  ///
  /// * [path]: Local path to the file.
  const InputFileLocal({
    required this.path,
  });
  
  /// Local path to the file
  final String path;
  
  /// Parse from a json
  factory InputFileLocal.fromJson(Map<String, dynamic> json) => InputFileLocal(
    path: json['path'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "path": path,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [path]: Local path to the file
  @override
  InputFileLocal copyWith({
    String? path,
  }) => InputFileLocal(
    path: path ?? this.path,
  );

  /// TDLib object type
  static const String objectType = 'inputFileLocal';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputFileGenerated** *(inputFileGenerated)* - child of InputFile
///
/// A file generated by the application.
///
/// * [originalPath]: Local path to a file from which the file is generated; may be empty if there is no such file.
/// * [conversion]: String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage.
/// * [expectedSize]: Expected size of the generated file, in bytes; 0 if unknown.
final class InputFileGenerated extends InputFile {
  
  /// **InputFileGenerated** *(inputFileGenerated)* - child of InputFile
  ///
  /// A file generated by the application.
  ///
  /// * [originalPath]: Local path to a file from which the file is generated; may be empty if there is no such file.
  /// * [conversion]: String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage.
  /// * [expectedSize]: Expected size of the generated file, in bytes; 0 if unknown.
  const InputFileGenerated({
    required this.originalPath,
    required this.conversion,
    required this.expectedSize,
  });
  
  /// Local path to a file from which the file is generated; may be empty if there is no such file
  final String originalPath;

  /// String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
  final String conversion;

  /// Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;
  
  /// Parse from a json
  factory InputFileGenerated.fromJson(Map<String, dynamic> json) => InputFileGenerated(
    originalPath: json['original_path'],
    conversion: json['conversion'],
    expectedSize: json['expected_size'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "original_path": originalPath,
      "conversion": conversion,
      "expected_size": expectedSize,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [original_path]: Local path to a file from which the file is generated; may be empty if there is no such file
  /// * [conversion]: String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
  /// * [expected_size]: Expected size of the generated file, in bytes; 0 if unknown
  @override
  InputFileGenerated copyWith({
    String? originalPath,
    String? conversion,
    int? expectedSize,
  }) => InputFileGenerated(
    originalPath: originalPath ?? this.originalPath,
    conversion: conversion ?? this.conversion,
    expectedSize: expectedSize ?? this.expectedSize,
  );

  /// TDLib object type
  static const String objectType = 'inputFileGenerated';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
