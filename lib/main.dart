import 'package:flutter/material.dart';
import 'package:qrcode/QR_page.dart';

void main() {
  runApp( const APP());
}

class APP extends StatelessWidget {
  const APP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.amber,

      ),
      debugShowCheckedModeBanner: false,
      home: const QRCodeGenerator(),
    );
  }
}

