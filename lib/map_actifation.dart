import 'package:flutter/material.dart';
import 'package:myapp/navbar.dart';

class MapActivation extends StatefulWidget {
  const MapActivation({super.key});

  @override
  State<MapActivation> createState() => _MapActivationState();
}

class _MapActivationState extends State<MapActivation> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Navbar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 168),
              Image.asset(
                'images/map.png',
                height: 200,
              ),
              SizedBox(height: 15),
              Text(
                'Terakhir, aktifkan lokasimu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              CircularProgressIndicator(
                color: Colors.green,
              ),
              SizedBox(height: 128),
              Text(
                'Sip, meluncur ke beranda Gojek',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
