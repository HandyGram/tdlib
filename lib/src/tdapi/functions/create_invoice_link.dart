part of '../tdapi.dart';

/// **CreateInvoiceLink** *(createInvoiceLink)* - TDLib function
///
/// Creates a link for the given invoice; for bots only.
///
/// * [invoice]: Information about the invoice of the type inputMessageInvoice.
///
/// [HttpUrl] is returned on completion.
final class CreateInvoiceLink extends TdFunction {
  
  /// **CreateInvoiceLink** *(createInvoiceLink)* - TDLib function
  ///
  /// Creates a link for the given invoice; for bots only.
  ///
  /// * [invoice]: Information about the invoice of the type inputMessageInvoice.
  ///
  /// [HttpUrl] is returned on completion.
  const CreateInvoiceLink({
    required this.invoice,
  });
  
  /// Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "invoice": invoice.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [invoice]: Information about the invoice of the type inputMessageInvoice
  CreateInvoiceLink copyWith({
    InputMessageContent? invoice,
  }) => CreateInvoiceLink(
    invoice: invoice ?? this.invoice,
  );

  /// TDLib object type
  static const String objectType = 'createInvoiceLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
