import 'package:flutter/material.dart';
import 'package:myapp/login3.dart';

class CookiePopup extends StatelessWidget {
  const CookiePopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 6, left: 35, right: 35, bottom: 0),
            child: Image.asset('images/stop.png', width: 300, height: 120),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0, right: 16.0, left: 16.0, bottom: 6),
            child: Text(
              'Boleh kami punya akses untuk no. Hp-mu?',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0, left: 16.0, right: 16.0, bottom: 16.0),
            child: Text(
              'Biar kalau suatu saat kamu ganti no. Hp, akun Gojekmu gak hilang. Tenang, ini gak memberikan kami akses ke data pribadimu.',
              style: TextStyle(fontSize: 16, color: Color(0xFF8E8E8E)),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16, left: 16, right: 16, top: 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Nanti aja',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16, left: 16, right: 16, top: 0),
                    child: TextButton(
                      onPressed: () {
                        // Navigate to LoginScreen
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen3()),
                        );
                      },
                      child: const Text(
                        'Beri akses',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor:
                            Colors.green, // Set the text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}