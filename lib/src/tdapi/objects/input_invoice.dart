part of '../tdapi.dart';

/// **InputInvoice** *(inputInvoice)* - parent
///
/// Describes an invoice to process.
sealed class InputInvoice extends TdObject {
  
  /// **InputInvoice** *(inputInvoice)* - parent
  ///
  /// Describes an invoice to process.
  const InputInvoice();
  
  /// a InputInvoice return type can be :
  /// * [InputInvoiceMessage]
  /// * [InputInvoiceName]
  factory InputInvoice.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputInvoiceMessage.objectType:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.objectType:
        return InputInvoiceName.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputInvoice)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  InputInvoice copyWith();

  /// TDLib object type
  static const String objectType = 'inputInvoice';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputInvoiceMessage** *(inputInvoiceMessage)* - child of InputInvoice
///
/// An invoice from a message of the type messageInvoice.
///
/// * [chatId]: Chat identifier of the message.
/// * [messageId]: Message identifier.
final class InputInvoiceMessage extends InputInvoice {
  
  /// **InputInvoiceMessage** *(inputInvoiceMessage)* - child of InputInvoice
  ///
  /// An invoice from a message of the type messageInvoice.
  ///
  /// * [chatId]: Chat identifier of the message.
  /// * [messageId]: Message identifier.
  const InputInvoiceMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier of the message 
  final int chatId;

  /// Message identifier
  final int messageId;
  
  /// Parse from a json
  factory InputInvoiceMessage.fromJson(Map<String, dynamic> json) => InputInvoiceMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier of the message 
  /// * [message_id]: Message identifier
  @override
  InputInvoiceMessage copyWith({
    int? chatId,
    int? messageId,
  }) => InputInvoiceMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  /// TDLib object type
  static const String objectType = 'inputInvoiceMessage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **InputInvoiceName** *(inputInvoiceName)* - child of InputInvoice
///
/// An invoice from a link of the type internalLinkTypeInvoice.
///
/// * [name]: Name of the invoice.
final class InputInvoiceName extends InputInvoice {
  
  /// **InputInvoiceName** *(inputInvoiceName)* - child of InputInvoice
  ///
  /// An invoice from a link of the type internalLinkTypeInvoice.
  ///
  /// * [name]: Name of the invoice.
  const InputInvoiceName({
    required this.name,
  });
  
  /// Name of the invoice
  final String name;
  
  /// Parse from a json
  factory InputInvoiceName.fromJson(Map<String, dynamic> json) => InputInvoiceName(
    name: json['name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Name of the invoice
  @override
  InputInvoiceName copyWith({
    String? name,
  }) => InputInvoiceName(
    name: name ?? this.name,
  );

  /// TDLib object type
  static const String objectType = 'inputInvoiceName';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
