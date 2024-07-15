import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150.0), // Add padding at the bottom
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
              height: 165.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/welcome4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Pembayaran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
