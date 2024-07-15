import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/popup_contry.dart';
import 'package:myapp/popup_cookie.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  String phoneNumber = '87786642031';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo_gojek.png'),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: const Icon(Icons.arrow_back),
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/phone.png'), // Add this line
              const SizedBox(height: 16),
              const Text(
                'Aktifkan Akunmu Kembali',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Enter your registered phone number to log in',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 17),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10), // Padding untuk menurunkan button sedikit
                    child: Container(
                      margin: EdgeInsets.only(
                          right:
                              8), // Margin untuk memberi jarak antara button dan input field
                      child: TextButton(
                        onPressed: () {
                          // Show Kode Negara Page as a popup
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => KodeNegaraDialog(),
                            isScrollControlled:
                                true, // This allows the bottom sheet to be full screen
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(
                              0xFFEDEDED), // Ubah warna latar belakang di sini
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/indonesia_flag.png',
                                  height: 24),
                              SizedBox(width: 8),
                              Text(
                                '+62',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: phoneNumber,
                      decoration: InputDecoration(
                        labelText: 'Phone number *',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                        hintText: '87786642031',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(CupertinoIcons.xmark_circle_fill),
                          onPressed: () {
                            setState(() {
                              phoneNumber = '+62';
                            });
                          },
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          phoneNumber = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Handle issue with number button press
                  print('Issue with number button pressed');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Issue with number?',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            CookiePopup(), // This allows the bottom sheet to be full screen
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Numpad(),
            ],
          ),
        ),
      ),
    );
  }
}

class Numpad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NumpadButton(number: '1'),
              NumpadButton(number: '2', letters: 'ABC'),
              NumpadButton(number: '3', letters: 'DEF'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NumpadButton(number: '4', letters: 'GHI'),
              NumpadButton(number: '5', letters: 'JKL'),
              NumpadButton(number: '6', letters: 'MNO'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NumpadButton(number: '7', letters: 'PQRS'),
              NumpadButton(number: '8', letters: 'TUV'),
              NumpadButton(number: '9', letters: 'WXYZ'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NumpadButton(number: ''),
              NumpadButton(
                number: '0',
              ),
              IconButton(
                icon: const Icon(Icons.backspace),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumpadButton extends StatelessWidget {
  final String number;
  final String? letters;

  NumpadButton({required this.number, this.letters});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    if (number.isEmpty) {
      backgroundColor = Colors.grey[200]!;
    }

    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (letters != null)
            Text(
              letters!,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }
}
