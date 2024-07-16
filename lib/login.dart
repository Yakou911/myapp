import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:myapp/contri.dart';
import 'package:myapp/loginpage.dart';
import 'package:myapp/popup_contry.dart';
import 'package:myapp/loginljt.dart';
import 'package:myapp/popup_cookie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40, // Reduce the leading width
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const loginpage()),
              );
            },
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Svg('images/panah.svg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        titleSpacing: 0, // Remove default title spacing
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            width: 85,
            height: 20,
            child: Image.asset(
              'images/gojeklogo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Icon(CupertinoIcons.question_circle_fill),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter your registered phone number to log in',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  'Phone number',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10), // Padding untuk menurunkan button sedikit
                  child: Container(
                    margin: EdgeInsets.only(right:8), // Margin untuk memberi jarak antara button dan input field
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => KodeNegaraDialog(),
                          isScrollControlled: true,
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 244, 240, 240),
                        padding: EdgeInsets.symmetric(horizontal: 6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(right: 4),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/bendera.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text(
                            '+62',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          hintText: '87786642031',
                          isDense: true,
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _phoneNumberController.clear();
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: Svg('images/close.svg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                ); // Handle issue with number
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Issue with number?',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    width: 125, // Adjust the width to match the text width
                    height: 2,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 17, 117, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                ),
                onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) =>
                    CookiePopup(), // This allows the bottom sheet to be full screen
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
