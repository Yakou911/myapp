import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login2.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '87786642031';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo_gojek.png'),
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
              const Text(
                'Login',
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
                          // Handle prefix button press
                          print('Prefix button pressed');
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
                              Image.asset('images/bendera.png',
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
              const SizedBox(height: 100),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen2()),
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
            ],
          ),
        ),
      ),
    );
  }
}


