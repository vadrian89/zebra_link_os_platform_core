/// Base exception for all exceptions thrown by the ZebraLinkOS package.
///
/// This exception is thrown when an error occurs in the ZebraLinkOS package.
///
/// You can use a switch expression to identify the concrete exception which was thrown.
/// Which can be one of the following:
/// - [ZebraUnknownException]
/// - [ZebraWriteException]
/// - [ZebraPrintImageException]
class ZebraLinkOsException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const ZebraLinkOsException({required this.message, this.stackTrace});

  /// Initializes a new [ZebraUnknownException] instance.
  ///
  /// If [message] is `null` then the default message is `An unknown error occurred!`
  const factory ZebraLinkOsException.unknown({String? message, StackTrace? stackTrace}) =
      ZebraUnknownException;

  /// Initializes a new [ZebraWriteException] instance.
  const factory ZebraLinkOsException.write({required String message, StackTrace? stackTrace}) =
      ZebraWriteException;

  /// Initializes a new [ZebraPrintImageException] instance.
  const factory ZebraLinkOsException.printImage({required String message, StackTrace? stackTrace}) =
      ZebraPrintImageException;

  /// Initializes a new [ZebraConnectionException] instance.
  const factory ZebraLinkOsException.connection({required String message, StackTrace? stackTrace}) =
      ZebraConnectionException;

  @override
  String toString() => "ZebraLinkOsException: $message\n$stackTrace";
}

/// Exception thrown when an error occurs while managing the connection to the printer.
class ZebraConnectionException extends ZebraLinkOsException {
  const ZebraConnectionException({required super.message, super.stackTrace});
}

/// Exception thrown when an uknnown error occurs in the ZebraLinkOS package.
class ZebraUnknownException extends ZebraLinkOsException {
  const ZebraUnknownException({String? message, super.stackTrace})
      : super(message: message ?? "An unknown error occurred!");
}

/// Exception thrown when an error occurs while trying to write to the printer.
///
/// A write operation means whenever ZPL/CPCL code is sent to the printer and an error occurs.
class ZebraWriteException extends ZebraLinkOsException {
  const ZebraWriteException({required super.message, super.stackTrace});
}

/// Exception thrown when an error occurs while trying to print an image.
class ZebraPrintImageException extends ZebraLinkOsException {
  const ZebraPrintImageException({required super.message, super.stackTrace});
}
