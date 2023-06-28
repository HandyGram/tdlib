part of '../tdapi.dart';

/// **MessageViewer** *(messageViewer)* - basic class
///
/// Represents a viewer of a message.
///
/// * [userId]: User identifier of the viewer.
/// * [viewDate]: Approximate point in time (Unix timestamp) when the message was viewed.
final class MessageViewer extends TdObject {
  
  /// **MessageViewer** *(messageViewer)* - basic class
  ///
  /// Represents a viewer of a message.
  ///
  /// * [userId]: User identifier of the viewer.
  /// * [viewDate]: Approximate point in time (Unix timestamp) when the message was viewed.
  const MessageViewer({
    required this.userId,
    required this.viewDate,
  });
  
  /// User identifier of the viewer 
  final int userId;

  /// Approximate point in time (Unix timestamp) when the message was viewed
  final int viewDate;
  
  /// Parse from a json
  factory MessageViewer.fromJson(Map<String, dynamic> json) => MessageViewer(
    userId: json['user_id'],
    viewDate: json['view_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "view_date": viewDate,
		};
	}

  
  MessageViewer copyWith({
    int? userId,
    int? viewDate,
  }) => MessageViewer(
    userId: userId ?? this.userId,
    viewDate: viewDate ?? this.viewDate,
  );

  static const String objectType = 'messageViewer';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
