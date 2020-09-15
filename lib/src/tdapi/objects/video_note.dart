part of '../tdapi.dart';

class VideoNote extends TdObject {
  int duration;
  int length;
  Minithumbnail minithumbnail;
  Thumbnail thumbnail;
  File video;

  /// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format. 
  /// [duration] Duration of the video, in seconds; as defined by the sender. 
  /// [length] Video width and height; as defined by the sender. 
  /// [minithumbnail] Video minithumbnail; may be null. 
  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may be null. 
  /// [video] File containing the video
  VideoNote({this.duration,
    this.length,
    this.minithumbnail,
    this.thumbnail,
    this.video});

  /// Parse from a json
  VideoNote.fromJson(Map<String, dynamic> json)  {
    this.duration = json['duration'];
    this.length = json['length'];
    this.minithumbnail = Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.video = File.fromJson(json['video'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "length": this.length,
      "minithumbnail": this.minithumbnail == null ? null : this.minithumbnail.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "video": this.video == null ? null : this.video.toJson(),
    };
  }

  static const CONSTRUCTOR = 'videoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}