import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScannerPage extends StatefulWidget {
  @override
  _QRCodeScannerPageState createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      controller!.pauseCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
      ),
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      String? qrCode = scanData.code;
      print('Scanned QR Code: $qrCode'); // Debug print statement

      // Check if the scanned data is a valid URL
      if (qrCode != null && Uri.tryParse(qrCode)?.hasScheme == true) {
        print('Valid URL found: $qrCode'); // Debug print statement
        _launchURL(qrCode); // Open the URL
      } else {
        print('Invalid URL or QR Code: $qrCode'); // Debug print statement
        Navigator.pop(context, qrCode); // Return the scanned data
      }
    });
  }

  // Method to launch the URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Create a Uri object
    try {
      if (await canLaunchUrl(uri)) {
        // Check if the URL can be launched
        await launchUrl(uri); // Launch the URL
      } else {
        print('Could not launch $url'); // Log if the URL cannot be launched
      }
    } catch (e) {
      print('Error launching URL: $e'); // Log any exceptions
    }
  }
}
