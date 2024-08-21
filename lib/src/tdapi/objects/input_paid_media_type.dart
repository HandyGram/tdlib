part of '../tdapi.dart';

/// **InputPaidMediaType** *(inputPaidMediaType)* - parent
///
/// Describes type of paid media to sent.
sealed class InputPaidMediaType extends TdObject {
  /// **InputPaidMediaType** *(inputPaidMediaType)* - parent
  ///
  /// Describes type of paid media to sent.
  const InputPaidMediaType();

  /// a InputPaidMediaType return type can be :
  /// * [InputPaidMediaTypePhoto]
  /// * [InputPaidMediaTypeVideo]
  factory InputPaidMediaType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputPaidMediaTypePhoto.defaultObjectId:
        return InputPaidMediaTypePhoto.fromJson(json);
      case InputPaidMediaTypeVideo.defaultObjectId:
        return InputPaidMediaTypeVideo.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputPaidMediaType)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputPaidMediaType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'inputPaidMediaType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputPaidMediaTypePhoto** *(inputPaidMediaTypePhoto)* - child of InputPaidMediaType
///
/// The media is a photo. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
final class InputPaidMediaTypePhoto extends InputPaidMediaType {
  /// **InputPaidMediaTypePhoto** *(inputPaidMediaTypePhoto)* - child of InputPaidMediaType
  ///
  /// The media is a photo. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
  const InputPaidMediaTypePhoto();

  /// Parse from a json
  factory InputPaidMediaTypePhoto.fromJson(Map<String, dynamic> json) =>
      const InputPaidMediaTypePhoto();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  InputPaidMediaTypePhoto copyWith() => const InputPaidMediaTypePhoto();

  /// TDLib object type
  static const String defaultObjectId = 'inputPaidMediaTypePhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **InputPaidMediaTypeVideo** *(inputPaidMediaTypeVideo)* - child of InputPaidMediaType
///
/// The media is a video.
///
/// * [duration]: Duration of the video, in seconds.
/// * [supportsStreaming]: True, if the video is supposed to be streamed.
final class InputPaidMediaTypeVideo extends InputPaidMediaType {
  /// **InputPaidMediaTypeVideo** *(inputPaidMediaTypeVideo)* - child of InputPaidMediaType
  ///
  /// The media is a video.
  ///
  /// * [duration]: Duration of the video, in seconds.
  /// * [supportsStreaming]: True, if the video is supposed to be streamed.
  const InputPaidMediaTypeVideo({
    required this.duration,
    required this.supportsStreaming,
  });

  /// Duration of the video, in seconds
  final int duration;

  /// True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// Parse from a json
  factory InputPaidMediaTypeVideo.fromJson(Map<String, dynamic> json) =>
      InputPaidMediaTypeVideo(
        duration: json['duration'],
        supportsStreaming: json['supports_streaming'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "duration": duration,
      "supports_streaming": supportsStreaming,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [duration]: Duration of the video, in seconds
  /// * [supports_streaming]: True, if the video is supposed to be streamed
  @override
  InputPaidMediaTypeVideo copyWith({
    int? duration,
    bool? supportsStreaming,
  }) =>
      InputPaidMediaTypeVideo(
        duration: duration ?? this.duration,
        supportsStreaming: supportsStreaming ?? this.supportsStreaming,
      );

  /// TDLib object type
  static const String defaultObjectId = 'inputPaidMediaTypeVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
