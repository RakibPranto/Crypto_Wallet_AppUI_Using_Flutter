import 'package:flutter/material.dart';

class FavouriteCrypto extends StatefulWidget {
  const FavouriteCrypto({Key? key}) : super(key: key);

  @override
  State<FavouriteCrypto> createState() => _FavouriteCryptoState();
}

class _FavouriteCryptoState extends State<FavouriteCrypto> {
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
