abstract interface class ZebraPrinterInterface {
  /// Method used to write [data] to a printer.
  ///
  /// [data] is the code sent to the printer. It can be either ZPL or CPCL.
  ///
  /// If an error occurs while writing to the printer, a [ZebraWriteException]
  /// will be thrown.
  Future<bool> write({required String data});

  /// Method used to print an image from a file on the device.
  ///
  /// [filePath] is the location of the image file.
  /// [width] is the width of the image. If `0` then the image will be printed at its
  /// original width.
  /// [height] is the height of the image. If `0` then the image will be printed at its
  /// original height.
  /// [x] is the x-coordinate where the image will be printed.
  /// [y] is the y-coordinate where the image will be printed.
  /// [insideFormat] is a flag which indicates if the image should be printed inside the
  /// current format.
  ///
  /// If an error occurs while printing the image, a [ZebraPrintImageException]
  /// will be thrown.
  Future<bool> printImageFile({
    required String filePath,
    int width = 0,
    int height = 0,
    int x = 0,
    int y = 0,
    bool insideFormat = false,
  });
}
