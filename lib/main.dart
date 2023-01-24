import 'package:flutter/material.dart';
import 'package:qrcode/QR_page.dart';

void main() {
  runApp( const APP());
}

class APP extends StatelessWidget {
  const APP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QRCodeGenerator(),
    );
  }
}

