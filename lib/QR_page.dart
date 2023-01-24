import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeGenerator extends StatefulWidget {
  const QRCodeGenerator({super.key});

  @override
  _QRCodeGeneratorState createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
  String _inputURL = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text("Qr Code"),

      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {
                _inputURL = value;
              });
            },
            decoration: const InputDecoration(labelText: 'Enter URL'),
          ),
          const SizedBox(height: 20),
          _inputURL.isEmpty
              ? const Text('Enter a URL to generate QR code')
              : Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: QrImage(
              data: _inputURL,
              version: QrVersions.auto,
              size: 200,
            ),
          ),
        ],
      ) ,
    );


  }
}
