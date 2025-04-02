import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class ShareService {
  Future<void> shareEvent({
    required String text,
    required String image,
    required bool isNetwork,
  }) async {
    try {
      File? file;
      final tempDir = await getTemporaryDirectory();
      final tempFilePath = '${tempDir.path}/shared_image.png';

      if (isNetwork) {
        // Download the image from the network
        final response = await http.get(Uri.parse(image));
        file = File(tempFilePath);
        await file.writeAsBytes(response.bodyBytes);
      } else {
        // Load image from assets
        final ByteData bytes = await rootBundle.load(image);
        final Uint8List list = bytes.buffer.asUint8List();
        file = File(tempFilePath);
        await file.writeAsBytes(list);
      }

      await Share.shareXFiles([XFile(file.path)], text: text);
    } catch (e) {
      debugPrint('Error sharing content: $e');
    }
  }
}
