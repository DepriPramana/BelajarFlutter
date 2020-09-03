import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QRScanPage extends StatefulWidget {
  @override
  _QRScanPageState createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  String qrscan = "Hasil QRScan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar QRScan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(qrscan),
            RaisedButton(
              onPressed: () async {
                qrscan = await scanner.scan();
                setState(() {});
              },
              child: Text("Scan QR"),
            )
          ],
        ),
      ),
    );
  }
}
