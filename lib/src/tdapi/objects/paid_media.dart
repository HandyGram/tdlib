part of '../tdapi.dart';

/// **PaidMedia** *(paidMedia)* - parent
///
/// Describes a paid media.
sealed class PaidMedia extends TdObject {
  /// **PaidMedia** *(paidMedia)* - parent
  ///
  /// Describes a paid media.
  const PaidMedia();

  /// a PaidMedia return type can be :
  /// * [PaidMediaPreview]
  /// * [PaidMediaPhoto]
  /// * [PaidMediaVideo]
  /// * [PaidMediaUnsupported]
  factory PaidMedia.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PaidMediaPreview.defaultObjectId:
        return PaidMediaPreview.fromJson(json);
      case PaidMediaPhoto.defaultObjectId:
        return PaidMediaPhoto.fromJson(json);
      case PaidMediaVideo.defaultObjectId:
        return PaidMediaVideo.fromJson(json);
      case PaidMediaUnsupported.defaultObjectId:
        return PaidMediaUnsupported.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PaidMedia)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PaidMedia copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'paidMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PaidMediaPreview** *(paidMediaPreview)* - child of PaidMedia
///
/// The media is hidden until the invoice is paid.
///
/// * [width]: Media width; 0 if unknown.
/// * [height]: Media height; 0 if unknown.
/// * [duration]: Media duration, in seconds; 0 if unknown.
/// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
final class PaidMediaPreview extends PaidMedia {
  /// **PaidMediaPreview** *(paidMediaPreview)* - child of PaidMedia
  ///
  /// The media is hidden until the invoice is paid.
  ///
  /// * [width]: Media width; 0 if unknown.
  /// * [height]: Media height; 0 if unknown.
  /// * [duration]: Media duration, in seconds; 0 if unknown.
  /// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
  const PaidMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
  });

  /// Media width; 0 if unknown
  final int width;

  /// Media height; 0 if unknown
  final int height;

  /// Media duration, in seconds; 0 if unknown
  final int duration;

  /// Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// Parse from a json
  factory PaidMediaPreview.fromJson(Map<String, dynamic> json) =>
      PaidMediaPreview(
        width: json['width'],
        height: json['height'],
        duration: json['duration'],
        minithumbnail: json['minithumbnail'] == null
            ? null
            : Minithumbnail.fromJson(json['minithumbnail']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "width": width,
      "height": height,
      "duration": duration,
      "minithumbnail": minithumbnail?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [width]: Media width; 0 if unknown
  /// * [height]: Media height; 0 if unknown
  /// * [duration]: Media duration, in seconds; 0 if unknown
  /// * [minithumbnail]: Media minithumbnail; may be null
  @override
  PaidMediaPreview copyWith({
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
  }) =>
      PaidMediaPreview(
        width: width ?? this.width,
        height: height ?? this.height,
        duration: duration ?? this.duration,
        minithumbnail: minithumbnail ?? this.minithumbnail,
      );

  /// TDLib object type
  static const String defaultObjectId = 'paidMediaPreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PaidMediaPhoto** *(paidMediaPhoto)* - child of PaidMedia
///
/// The media is a photo.
///
/// * [photo]: The photo.
final class PaidMediaPhoto extends PaidMedia {
  /// **PaidMediaPhoto** *(paidMediaPhoto)* - child of PaidMedia
  ///
  /// The media is a photo.
  ///
  /// * [photo]: The photo.
  const PaidMediaPhoto({
    required this.photo,
  });

  /// The photo
  final Photo photo;

  /// Parse from a json
  factory PaidMediaPhoto.fromJson(Map<String, dynamic> json) => PaidMediaPhoto(
        photo: Photo.fromJson(json['photo']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "photo": photo.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: The photo
  @override
  PaidMediaPhoto copyWith({
    Photo? photo,
  }) =>
      PaidMediaPhoto(
        photo: photo ?? this.photo,
      );

  /// TDLib object type
  static const String defaultObjectId = 'paidMediaPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PaidMediaVideo** *(paidMediaVideo)* - child of PaidMedia
///
/// The media is a video.
///
/// * [video]: The video.
final class PaidMediaVideo extends PaidMedia {
  /// **PaidMediaVideo** *(paidMediaVideo)* - child of PaidMedia
  ///
  /// The media is a video.
  ///
  /// * [video]: The video.
  const PaidMediaVideo({
    required this.video,
  });

  /// The video
  final Video video;

  /// Parse from a json
  factory PaidMediaVideo.fromJson(Map<String, dynamic> json) => PaidMediaVideo(
        video: Video.fromJson(json['video']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "video": video.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video]: The video
  @override
  PaidMediaVideo copyWith({
    Video? video,
  }) =>
      PaidMediaVideo(
        video: video ?? this.video,
      );

  /// TDLib object type
  static const String defaultObjectId = 'paidMediaVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PaidMediaUnsupported** *(paidMediaUnsupported)* - child of PaidMedia
///
/// The media is unsupported.
final class PaidMediaUnsupported extends PaidMedia {
  /// **PaidMediaUnsupported** *(paidMediaUnsupported)* - child of PaidMedia
  ///
  /// The media is unsupported.
  const PaidMediaUnsupported();

  /// Parse from a json
  factory PaidMediaUnsupported.fromJson(Map<String, dynamic> json) =>
      const PaidMediaUnsupported();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PaidMediaUnsupported copyWith() => const PaidMediaUnsupported();

  /// TDLib object type
  static const String defaultObjectId = 'paidMediaUnsupported';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
