import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:myapp/contri.dart';
import 'package:myapp/login.dart';
import 'package:myapp/popup_contry.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                MaterialPageRoute(builder: (context) => const Login()),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 66,
                height: 65,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/aktif.png'),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Aktifkan Akunmu Kembali',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Enter your registered phone number to log in',
                style: TextStyle(fontSize: 16, color: Colors.grey),
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
              const SizedBox(height: 10),
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
                    // Handle continue action
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
