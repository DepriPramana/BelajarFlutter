import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar QR Code"),
      ),
      body: Center(
        child: QrImage(
          version: 6,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(30),
          size: 300,
          data: "https://www.youtube.com/channel/UCGUDLJZlkcR9uZrg5cTcbpw",
        ),
      ),
    );
  }
}
