import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

class LoginScreen4 extends StatefulWidget {
  const LoginScreen4({super.key});

  @override
  State<LoginScreen4> createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.question_circle_fill,
                color: Colors.white),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 17, 117, 20),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 17, 117, 20),
            height: 200, // Adjust the height as necessary
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Verifikasi login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'klik link di SMS yang baru aja kami ke\n+62083894477292 buat masuk ke akun mu',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 30,
                              ),
                              Text(
                                'Mengirim link login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 54),
                              Text('00:57'),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 30,
                              ),
                              SizedBox(width: 16),
                              Text(
                                'link masuk terverifikasi',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 30,
                              ),
                              SizedBox(width: 16),
                              Text(
                                'Lagi mau masuk...',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
