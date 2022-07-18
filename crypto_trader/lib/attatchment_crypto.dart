import 'package:flutter/material.dart';

class AttatchmentCrypto extends StatefulWidget {
  const AttatchmentCrypto({Key? key}) : super(key: key);

  @override
  State<AttatchmentCrypto> createState() => _AttatchmentCryptoState();
}

class _AttatchmentCryptoState extends State<AttatchmentCrypto> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Coming Soon.....",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
