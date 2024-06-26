part of '../tdapi.dart';

/// **MessageExtendedMedia** *(messageExtendedMedia)* - parent
///
/// Describes a media, which is attached to an invoice.
sealed class MessageExtendedMedia extends TdObject {
  /// **MessageExtendedMedia** *(messageExtendedMedia)* - parent
  ///
  /// Describes a media, which is attached to an invoice.
  const MessageExtendedMedia();

  /// a MessageExtendedMedia return type can be :
  /// * [MessageExtendedMediaPreview]
  /// * [MessageExtendedMediaPhoto]
  /// * [MessageExtendedMediaVideo]
  /// * [MessageExtendedMediaUnsupported]
  factory MessageExtendedMedia.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageExtendedMediaPreview.defaultObjectId:
        return MessageExtendedMediaPreview.fromJson(json);
      case MessageExtendedMediaPhoto.defaultObjectId:
        return MessageExtendedMediaPhoto.fromJson(json);
      case MessageExtendedMediaVideo.defaultObjectId:
        return MessageExtendedMediaVideo.fromJson(json);
      case MessageExtendedMediaUnsupported.defaultObjectId:
        return MessageExtendedMediaUnsupported.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageExtendedMedia)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  MessageExtendedMedia copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'messageExtendedMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageExtendedMediaPreview** *(messageExtendedMediaPreview)* - child of MessageExtendedMedia
///
/// The media is hidden until the invoice is paid.
///
/// * [width]: Media width; 0 if unknown.
/// * [height]: Media height; 0 if unknown.
/// * [duration]: Media duration, in seconds; 0 if unknown.
/// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
/// * [caption]: Media caption.
final class MessageExtendedMediaPreview extends MessageExtendedMedia {
  /// **MessageExtendedMediaPreview** *(messageExtendedMediaPreview)* - child of MessageExtendedMedia
  ///
  /// The media is hidden until the invoice is paid.
  ///
  /// * [width]: Media width; 0 if unknown.
  /// * [height]: Media height; 0 if unknown.
  /// * [duration]: Media duration, in seconds; 0 if unknown.
  /// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
  /// * [caption]: Media caption.
  const MessageExtendedMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
    required this.caption,
  });

  /// Media width; 0 if unknown
  final int width;

  /// Media height; 0 if unknown
  final int height;

  /// Media duration, in seconds; 0 if unknown
  final int duration;

  /// Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// Media caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaPreview.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaPreview(
        width: json['width'],
        height: json['height'],
        duration: json['duration'],
        minithumbnail: json['minithumbnail'] == null
            ? null
            : Minithumbnail.fromJson(json['minithumbnail']),
        caption: FormattedText.fromJson(json['caption']),
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
      "caption": caption.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [width]: Media width; 0 if unknown
  /// * [height]: Media height; 0 if unknown
  /// * [duration]: Media duration, in seconds; 0 if unknown
  /// * [minithumbnail]: Media minithumbnail; may be null
  /// * [caption]: Media caption
  @override
  MessageExtendedMediaPreview copyWith({
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaPreview(
        width: width ?? this.width,
        height: height ?? this.height,
        duration: duration ?? this.duration,
        minithumbnail: minithumbnail ?? this.minithumbnail,
        caption: caption ?? this.caption,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageExtendedMediaPreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageExtendedMediaPhoto** *(messageExtendedMediaPhoto)* - child of MessageExtendedMedia
///
/// The media is a photo.
///
/// * [photo]: The photo.
/// * [caption]: Photo caption.
final class MessageExtendedMediaPhoto extends MessageExtendedMedia {
  /// **MessageExtendedMediaPhoto** *(messageExtendedMediaPhoto)* - child of MessageExtendedMedia
  ///
  /// The media is a photo.
  ///
  /// * [photo]: The photo.
  /// * [caption]: Photo caption.
  const MessageExtendedMediaPhoto({
    required this.photo,
    required this.caption,
  });

  /// The photo
  final Photo photo;

  /// Photo caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaPhoto.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaPhoto(
        photo: Photo.fromJson(json['photo']),
        caption: FormattedText.fromJson(json['caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: The photo
  /// * [caption]: Photo caption
  @override
  MessageExtendedMediaPhoto copyWith({
    Photo? photo,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaPhoto(
        photo: photo ?? this.photo,
        caption: caption ?? this.caption,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageExtendedMediaPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageExtendedMediaVideo** *(messageExtendedMediaVideo)* - child of MessageExtendedMedia
///
/// The media is a video.
///
/// * [video]: The video.
/// * [caption]: Photo caption.
final class MessageExtendedMediaVideo extends MessageExtendedMedia {
  /// **MessageExtendedMediaVideo** *(messageExtendedMediaVideo)* - child of MessageExtendedMedia
  ///
  /// The media is a video.
  ///
  /// * [video]: The video.
  /// * [caption]: Photo caption.
  const MessageExtendedMediaVideo({
    required this.video,
    required this.caption,
  });

  /// The video
  final Video video;

  /// Photo caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaVideo.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaVideo(
        video: Video.fromJson(json['video']),
        caption: FormattedText.fromJson(json['caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "video": video.toJson(),
      "caption": caption.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video]: The video
  /// * [caption]: Photo caption
  @override
  MessageExtendedMediaVideo copyWith({
    Video? video,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaVideo(
        video: video ?? this.video,
        caption: caption ?? this.caption,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageExtendedMediaVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **MessageExtendedMediaUnsupported** *(messageExtendedMediaUnsupported)* - child of MessageExtendedMedia
///
/// The media is unsupported.
///
/// * [caption]: Media caption.
final class MessageExtendedMediaUnsupported extends MessageExtendedMedia {
  /// **MessageExtendedMediaUnsupported** *(messageExtendedMediaUnsupported)* - child of MessageExtendedMedia
  ///
  /// The media is unsupported.
  ///
  /// * [caption]: Media caption.
  const MessageExtendedMediaUnsupported({
    required this.caption,
  });

  /// Media caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaUnsupported.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaUnsupported(
        caption: FormattedText.fromJson(json['caption']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "caption": caption.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [caption]: Media caption
  @override
  MessageExtendedMediaUnsupported copyWith({
    FormattedText? caption,
  }) =>
      MessageExtendedMediaUnsupported(
        caption: caption ?? this.caption,
      );

  /// TDLib object type
  static const String defaultObjectId = 'messageExtendedMediaUnsupported';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
